from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.routers import projects_router, briefs_router, feedback_router, designers_router

app = FastAPI(
    title="Design Reference Agent API",
    description="AI-powered design brief matching system that recommends past projects as references.",
    version="0.1.0",
)

# Allow frontend to call the API (React dev server runs on port 5173)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Register route handlers
app.include_router(projects_router, prefix="/api")
app.include_router(briefs_router, prefix="/api")
app.include_router(feedback_router, prefix="/api")
app.include_router(designers_router, prefix="/api")


@app.get("/")
def root():
    return {
        "name": "Design Reference Agent API",
        "version": "0.1.0",
        "status": "running",
    }


@app.get("/health")
def health_check():
    return {"status": "healthy"}
