from datetime import datetime
from typing import Optional
from uuid import UUID

from pydantic import BaseModel, EmailStr


# ── Project schemas ───────────────────────────────────────

class TagOut(BaseModel):
    id: int
    name: str
    category: str

    model_config = {"from_attributes": True}


class ProjectOut(BaseModel):
    id: UUID
    title: str
    project_type: str
    industry: str
    description: str
    visual_tone: str
    layout_style: str
    color_palette: list[str]
    fonts_used: list[str]
    tools_used: list[str]
    budget_tier: Optional[str] = None
    target_audience: Optional[str] = None
    year_completed: int
    duration_weeks: Optional[int] = None
    tags: list[TagOut] = []

    model_config = {"from_attributes": True}


class ProjectListOut(BaseModel):
    projects: list[ProjectOut]
    total: int


# ── Brief schemas ─────────────────────────────────────────

class BriefCreate(BaseModel):
    designer_id: UUID
    title: Optional[str] = None
    raw_text: str


class BriefExtraction(BaseModel):
    extracted_project_type: Optional[str] = None
    extracted_industry: Optional[str] = None
    extracted_tone: Optional[str] = None
    extracted_audience: Optional[str] = None
    extracted_budget_tier: Optional[str] = None
    extracted_deliverables: Optional[list[str]] = None
    extracted_constraints: Optional[str] = None
    extraction_confidence: Optional[float] = None


class BriefOut(BaseModel):
    id: UUID
    designer_id: UUID
    title: Optional[str] = None
    raw_text: str
    status: str
    extracted_project_type: Optional[str] = None
    extracted_industry: Optional[str] = None
    extracted_tone: Optional[str] = None
    extracted_audience: Optional[str] = None
    extracted_budget_tier: Optional[str] = None
    extracted_deliverables: Optional[list[str]] = None
    extracted_constraints: Optional[str] = None
    extraction_confidence: Optional[float] = None
    created_at: datetime

    model_config = {"from_attributes": True}


# ── Recommendation schemas ────────────────────────────────

class RecommendationOut(BaseModel):
    id: UUID
    project: ProjectOut
    rank: int
    similarity_score: float
    reasoning: str
    matched_on: list[str]

    model_config = {"from_attributes": True}


class RecommendationListOut(BaseModel):
    brief_id: UUID
    recommendations: list[RecommendationOut]
    agent_reasoning: Optional[list[dict]] = None


# ── Feedback schemas ──────────────────────────────────────

class FeedbackCreate(BaseModel):
    recommendation_id: UUID
    designer_id: UUID
    rating: str  # 'highly_relevant', 'somewhat_relevant', 'not_relevant'
    comment: Optional[str] = None


class FeedbackOut(BaseModel):
    id: UUID
    recommendation_id: UUID
    designer_id: UUID
    rating: str
    comment: Optional[str] = None
    created_at: datetime

    model_config = {"from_attributes": True}


# ── Designer schemas ──────────────────────────────────────

class DesignerOut(BaseModel):
    id: UUID
    email: str
    full_name: str
    role: str
    is_active: bool

    model_config = {"from_attributes": True}


# ── Agent schemas ─────────────────────────────────────────

class AgentSessionOut(BaseModel):
    id: UUID
    brief_id: UUID
    reasoning_trace: list[dict]
    clarifications: list[dict]
    search_log: list[dict]
    started_at: datetime
    completed_at: Optional[datetime] = None

    model_config = {"from_attributes": True}
