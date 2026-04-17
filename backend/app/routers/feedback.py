from uuid import UUID

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app.database import get_db
from app.models import Feedback, Recommendation
from app.schemas import FeedbackCreate, FeedbackOut

router = APIRouter(prefix="/feedback", tags=["feedback"])


@router.post("/", response_model=FeedbackOut)
def submit_feedback(feedback_data: FeedbackCreate, db: Session = Depends(get_db)):
    """Submit feedback on a recommendation."""
    # Verify the recommendation exists
    rec = db.query(Recommendation).filter(Recommendation.id == feedback_data.recommendation_id).first()
    if not rec:
        raise HTTPException(status_code=404, detail="Recommendation not found")

    # Check for existing feedback
    existing = (
        db.query(Feedback)
        .filter(
            Feedback.recommendation_id == feedback_data.recommendation_id,
            Feedback.designer_id == feedback_data.designer_id,
        )
        .first()
    )
    if existing:
        # Update existing feedback
        existing.rating = feedback_data.rating
        existing.comment = feedback_data.comment
        db.commit()
        db.refresh(existing)
        return existing

    feedback = Feedback(
        recommendation_id=feedback_data.recommendation_id,
        designer_id=feedback_data.designer_id,
        rating=feedback_data.rating,
        comment=feedback_data.comment,
    )
    db.add(feedback)
    db.commit()
    db.refresh(feedback)
    return feedback


@router.get("/brief/{brief_id}", response_model=list[FeedbackOut])
def get_feedback_for_brief(brief_id: UUID, db: Session = Depends(get_db)):
    """Get all feedback for recommendations tied to a brief."""
    feedback_list = (
        db.query(Feedback)
        .join(Recommendation)
        .filter(Recommendation.brief_id == brief_id)
        .all()
    )
    return feedback_list
