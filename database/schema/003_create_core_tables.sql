-- ============================================================
-- Design Reference Agent — PostgreSQL Schema
-- File: 003_create_core_tables.sql
-- Purpose: Core tables — designers, clients, projects, assets
-- ============================================================

-- ----------------------------------------
-- DESIGNERS (users of the system)
-- ----------------------------------------
CREATE TABLE designers (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    email           VARCHAR(255) UNIQUE NOT NULL,
    full_name       VARCHAR(150) NOT NULL,
    role            designer_role NOT NULL DEFAULT 'mid_designer',
    avatar_url      TEXT,
    is_active       BOOLEAN DEFAULT TRUE,
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

-- ----------------------------------------
-- CLIENTS
-- ----------------------------------------
CREATE TABLE clients (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name            VARCHAR(255) NOT NULL,
    industry        industry NOT NULL,
    website         TEXT,
    notes           TEXT,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

-- ----------------------------------------
-- TAGS (reusable labels for visual style, themes, techniques)
-- ----------------------------------------
CREATE TABLE tags (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(100) UNIQUE NOT NULL,
    category        VARCHAR(50) NOT NULL,  -- 'style', 'technique', 'theme', 'element'
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

-- Index for fast tag lookup and fuzzy search
CREATE INDEX idx_tags_name_trgm ON tags USING gin (name gin_trgm_ops);

-- ----------------------------------------
-- PROJECTS (the core repository)
-- ----------------------------------------
CREATE TABLE projects (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title           VARCHAR(300) NOT NULL,
    client_id       UUID REFERENCES clients(id) ON DELETE SET NULL,
    project_type    project_type NOT NULL,
    industry        industry NOT NULL,
    description     TEXT NOT NULL,

    -- Visual metadata
    visual_tone     visual_tone NOT NULL,
    layout_style    layout_style NOT NULL,
    color_palette   VARCHAR(7)[] NOT NULL DEFAULT '{}',   -- array of hex codes e.g. {'#FF5733','#1A1A2E'}
    fonts_used      TEXT[] NOT NULL DEFAULT '{}',          -- e.g. {'Inter','Playfair Display'}
    tools_used      TEXT[] NOT NULL DEFAULT '{}',          -- e.g. {'Figma','Illustrator'}

    -- Project context
    budget_tier     budget_tier,
    target_audience TEXT,                                   -- e.g. 'C-suite executives', 'general public'
    year_completed  SMALLINT NOT NULL CHECK (year_completed BETWEEN 2003 AND 2025),
    duration_weeks  SMALLINT,                               -- how long the project took

    -- AI search: vector embedding of combined metadata + description
    -- 768 dimensions matches Vertex AI text-embedding-005 output
    embedding       vector(768),

    -- Timestamps
    created_at      TIMESTAMPTZ DEFAULT NOW(),
    updated_at      TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes for filtered queries the agent will run
CREATE INDEX idx_projects_type       ON projects (project_type);
CREATE INDEX idx_projects_industry   ON projects (industry);
CREATE INDEX idx_projects_tone       ON projects (visual_tone);
CREATE INDEX idx_projects_year       ON projects (year_completed);

-- HNSW index for fast approximate nearest neighbor search on embeddings
-- This is what makes vector similarity queries fast
CREATE INDEX idx_projects_embedding ON projects
    USING hnsw (embedding vector_cosine_ops)
    WITH (m = 16, ef_construction = 64);

-- ----------------------------------------
-- PROJECT ↔ TAG (many-to-many)
-- ----------------------------------------
CREATE TABLE project_tags (
    project_id  UUID REFERENCES projects(id) ON DELETE CASCADE,
    tag_id      INTEGER REFERENCES tags(id) ON DELETE CASCADE,
    PRIMARY KEY (project_id, tag_id)
);

-- ----------------------------------------
-- DELIVERABLES (files/assets linked to a project)
-- ----------------------------------------
CREATE TABLE deliverables (
    id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id      UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
    file_name       VARCHAR(300) NOT NULL,
    file_url        TEXT NOT NULL,           -- GCS bucket path or URL
    file_type       VARCHAR(50) NOT NULL,    -- 'pdf', 'png', 'figma', 'ai', 'sketch'
    thumbnail_url   TEXT,                    -- preview image for the UI
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_deliverables_project ON deliverables (project_id);
