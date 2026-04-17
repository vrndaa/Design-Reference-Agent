-- ============================================================
-- Design Reference Agent — PostgreSQL Schema
-- File: 002_create_enums.sql
-- Purpose: Define ENUM types used across multiple tables
-- ============================================================

-- The type of deliverable the firm produced
CREATE TYPE project_type AS ENUM (
    'infographic',
    'annual_report',
    'web_design',
    'branding_identity',
    'social_media',
    'print_collateral',
    'presentation',
    'data_visualization',
    'packaging',
    'editorial_design'
);

-- Industry/sector of the client
CREATE TYPE industry AS ENUM (
    'healthcare',
    'finance',
    'technology',
    'education',
    'nonprofit',
    'retail',
    'government',
    'real_estate',
    'energy',
    'food_beverage',
    'entertainment',
    'legal',
    'manufacturing',
    'travel_hospitality'
);

-- Visual tone/mood of the project
CREATE TYPE visual_tone AS ENUM (
    'minimalist',
    'bold',
    'playful',
    'corporate',
    'elegant',
    'retro',
    'futuristic',
    'organic',
    'editorial',
    'data_driven'
);

-- Layout approach used
CREATE TYPE layout_style AS ENUM (
    'grid',
    'asymmetric',
    'editorial',
    'single_column',
    'modular',
    'freeform',
    'card_based',
    'split_screen'
);

-- Budget tier for the project
CREATE TYPE budget_tier AS ENUM (
    'low',
    'mid',
    'high',
    'premium'
);

-- Designer role
CREATE TYPE designer_role AS ENUM (
    'junior_designer',
    'mid_designer',
    'senior_designer',
    'art_director',
    'creative_director'
);

-- Feedback rating
CREATE TYPE feedback_rating AS ENUM (
    'highly_relevant',
    'somewhat_relevant',
    'not_relevant'
);
