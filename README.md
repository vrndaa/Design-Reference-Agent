Design Reference Agent
An AI-powered tool that helps design firms find relevant project references from their portfolio. Upload a design brief, and the agent analyzes it, searches a database of 500+ past projects, and returns ranked recommendations with reasoning explaining why each project is a good match.
How It Works

Upload a brief — PDF, TXT, or paste text directly
Agent parses the brief — Gemini extracts key requirements (e.g., "visual-forward layout with large imagery", "minimalist Mediterranean aesthetic")
Agent searches the database — Filters by project type, industry, and visual tone
Agent explains matches — For each result, Gemini evaluates the brief's requirements against the project's actual design decisions and explains what matched and why
Designer takes action — Preview the template, copy color palettes, or jump straight into Figma

Architecture
┌─────────────────┐       ┌──────────────────────────────┐      ┌─────────────────┐
│    Frontend      │     │         Backend               │     │    Database      │
│  React + TS      │────▶│  FastAPI + Gemini AI Agent    │────▶│  PostgreSQL      │
│  Vite            │◀────│  4-step reasoning pipeline    │◀────│  500 projects    │
└─────────────────┘      └──────────────────────────────┘       └─────────────────┘
Agent Pipeline:

Parse — Extract structured requirements + key design needs from the brief
Plan — Decide search strategy (primary vs secondary filters)
Retrieve — Query database with progressive filter relaxation
Synthesize — Gemini evaluates each project against the brief's requirements

Tech Stack

Frontend: React, TypeScript, Vite
Backend: Python, FastAPI
AI: Google Gemini 2.5 Flash (brief parsing, PDF extraction, match reasoning)
Database: PostgreSQL with 500 synthetic design projects
Key patterns: RAG, structured outputs, agentic reasoning with fallback

Setup
Database
bash# Create PostgreSQL database
createdb design_ref_agent
psql -d design_ref_agent -f database/setup.sql
Backend
bashcd backend
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Add your Gemini API key
echo "GOOGLE_API_KEY=your-key-here" > .env
echo "DATABASE_URL=postgresql://localhost/design_ref_agent" >> .env

uvicorn app.main:app --reload --port 8002
Frontend
bashcd frontend
npm install
npm run dev
Open http://localhost:5173
