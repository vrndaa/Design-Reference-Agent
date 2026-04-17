-- ============================================================
-- Design Reference Agent — PostgreSQL Schema
-- File: 004_create_agent_tables.sql
-- Purpose: Tables for briefs, agent sessions, recommendations, feedback
-- ============================================================

-- ----------------------------------------
-- BRIEFS (uploaded by designers)
-- ----------------------------------------
CREATE TABLE briefs (
    id                  UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    designer_id         UUID NOT NULL REFERENCES designers(id) ON DELETE CASCADE,
    title               VARCHAR(300),
    raw_text            TEXT NOT NULL,               -- full extracted text from uploaded doc
    source_file_url     TEXT,                        -- original uploaded file location

    -- Structured fields extracted by the AI agent (via Document AI + LLM)
    extracted_project_type   project_type,
    extracted_industry       industry,
    extracted_tone           visual_tone,
    extracted_audience       TEXT,
    extracted_budget_tier    budget_tier,
    extracted_deliverables   TEXT[],                  -- e.g. {'annual report','infographic'}
    extracted_constraints    TEXT,                    -- any specific requirements noted
    extraction_confidence    REAL CHECK (extraction_confidence BETWEEN 0 AND 1),

    -- Vector embedding of the brief for semantic matching
    embedding           vector(768),

    -- Agent status tracking
    status              VARCHAR(30) DEFAULT 'pending'
                        CHECK (status IN ('pending','clarifying','searching','complete','failed')),

    created_at          TIMESTAMPTZ DEFAULT NOW(),
    updated_at          TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_briefs_designer ON briefs (designer_id);
CREATE INDEX idx_briefs_status   ON briefs (status);

-- ----------------------------------------
-- AGENT SESSIONS (tracks the agent's reasoning for each brief)
-- ----------------------------------------
CREATE TABLE agent_sessions (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    brief_id        UUID NOT NULL REFERENCES briefs(id) ON DELETE CASCADE,

    -- The agent's reasoning trace (stored as JSONB for flexibility)
    -- Example structure:
    -- [
    --   {"step": "parse_brief", "output": "Extracted: annual report, healthcare, minimalist tone", "timestamp": "..."},
    --   {"step": "plan_strategy", "output": "Search by type + industry, then filter by tone", "timestamp": "..."},
    --   {"step": "retrieve", "output": "Found 12 candidates, narrowed to 5", "timestamp": "..."},
    --   {"step": "synthesize", "output": "Top match is Project X because...", "timestamp": "..."}
    -- ]
    reasoning_trace JSONB NOT NULL DEFAULT '[]',

    -- Clarifying questions the agent asked (if any)
    -- [{"question": "What format should the final report be?", "answer": "Print-ready PDF", "asked_at": "..."}]
    clarifications  JSONB NOT NULL DEFAULT '[]',

    -- Search queries the agent executed
    -- [{"query_type": "semantic", "filters": {"project_type": "annual_report"}, "results_count": 12}]
    search_log      JSONB NOT NULL DEFAULT '[]',

    started_at      TIMESTAMPTZ DEFAULT NOW(),
    completed_at    TIMESTAMPTZ
);

CREATE INDEX idx_agent_sessions_brief ON agent_sessions (brief_id);

-- ----------------------------------------
-- RECOMMENDATIONS (agent's output — matched projects)
-- ----------------------------------------
CREATE TABLE recommendations (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    session_id      UUID NOT NULL REFERENCES agent_sessions(id) ON DELETE CASCADE,
    brief_id        UUID NOT NULL REFERENCES briefs(id) ON DELETE CASCADE,
    project_id      UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,

    rank            SMALLINT NOT NULL CHECK (rank BETWEEN 1 AND 10),
    similarity_score REAL NOT NULL CHECK (similarity_score BETWEEN 0 AND 1),

    -- The agent's explanation for why this project was recommended
    reasoning       TEXT NOT NULL,

    -- Which aspects matched
    matched_on      TEXT[] NOT NULL DEFAULT '{}',   -- e.g. {'project_type','industry','visual_tone'}

    created_at      TIMESTAMPTZ DEFAULT NOW(),

    -- Prevent duplicate project recommendations within same session
    UNIQUE (session_id, project_id)
);

CREATE INDEX idx_recommendations_brief   ON recommendations (brief_id);
CREATE INDEX idx_recommendations_project ON recommendations (project_id);

-- ----------------------------------------
-- FEEDBACK (designer rates each recommendation)
-- ----------------------------------------
CREATE TABLE feedback (
    id                  UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    recommendation_id   UUID NOT NULL REFERENCES recommendations(id) ON DELETE CASCADE,
    designer_id         UUID NOT NULL REFERENCES designers(id) ON DELETE CASCADE,

    rating              feedback_rating NOT NULL,
    comment             TEXT,                       -- optional free-text note

    created_at          TIMESTAMPTZ DEFAULT NOW(),

    -- One feedback per recommendation per designer
    UNIQUE (recommendation_id, designer_id)
);

CREATE INDEX idx_feedback_rating ON feedback (rating);
