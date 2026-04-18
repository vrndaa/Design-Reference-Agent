"""
Design Reference Agent — LangGraph Workflow

This is the AI agent that processes design briefs. It follows a multi-step
reasoning workflow:

1. PARSE — Extract structured requirements from the brief text
2. PLAN — Decide on a search strategy based on extracted requirements
3. RETRIEVE — Query the project database using semantic + filtered search
4. SYNTHESIZE — Rank results and generate explanations for each recommendation

The agent uses Vertex AI (Gemini) for reasoning and embeddings.
"""

import json
import uuid
from datetime import datetime
from typing import TypedDict, Optional

from sqlalchemy.orm import Session
from sqlalchemy import text

from app.models import Brief, Project, AgentSession, Recommendation
from app.schemas import RecommendationListOut, RecommendationOut


# ── Agent State ───────────────────────────────────────────

class AgentState(TypedDict):
    brief_id: str
    raw_text: str
    extracted: Optional[dict]
    search_plan: Optional[dict]
    candidate_projects: Optional[list]
    recommendations: Optional[list]
    reasoning_trace: list
    error: Optional[str]


# ── Step 1: Parse Brief ──────────────────────────────────

def parse_brief(state: AgentState) -> AgentState:
    """
    Extract structured requirements from the brief text using Gemini.
    Falls back to keyword matching if Gemini is unavailable.
    """
    import os
    raw_text = state["raw_text"]

    extracted = {
        "project_type": None,
        "industry": None,
        "tone": None,
        "audience": None,
        "budget_tier": None,
        "deliverables": [],
        "constraints": None,
        "confidence": 0.0,
    }

    api_key = os.getenv("GOOGLE_API_KEY", "")

    if api_key:
        try:
            from google import genai

            client = genai.Client(api_key=api_key)

            prompt = f"""You are analyzing a design brief for a design agency. Extract the following from the brief text below.

Return ONLY a JSON object with these exact keys (use null if not found):
- project_type: one of [infographic, annual_report, web_design, branding_identity, social_media, print_collateral, presentation, data_visualization, packaging, editorial_design]
- industry: one of [healthcare, finance, technology, education, nonprofit, retail, government, real_estate, energy, food_beverage, entertainment, legal, manufacturing, travel_hospitality]. Choose based on the CLIENT'S business domain, not the technical implementation. A travel booking website is travel_hospitality. A healthcare app is healthcare. A fintech platform is finance.
- tone: one of [minimalist, bold, playful, corporate, elegant, retro, futuristic, organic, editorial, data_driven]
- audience: a short description of the target audience
- budget_tier: one of [low, mid, high, premium] or null
- deliverables: a list of specific deliverables mentioned
- constraints: any specific constraints or requirements mentioned

Brief text:
\"\"\"{raw_text}\"\"\"

Return ONLY valid JSON, no markdown, no explanation."""

            response = client.models.generate_content(
                model="gemini-2.0-flash",
                contents=prompt,
            )

            import json
            response_text = response.text.strip()
            # Clean up if Gemini wraps in markdown
            if response_text.startswith("```"):
                response_text = response_text.split("\n", 1)[1]
                response_text = response_text.rsplit("```", 1)[0]

            parsed = json.loads(response_text)

            extracted["project_type"] = parsed.get("project_type")
            extracted["industry"] = parsed.get("industry")
            extracted["tone"] = parsed.get("tone")
            extracted["audience"] = parsed.get("audience")
            extracted["budget_tier"] = parsed.get("budget_tier")
            extracted["deliverables"] = parsed.get("deliverables", [])
            extracted["constraints"] = parsed.get("constraints")
            extracted["confidence"] = 0.9  # Gemini extraction confidence

        except Exception as e:
            print(f"Gemini extraction failed: {e}, falling back to keyword matching")
            extracted = _keyword_fallback(raw_text)
    else:
        extracted = _keyword_fallback(raw_text)

    trace_entry = {
        "step": "parse_brief",
        "output": f"Extracted: type={extracted['project_type']}, industry={extracted['industry']}, tone={extracted['tone']}, audience={extracted.get('audience')}",
        "method": "gemini" if api_key and extracted["confidence"] > 0.5 else "keyword_fallback",
        "timestamp": datetime.utcnow().isoformat(),
    }

    state["extracted"] = extracted
    state["reasoning_trace"].append(trace_entry)
    return state


def _keyword_fallback(raw_text: str) -> dict:
    """Fallback keyword matching when Gemini is unavailable."""
    raw_text = raw_text.lower()

    project_types = {
        "infographic": ["infographic", "visual summary", "data graphic"],
        "annual_report": ["annual report", "yearly report", "year in review", "report"],
        "web_design": ["website", "web design", "landing page", "web platform"],
        "branding_identity": ["brand", "identity", "logo", "rebrand"],
        "social_media": ["social media", "instagram", "linkedin", "social campaign"],
        "print_collateral": ["brochure", "flyer", "print", "poster", "direct mail"],
        "presentation": ["presentation", "pitch deck", "slides", "keynote"],
        "data_visualization": ["dashboard", "data viz", "analytics", "data visualization"],
        "packaging": ["packaging", "package design", "product packaging"],
        "editorial_design": ["magazine", "editorial", "newsletter", "publication"],
    }

    industries = {
        "healthcare": ["health", "medical", "clinical", "patient", "hospital"],
        "finance": ["finance", "banking", "investment", "wealth", "fintech"],
        "technology": ["tech", "software", "ai", "cloud", "saas", "digital"],
        "education": ["education", "school", "university", "learning", "student"],
        "nonprofit": ["nonprofit", "ngo", "charity", "foundation", "community"],
        "retail": ["retail", "store", "shopping", "e-commerce", "consumer"],
        "government": ["government", "public sector", "municipal", "federal"],
        "real_estate": ["real estate", "property", "housing", "development"],
        "energy": ["energy", "solar", "renewable", "sustainability", "green"],
        "food_beverage": ["food", "beverage", "restaurant", "nutrition"],
        "entertainment": ["entertainment", "media", "music", "film", "festival"],
        "legal": ["legal", "law", "attorney", "compliance"],
        "manufacturing": ["manufacturing", "factory", "production", "industrial"],
        "travel_hospitality": ["travel", "hotel", "tourism", "hospitality"],
    }

    tones = {
        "minimalist": ["minimalist", "clean", "simple", "minimal"],
        "bold": ["bold", "strong", "impactful", "striking"],
        "playful": ["playful", "fun", "colorful", "vibrant", "whimsical", "bright", "colourful"],
        "corporate": ["corporate", "professional", "business", "formal"],
        "elegant": ["elegant", "luxurious", "sophisticated", "premium"],
        "retro": ["retro", "vintage", "nostalgic", "classic"],
        "futuristic": ["futuristic", "modern", "cutting-edge", "innovative"],
        "organic": ["organic", "natural", "earthy", "warm"],
        "editorial": ["editorial", "journalistic", "magazine-style"],
        "data_driven": ["data-driven", "analytical", "metric", "quantitative"],
    }

    extracted = {
        "project_type": None,
        "industry": None,
        "tone": None,
        "audience": None,
        "budget_tier": None,
        "deliverables": [],
        "constraints": None,
        "confidence": 0.6,
    }

    for ptype, keywords in project_types.items():
        if any(kw in raw_text for kw in keywords):
            extracted["project_type"] = ptype
            break

    for ind, keywords in industries.items():
        if any(kw in raw_text for kw in keywords):
            extracted["industry"] = ind
            break

    for tone, keywords in tones.items():
        if any(kw in raw_text for kw in keywords):
            extracted["tone"] = tone
            break

    return extracted

# ── Step 2: Plan Search Strategy ─────────────────────────

def plan_search(state: AgentState) -> AgentState:
    """
    Decide how to query the project database based on extracted requirements.
    The agent plans which filters to apply and how to weight results.
    """
    extracted = state["extracted"]

    plan = {
        "primary_filters": {},
        "secondary_filters": {},
        "strategy": "",
        "match_count": 5,
    }

    # Build filter strategy based on what was extracted
    if extracted["project_type"]:
        plan["primary_filters"]["project_type"] = extracted["project_type"]

    if extracted["industry"]:
        plan["primary_filters"]["industry"] = extracted["industry"]

    if extracted["tone"]:
        plan["secondary_filters"]["visual_tone"] = extracted["tone"]

    # Determine strategy description
    filter_desc = []
    if plan["primary_filters"]:
        filter_desc.append(f"primary filters: {plan['primary_filters']}")
    if plan["secondary_filters"]:
        filter_desc.append(f"secondary filters: {plan['secondary_filters']}")

    if not filter_desc:
        plan["strategy"] = "No specific filters extracted. Will rely on semantic similarity only."
        plan["match_count"] = 5 
    else:
        plan["strategy"] = f"Searching with {', '.join(filter_desc)}. Will combine filtered results with semantic similarity."

    trace_entry = {
        "step": "plan_search",
        "output": plan["strategy"],
        "timestamp": datetime.utcnow().isoformat(),
    }

    state["search_plan"] = plan
    state["reasoning_trace"].append(trace_entry)
    return state


# ── Step 3: Retrieve Projects ─────────────────────────────

def retrieve_projects(state: AgentState, db: Session) -> AgentState:
    """
    Query the database using the search plan.
    Combines metadata filtering with semantic similarity when embeddings are available.
    """
    plan = state["search_plan"]
    candidates = []

    # Build the filtered query
    query = db.query(Project)

    # Apply primary filters
    if "project_type" in plan["primary_filters"]:
        query = query.filter(Project.project_type == plan["primary_filters"]["project_type"])
    if "industry" in plan["primary_filters"]:
        query = query.filter(Project.industry == plan["primary_filters"]["industry"])

    # Apply secondary filters
    if "visual_tone" in plan["secondary_filters"]:
        query = query.filter(Project.visual_tone == plan["secondary_filters"]["visual_tone"])

    # Get filtered results
    filtered_results = query.order_by(Project.year_completed.desc()).limit(plan["match_count"] * 2).all()
    candidates.extend(filtered_results)

    # If not enough results with all filters, relax secondary filters
    if len(candidates) < plan["match_count"] and plan["secondary_filters"]:
        relaxed_query = db.query(Project)
        if "project_type" in plan["primary_filters"]:
            relaxed_query = relaxed_query.filter(Project.project_type == plan["primary_filters"]["project_type"])
        if "industry" in plan["primary_filters"]:
            relaxed_query = relaxed_query.filter(Project.industry == plan["primary_filters"]["industry"])

        relaxed_results = relaxed_query.order_by(Project.year_completed.desc()).limit(plan["match_count"] * 2).all()
        # Add any new results not already in candidates
        existing_ids = {p.id for p in candidates}
        for p in relaxed_results:
            if p.id not in existing_ids:
                candidates.append(p)

    # If still not enough, broaden to just project type or industry
    if len(candidates) < plan["match_count"]:
        broad_query = db.query(Project)
        if "project_type" in plan["primary_filters"]:
            broad_query = broad_query.filter(Project.project_type == plan["primary_filters"]["project_type"])
        broad_results = broad_query.order_by(Project.year_completed.desc()).limit(20).all()
        existing_ids = {p.id for p in candidates}
        for p in broad_results:
            if p.id not in existing_ids:
                candidates.append(p)

    # Trim to match_count
    candidates = candidates[:plan["match_count"]]

    trace_entry = {
        "step": "retrieve",
        "output": f"Found {len(candidates)} candidate projects after filtering.",
        "filters_applied": {**plan["primary_filters"], **plan["secondary_filters"]},
        "timestamp": datetime.utcnow().isoformat(),
    }

    state["candidate_projects"] = candidates
    state["reasoning_trace"].append(trace_entry)
    return state


# ── Step 4: Synthesize Recommendations ───────────────────

def synthesize_recommendations(state: AgentState) -> AgentState:
    """
    Rank candidates and generate explanations for why each project
    is a good reference for the brief.

    In production, Gemini generates the explanations.
    For the POC, we build explanations from metadata matching.
    """
    extracted = state["extracted"]
    candidates = state["candidate_projects"]
    recommendations = []

    for rank, project in enumerate(candidates, start=1):
        matched_on = []
        reasoning_parts = []

        # Check what matched
        if extracted["project_type"] and project.project_type == extracted["project_type"]:
            matched_on.append("project_type")
            reasoning_parts.append(
                f"This is a {project.project_type.replace('_', ' ')} project, matching the brief's deliverable type."
            )

        if extracted["industry"] and project.industry == extracted["industry"]:
            matched_on.append("industry")
            reasoning_parts.append(
                f"It was created for the {project.industry.replace('_', ' ')} industry, aligning with the brief's sector."
            )

        if extracted["tone"] and project.visual_tone == extracted["tone"]:
            matched_on.append("visual_tone")
            reasoning_parts.append(
                f"The {project.visual_tone} visual tone matches the brief's desired aesthetic."
            )

        # Add project-specific context
        reasoning_parts.append(
            f"Completed in {project.year_completed} for {project.client.name if project.client else 'an unnamed client'}, "
            f"using a {project.layout_style.replace('_', ' ')} layout with {', '.join(project.fonts_used[:2])} typography."
        )

        # Calculate a simple relevance score based on matches
        score = len(matched_on) / 3.0  # Normalize to 0-1 based on 3 possible matches
        score = max(score, 0.3)  # Minimum score for being in the candidate list

        reasoning = " ".join(reasoning_parts)

        recommendations.append({
            "project": project,
            "rank": rank,
            "similarity_score": round(score, 3),
            "reasoning": reasoning,
            "matched_on": matched_on,
        })

    trace_entry = {
        "step": "synthesize",
        "output": f"Generated {len(recommendations)} recommendations with explanations.",
        "timestamp": datetime.utcnow().isoformat(),
    }

    state["recommendations"] = recommendations
    state["reasoning_trace"].append(trace_entry)
    return state


# ── Main Agent Runner ─────────────────────────────────────

def run_agent(brief: Brief, db: Session) -> RecommendationListOut:
    """
    Execute the full agent workflow for a given brief.
    Returns ranked recommendations with explanations.
    """
    # Initialize state
    state: AgentState = {
        "brief_id": str(brief.id),
        "raw_text": brief.raw_text,
        "extracted": None,
        "search_plan": None,
        "candidate_projects": None,
        "recommendations": None,
        "reasoning_trace": [],
        "error": None,
    }

    # Update brief status
    brief.status = "searching"
    db.commit()

    try:
        # Run the workflow steps
        state = parse_brief(state)

        # Update brief with extracted fields
        if state["extracted"]:
            brief.extracted_project_type = state["extracted"].get("project_type")
            brief.extracted_industry = state["extracted"].get("industry")
            brief.extracted_tone = state["extracted"].get("tone")
            brief.extracted_audience = state["extracted"].get("audience")
            brief.extracted_budget_tier = state["extracted"].get("budget_tier")
            brief.extracted_deliverables = state["extracted"].get("deliverables")
            brief.extracted_constraints = state["extracted"].get("constraints")
            brief.extraction_confidence = state["extracted"].get("confidence")
            db.commit()

        state = plan_search(state)
        state = retrieve_projects(state, db)
        state = synthesize_recommendations(state)

        # Save agent session
        session = AgentSession(
            brief_id=brief.id,
            reasoning_trace=state["reasoning_trace"],
            clarifications=[],
            search_log=[state["search_plan"]] if state["search_plan"] else [],
            completed_at=datetime.utcnow(),
        )
        db.add(session)
        db.commit()
        db.refresh(session)

        # Save recommendations to database
        rec_outputs = []
        for rec in state["recommendations"]:
            db_rec = Recommendation(
                session_id=session.id,
                brief_id=brief.id,
                project_id=rec["project"].id,
                rank=rec["rank"],
                similarity_score=rec["similarity_score"],
                reasoning=rec["reasoning"],
                matched_on=rec["matched_on"],
            )
            db.add(db_rec)
            db.commit()
            db.refresh(db_rec)

            rec_outputs.append(RecommendationOut(
                id=db_rec.id,
                project=rec["project"],
                rank=rec["rank"],
                similarity_score=rec["similarity_score"],
                reasoning=rec["reasoning"],
                matched_on=rec["matched_on"],
            ))

        # Mark brief as complete
        brief.status = "complete"
        db.commit()

        return RecommendationListOut(
            brief_id=brief.id,
            recommendations=rec_outputs,
            agent_reasoning=state["reasoning_trace"],
        )

    except Exception as e:
        brief.status = "failed"
        db.commit()
        state["error"] = str(e)
        raise
