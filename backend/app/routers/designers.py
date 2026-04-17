from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

from app.database import get_db
from app.models import Designer
from app.schemas import DesignerOut

router = APIRouter(prefix="/designers", tags=["designers"])


@router.get("/", response_model=list[DesignerOut])
def list_designers(db: Session = Depends(get_db)):
    """List all active designers."""
    return db.query(Designer).filter(Designer.is_active == True).all()
