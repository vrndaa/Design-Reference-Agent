from app.routers.projects import router as projects_router
from app.routers.briefs import router as briefs_router
from app.routers.feedback import router as feedback_router
from app.routers.designers import router as designers_router

__all__ = ["projects_router", "briefs_router", "feedback_router", "designers_router"]