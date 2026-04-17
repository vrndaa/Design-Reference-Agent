from typing import Optional
from uuid import UUID

from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session

from app.database import get_db
from app.models import Project, Tag
from app.schemas import ProjectOut, ProjectListOut

router = APIRouter(prefix="/projects", tags=["projects"])


@router.get("/", response_model=ProjectListOut)
def list_projects(
    project_type: Optional[str] = Query(None, description="Filter by project type"),
    industry: Optional[str] = Query(None, description="Filter by industry"),
    visual_tone: Optional[str] = Query(None, description="Filter by visual tone"),
    year_from: Optional[int] = Query(None, description="Filter by year (from)"),
    year_to: Optional[int] = Query(None, description="Filter by year (to)"),
    limit: int = Query(20, ge=1, le=100),
    offset: int = Query(0, ge=0),
    db: Session = Depends(get_db),
):
    """List projects with optional filters."""
    query = db.query(Project)

    if project_type:
        query = query.filter(Project.project_type == project_type)
    if industry:
        query = query.filter(Project.industry == industry)
    if visual_tone:
        query = query.filter(Project.visual_tone == visual_tone)
    if year_from:
        query = query.filter(Project.year_completed >= year_from)
    if year_to:
        query = query.filter(Project.year_completed <= year_to)

    total = query.count()
    projects = query.order_by(Project.year_completed.desc()).offset(offset).limit(limit).all()

    return ProjectListOut(projects=projects, total=total)


@router.get("/{project_id}", response_model=ProjectOut)
def get_project(project_id: UUID, db: Session = Depends(get_db)):
    """Get a single project by ID."""
    project = db.query(Project).filter(Project.id == project_id).first()
    if not project:
        from fastapi import HTTPException
        raise HTTPException(status_code=404, detail="Project not found")
    return project
