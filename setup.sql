-- ============================================================
-- Design Reference Agent — Master Setup Script
-- Run this file to set up the entire database from scratch.
--
-- Usage (from terminal):
--   psql -U your_user -d design_reference_agent -f setup.sql
--
-- Or run each file individually in order.
-- ============================================================

\echo '🔧 Step 1/7: Creating extensions...'
\i schema/001_create_extensions.sql

\echo '🔧 Step 2/7: Creating enum types...'
\i schema/002_create_enums.sql

\echo '🔧 Step 3/7: Creating core tables...'
\i schema/003_create_core_tables.sql

\echo '🔧 Step 4/7: Creating agent tables...'
\i schema/004_create_agent_tables.sql

\echo '🔧 Step 5/7: Creating functions and views...'
\i schema/005_create_functions.sql

\echo '🌱 Step 6/7: Seeding designers and clients...'
\i seeds/001_seed_designers_clients.sql

\echo '🌱 Step 7/7: Seeding tags...'
\i seeds/002_seed_tags.sql

\echo ''
\echo '✅ Schema and base seed data loaded.'
\echo ''
\echo 'To load 500 sample projects (takes a moment):'
\echo '  \i seeds/003_seed_projects.sql'
\echo ''
\echo 'To verify:'
\echo '  SELECT COUNT(*) FROM projects;'
\echo '  SELECT COUNT(*) FROM clients;'
\echo '  SELECT COUNT(*) FROM tags;'
