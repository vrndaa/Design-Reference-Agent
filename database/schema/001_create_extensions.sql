-- ============================================================
-- Design Reference Agent — PostgreSQL Schema
-- File: 001_create_extensions.sql
-- Purpose: Enable required extensions
-- ============================================================

-- pgvector: stores and queries vector embeddings for semantic search
CREATE EXTENSION IF NOT EXISTS vector;

-- pg_trgm: enables fuzzy text matching on tags and descriptions
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- uuid-ossp: generates UUIDs for primary keys
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
