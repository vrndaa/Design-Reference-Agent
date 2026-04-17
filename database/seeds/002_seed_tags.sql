-- ============================================================
-- Design Reference Agent — Seed Data
-- File: 002_seed_tags.sql
-- Purpose: Populate tags table with visual style, technique, theme, and element tags
-- ============================================================

INSERT INTO tags (name, category) VALUES
-- Style tags
('minimalist',             'style'),
('bold_typography',        'style'),
('illustration_driven',    'style'),
('photography_heavy',      'style'),
('flat_design',            'style'),
('skeuomorphic',           'style'),
('brutalist',              'style'),
('art_deco',               'style'),
('swiss_design',           'style'),
('maximalist',             'style'),
('monochromatic',          'style'),
('gradient_heavy',         'style'),
('hand_drawn',             'style'),
('geometric',              'style'),
('organic_shapes',         'style'),

-- Technique tags
('data_heavy',             'technique'),
('interactive',            'technique'),
('motion_graphics',        'technique'),
('3d_rendering',           'technique'),
('collage',                'technique'),
('whitespace_focused',     'technique'),
('layered_composition',    'technique'),
('grid_strict',            'technique'),
('responsive',             'technique'),
('print_ready',            'technique'),
('icon_system',            'technique'),
('custom_illustration',    'technique'),
('photo_manipulation',     'technique'),
('parallax',               'technique'),
('micro_animations',       'technique'),

-- Theme tags
('sustainability',         'theme'),
('innovation',             'theme'),
('community',              'theme'),
('growth',                 'theme'),
('trust',                  'theme'),
('transparency',           'theme'),
('empowerment',            'theme'),
('heritage',               'theme'),
('wellness',               'theme'),
('education',              'theme'),
('equity',                 'theme'),
('technology',             'theme'),
('nature',                 'theme'),
('urban',                  'theme'),
('global',                 'theme'),

-- Element tags
('charts_graphs',          'element'),
('maps',                   'element'),
('timelines',              'element'),
('comparison_tables',      'element'),
('process_flows',          'element'),
('hero_images',            'element'),
('pull_quotes',            'element'),
('sidebar_callouts',       'element'),
('icon_grid',              'element'),
('full_bleed_images',      'element'),
('infographic_sections',   'element'),
('dashboard_widgets',      'element'),
('testimonials',           'element'),
('cta_buttons',            'element'),
('stat_highlights',        'element');
