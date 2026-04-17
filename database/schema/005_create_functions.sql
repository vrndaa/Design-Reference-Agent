-- ============================================================
-- Design Reference Agent — PostgreSQL Schema
-- File: 005_create_functions.sql
-- Purpose: Utility functions, triggers, and views
-- ============================================================

-- ----------------------------------------
-- Auto-update updated_at on row modification
-- ----------------------------------------
CREATE OR REPLACE FUNCTION update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_designers_updated
    BEFORE UPDATE ON designers
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_projects_updated
    BEFORE UPDATE ON projects
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_briefs_updated
    BEFORE UPDATE ON briefs
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

-- ----------------------------------------
-- Semantic search function
-- Used by the agent as a tool call to find similar projects
-- ----------------------------------------
CREATE OR REPLACE FUNCTION search_similar_projects(
    query_embedding vector(768),
    match_count     INT DEFAULT 5,
    filter_type     project_type DEFAULT NULL,
    filter_industry industry DEFAULT NULL,
    filter_tone     visual_tone DEFAULT NULL
)
RETURNS TABLE (
    project_id      UUID,
    title           VARCHAR(300),
    project_type    project_type,
    industry        industry,
    visual_tone     visual_tone,
    description     TEXT,
    similarity      REAL
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.id,
        p.title,
        p.project_type,
        p.industry,
        p.visual_tone,
        p.description,
        1 - (p.embedding <=> query_embedding)::REAL AS similarity
    FROM projects p
    WHERE
        p.embedding IS NOT NULL
        AND (filter_type IS NULL OR p.project_type = filter_type)
        AND (filter_industry IS NULL OR p.industry = filter_industry)
        AND (filter_tone IS NULL OR p.visual_tone = filter_tone)
    ORDER BY p.embedding <=> query_embedding
    LIMIT match_count;
END;
$$ LANGUAGE plpgsql;

-- ----------------------------------------
-- View: project details with tags (for the agent's retrieval step)
-- ----------------------------------------
CREATE OR REPLACE VIEW project_details AS
SELECT
    p.id,
    p.title,
    p.project_type,
    p.industry,
    p.visual_tone,
    p.layout_style,
    p.description,
    p.color_palette,
    p.fonts_used,
    p.tools_used,
    p.budget_tier,
    p.target_audience,
    p.year_completed,
    p.duration_weeks,
    c.name AS client_name,
    c.industry AS client_industry,
    COALESCE(
        ARRAY_AGG(t.name) FILTER (WHERE t.name IS NOT NULL),
        '{}'
    ) AS tags
FROM projects p
LEFT JOIN clients c ON p.client_id = c.id
LEFT JOIN project_tags pt ON p.id = pt.project_id
LEFT JOIN tags t ON pt.tag_id = t.id
GROUP BY p.id, c.name, c.industry;

-- ----------------------------------------
-- View: feedback analytics (for monitoring agent quality)
-- ----------------------------------------
CREATE OR REPLACE VIEW feedback_analytics AS
SELECT
    r.brief_id,
    b.extracted_project_type,
    b.extracted_industry,
    COUNT(*) AS total_recommendations,
    COUNT(f.id) AS total_feedback,
    COUNT(*) FILTER (WHERE f.rating = 'highly_relevant') AS highly_relevant_count,
    COUNT(*) FILTER (WHERE f.rating = 'somewhat_relevant') AS somewhat_relevant_count,
    COUNT(*) FILTER (WHERE f.rating = 'not_relevant') AS not_relevant_count,
    ROUND(
        COUNT(*) FILTER (WHERE f.rating IN ('highly_relevant','somewhat_relevant'))::NUMERIC
        / NULLIF(COUNT(f.id), 0) * 100, 1
    ) AS relevance_rate
FROM recommendations r
JOIN briefs b ON r.brief_id = b.id
LEFT JOIN feedback f ON r.id = f.recommendation_id
GROUP BY r.brief_id, b.extracted_project_type, b.extracted_industry;
