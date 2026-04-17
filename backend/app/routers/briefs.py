from uuid import UUID

from fastapi import APIRouter, Depends, HTTPException, UploadFile, File, Form
from sqlalchemy.orm import Session

from app.database import get_db
from app.models import Brief, AgentSession, Recommendation
from app.schemas import BriefCreate, BriefOut, RecommendationListOut, RecommendationOut, AgentSessionOut

router = APIRouter(prefix="/briefs", tags=["briefs"])


@router.post("/", response_model=BriefOut)
def create_brief(brief_data: BriefCreate, db: Session = Depends(get_db)):
    """Create a new brief from pasted text."""
    brief = Brief(
        designer_id=brief_data.designer_id,
        title=brief_data.title,
        raw_text=brief_data.raw_text,
        status="pending",
    )
    db.add(brief)
    db.commit()
    db.refresh(brief)
    return brief


@router.post("/upload", response_model=BriefOut)
async def upload_brief(
    designer_id: str = Form(...),
    title: str = Form(None),
    file: UploadFile = File(...),
    db: Session = Depends(get_db),
):
    """Upload a brief as a file (PDF, DOCX, or TXT)."""
    content = await file.read()

    # For the POC, we extract raw text from the file
    # In production, this would use Vertex AI Document AI
    if file.filename.endswith(".txt"):
        raw_text = content.decode("utf-8")
    elif file.filename.endswith(".pdf"):
        # Placeholder: in production, use Document AI
        raw_text = f"[PDF content from {file.filename} — Document AI extraction pending]"
    elif file.filename.endswith(".docx"):
        # Placeholder: in production, use Document AI
        raw_text = f"[DOCX content from {file.filename} — Document AI extraction pending]"
    else:
        raise HTTPException(status_code=400, detail="Unsupported file type. Use PDF, DOCX, or TXT.")

    brief = Brief(
        designer_id=designer_id,
        title=title or file.filename,
        raw_text=raw_text,
        source_file_url=f"/uploads/{file.filename}",
        status="pending",
    )
    db.add(brief)
    db.commit()
    db.refresh(brief)
    return brief


@router.get("/{brief_id}", response_model=BriefOut)
def get_brief(brief_id: UUID, db: Session = Depends(get_db)):
    """Get a brief by ID."""
    brief = db.query(Brief).filter(Brief.id == brief_id).first()
    if not brief:
        raise HTTPException(status_code=404, detail="Brief not found")
    return brief


@router.post("/{brief_id}/process", response_model=RecommendationListOut)
def process_brief(brief_id: UUID, db: Session = Depends(get_db)):
    """
    Trigger the AI agent to process a brief.
    This is the main endpoint that kicks off the agent workflow:
    1. Parse the brief and extract requirements
    2. Plan a search strategy
    3. Query the project database
    4. Synthesize and explain recommendations
    """
    brief = db.query(Brief).filter(Brief.id == brief_id).first()
    if not brief:
        raise HTTPException(status_code=404, detail="Brief not found")

    if brief.status == "complete":
        # Return existing recommendations
        recs = (
            db.query(Recommendation)
            .filter(Recommendation.brief_id == brief_id)
            .order_by(Recommendation.rank)
            .all()
        )
        return RecommendationListOut(
            brief_id=brief_id,
            recommendations=[RecommendationOut.model_validate(r) for r in recs],
        )

    # Import and run the agent
    from app.agent.workflow import run_agent

    result = run_agent(brief=brief, db=db)

    return result


@router.get("/{brief_id}/recommendations", response_model=RecommendationListOut)
def get_recommendations(brief_id: UUID, db: Session = Depends(get_db)):
    """Get all recommendations for a brief."""
    brief = db.query(Brief).filter(Brief.id == brief_id).first()
    if not brief:
        raise HTTPException(status_code=404, detail="Brief not found")

    recs = (
        db.query(Recommendation)
        .filter(Recommendation.brief_id == brief_id)
        .order_by(Recommendation.rank)
        .all()
    )

    session = db.query(AgentSession).filter(AgentSession.brief_id == brief_id).first()

    return RecommendationListOut(
        brief_id=brief_id,
        recommendations=[RecommendationOut.model_validate(r) for r in recs],
        agent_reasoning=session.reasoning_trace if session else None,
    )


@router.get("/{brief_id}/session", response_model=AgentSessionOut)
def get_agent_session(brief_id: UUID, db: Session = Depends(get_db)):
    """Get the agent's reasoning session for a brief."""
    session = db.query(AgentSession).filter(AgentSession.brief_id == brief_id).first()
    if not session:
        raise HTTPException(status_code=404, detail="No agent session found for this brief")
    return session
