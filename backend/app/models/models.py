import uuid
from datetime import datetime

from sqlalchemy import (
    Column, String, Text, Boolean, SmallInteger, Integer, Float,
    ForeignKey, ARRAY, TIMESTAMP, CheckConstraint, UniqueConstraint, Enum
)
from sqlalchemy.dialects.postgresql import UUID, JSONB
from sqlalchemy.orm import relationship
from pgvector.sqlalchemy import Vector

from app.database import Base


# ── Designers ─────────────────────────────────────────────

class Designer(Base):
    __tablename__ = "designers"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    email = Column(String(255), unique=True, nullable=False)
    full_name = Column(String(150), nullable=False)
    role = Column(String(50), nullable=False, default="mid_designer")
    avatar_url = Column(Text)
    is_active = Column(Boolean, default=True)
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)
    updated_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow, onupdate=datetime.utcnow)

    briefs = relationship("Brief", back_populates="designer")
    feedback = relationship("Feedback", back_populates="designer")


# ── Clients ───────────────────────────────────────────────

class Client(Base):
    __tablename__ = "clients"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    name = Column(String(255), nullable=False)
    industry = Column(String(50), nullable=False)
    website = Column(Text)
    notes = Column(Text)
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)

    projects = relationship("Project", back_populates="client")


# ── Tags ──────────────────────────────────────────────────

class Tag(Base):
    __tablename__ = "tags"

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), unique=True, nullable=False)
    category = Column(String(50), nullable=False)
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)


# ── Project-Tag association ───────────────────────────────

class ProjectTag(Base):
    __tablename__ = "project_tags"

    project_id = Column(UUID(as_uuid=True), ForeignKey("projects.id", ondelete="CASCADE"), primary_key=True)
    tag_id = Column(Integer, ForeignKey("tags.id", ondelete="CASCADE"), primary_key=True)


# ── Projects ──────────────────────────────────────────────

class Project(Base):
    __tablename__ = "projects"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    title = Column(String(300), nullable=False)
    client_id = Column(UUID(as_uuid=True), ForeignKey("clients.id", ondelete="SET NULL"))
    project_type = Column(String(50), nullable=False)
    industry = Column(String(50), nullable=False)
    description = Column(Text, nullable=False)
    visual_tone = Column(String(50), nullable=False)
    layout_style = Column(String(50), nullable=False)
    color_palette = Column(ARRAY(String(7)), default=[])
    fonts_used = Column(ARRAY(Text), default=[])
    tools_used = Column(ARRAY(Text), default=[])
    budget_tier = Column(String(20))
    target_audience = Column(Text)
    year_completed = Column(SmallInteger, nullable=False)
    duration_weeks = Column(SmallInteger)
    embedding = Column(Vector(768))
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)
    updated_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow, onupdate=datetime.utcnow)

    client = relationship("Client", back_populates="projects")
    tags = relationship("Tag", secondary="project_tags", lazy="joined")
    deliverables = relationship("Deliverable", back_populates="project")
    recommendations = relationship("Recommendation", back_populates="project")


# ── Deliverables ──────────────────────────────────────────

class Deliverable(Base):
    __tablename__ = "deliverables"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    project_id = Column(UUID(as_uuid=True), ForeignKey("projects.id", ondelete="CASCADE"), nullable=False)
    file_name = Column(String(300), nullable=False)
    file_url = Column(Text, nullable=False)
    file_type = Column(String(50), nullable=False)
    thumbnail_url = Column(Text)
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)

    project = relationship("Project", back_populates="deliverables")


# ── Briefs ────────────────────────────────────────────────

class Brief(Base):
    __tablename__ = "briefs"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    designer_id = Column(UUID(as_uuid=True), ForeignKey("designers.id", ondelete="CASCADE"), nullable=False)
    title = Column(String(300))
    raw_text = Column(Text, nullable=False)
    source_file_url = Column(Text)
    extracted_project_type = Column(String(50))
    extracted_industry = Column(String(50))
    extracted_tone = Column(String(50))
    extracted_audience = Column(Text)
    extracted_budget_tier = Column(String(20))
    extracted_deliverables = Column(ARRAY(Text))
    extracted_constraints = Column(Text)
    extraction_confidence = Column(Float)
    embedding = Column(Vector(768))
    status = Column(String(30), default="pending")
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)
    updated_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow, onupdate=datetime.utcnow)

    designer = relationship("Designer", back_populates="briefs")
    sessions = relationship("AgentSession", back_populates="brief")
    recommendations = relationship("Recommendation", back_populates="brief")


# ── Agent Sessions ────────────────────────────────────────

class AgentSession(Base):
    __tablename__ = "agent_sessions"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    brief_id = Column(UUID(as_uuid=True), ForeignKey("briefs.id", ondelete="CASCADE"), nullable=False)
    reasoning_trace = Column(JSONB, default=[])
    clarifications = Column(JSONB, default=[])
    search_log = Column(JSONB, default=[])
    started_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)
    completed_at = Column(TIMESTAMP(timezone=True))

    brief = relationship("Brief", back_populates="sessions")
    recommendations = relationship("Recommendation", back_populates="session")


# ── Recommendations ───────────────────────────────────────

class Recommendation(Base):
    __tablename__ = "recommendations"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    session_id = Column(UUID(as_uuid=True), ForeignKey("agent_sessions.id", ondelete="CASCADE"), nullable=False)
    brief_id = Column(UUID(as_uuid=True), ForeignKey("briefs.id", ondelete="CASCADE"), nullable=False)
    project_id = Column(UUID(as_uuid=True), ForeignKey("projects.id", ondelete="CASCADE"), nullable=False)
    rank = Column(SmallInteger, nullable=False)
    similarity_score = Column(Float, nullable=False)
    reasoning = Column(Text, nullable=False)
    matched_on = Column(ARRAY(Text), default=[])
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)

    session = relationship("AgentSession", back_populates="recommendations")
    brief = relationship("Brief", back_populates="recommendations")
    project = relationship("Project", back_populates="recommendations")
    feedback = relationship("Feedback", back_populates="recommendation")

    __table_args__ = (
        UniqueConstraint("session_id", "project_id"),
    )


# ── Feedback ──────────────────────────────────────────────

class Feedback(Base):
    __tablename__ = "feedback"

    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    recommendation_id = Column(UUID(as_uuid=True), ForeignKey("recommendations.id", ondelete="CASCADE"), nullable=False)
    designer_id = Column(UUID(as_uuid=True), ForeignKey("designers.id", ondelete="CASCADE"), nullable=False)
    rating = Column(String(30), nullable=False)
    comment = Column(Text)
    created_at = Column(TIMESTAMP(timezone=True), default=datetime.utcnow)

    recommendation = relationship("Recommendation", back_populates="feedback")
    designer = relationship("Designer", back_populates="feedback")

    __table_args__ = (
        UniqueConstraint("recommendation_id", "designer_id"),
    )
