-- ============================================================
-- Design Reference Agent — Seed Data (auto-generated)
-- File: 003_seed_projects.sql
-- Purpose: 500 synthetic projects with tag associations
-- ============================================================

-- Project 1: Silver Screen Distribution Annual Report 2010
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Annual Report 2010',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'annual_report',
    'entertainment',
    'Produced a comprehensive annual report for Silver Screen Distribution covering financial performance, program impact, and strategic outlook. The minimalist design incorporated charts and graphs, hero photography, and narrative photography to engage environmental advocates. Delivered as a 64-page print and digital publication.',
    'minimalist',
    'modular',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Inter', 'Roboto']::TEXT[],
    ARRAY['Adobe Photoshop', 'Blender']::TEXT[],
    'mid',
    'environmental advocates',
    2010,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Annual Report 2010' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Annual Report 2010' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Annual Report 2010' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Annual Report 2010' LIMIT 1), 29);

-- Project 2: Arclight AI Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'branding_identity',
    'technology',
    'Developed a complete brand identity system for Arclight AI including logo, color palette, typography, and usage guidelines. The retro direction was crafted to resonate with retail consumers while differentiating Arclight AI in the technology space. Delivered a comprehensive brand toolkit.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Archivo', 'Montserrat', 'Libre Baskerville']::TEXT[],
    ARRAY['Blender', 'Sketch']::TEXT[],
    'low',
    'retail consumers',
    2015,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Guidelines & Toolkit' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Guidelines & Toolkit' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Guidelines & Toolkit' LIMIT 1), 1);

-- Project 3: Voices for Justice KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'data_visualization',
    'nonprofit',
    'Designed a comprehensive data visualization suite for Voices for Justice covering Donor Engagement analytics. The system included pull quotes, real-time dashboards, and exportable reports, all styled in a retro visual language for retail consumers.',
    'retro',
    'editorial',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Poppins', 'Source Serif Pro']::TEXT[],
    ARRAY['Sketch', 'Tableau', 'Adobe Premiere']::TEXT[],
    'high',
    'retail consumers',
    2014,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 28);

-- Project 4: Campus Life Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Campus Life Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'data_visualization',
    'education',
    'Built an interactive data visualization system for Pacific Northwest University to explore Campus Life metrics. The futuristic design featured comparison tables, sidebar callouts, and filterable views that empowered policy makers to discover insights independently.',
    'futuristic',
    'split_screen',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Open Sans', 'Lora']::TEXT[],
    ARRAY['Canva', 'Adobe Illustrator', 'Figma', 'Procreate']::TEXT[],
    'mid',
    'policy makers',
    2011,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Campus Life Interactive Data Portal' LIMIT 1), 10);

-- Project 5: Meridian Credit Union Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'social_media',
    'finance',
    'Developed a social media content system for Meridian Credit Union spanning Instagram, LinkedIn, and Twitter. The futuristic visual approach used timeline visuals and hero photography to boost engagement with parents. Included templates, content guidelines, and a 30-day launch calendar.',
    'futuristic',
    'editorial',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Fira Sans', 'Futura']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe XD']::TEXT[],
    'premium',
    'parents',
    2003,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 8);

-- Project 6: Finance Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Finance Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'data_visualization',
    'finance',
    'Designed a comprehensive data visualization suite for BlueLine Wealth Advisors covering Digital Banking analytics. The system included testimonial blocks, real-time dashboards, and exportable reports, all styled in a bold visual language for parents.',
    'bold',
    'editorial',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Archivo', 'Oswald']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe Photoshop', 'Webflow', 'Sketch']::TEXT[],
    'mid',
    'parents',
    2024,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 4);

-- Project 7: Thornton & Associates LLP Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'infographic',
    'legal',
    'Designed a visually compelling infographic for Thornton & Associates LLP that distilled complex Pro Bono Work data into an accessible, shareable format. The piece featured stat highlight cards and custom illustrations, using a corporate aesthetic to engage prospective customers. Color-coded sections guided readers through key statistics and takeaways.',
    'corporate',
    'asymmetric',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Georgia', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Adobe Photoshop', 'Webflow', 'After Effects']::TEXT[],
    'low',
    'prospective customers',
    2013,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 6);

-- Project 8: 2020 Impact Report — Ironridge Manufacturing
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2020 Impact Report — Ironridge Manufacturing',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Produced a comprehensive annual report for Ironridge Manufacturing covering financial performance, program impact, and strategic outlook. The corporate design incorporated charts and graphs, custom illustrations, and narrative photography to engage families. Delivered as a 32-page print and digital publication.',
    'corporate',
    'single_column',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Roboto', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Illustrator', 'Figma', 'Tableau', 'Blender']::TEXT[],
    'mid',
    'families',
    2020,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2020 Impact Report — Ironridge Manufacturing' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = '2020 Impact Report — Ironridge Manufacturing' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = '2020 Impact Report — Ironridge Manufacturing' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = '2020 Impact Report — Ironridge Manufacturing' LIMIT 1), 15);

-- Project 9: Maricopa County Public Health Instagram Content Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Maricopa County Public Health Instagram Content Series',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'social_media',
    'government',
    'Created a multi-platform social campaign for Maricopa County Public Health centered on Census Data. The design system featured custom illustrations, adaptable templates, and motion graphics optimized for each platform. Targeted investors and stakeholders with platform-specific messaging strategies.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Garamond', 'Georgia']::TEXT[],
    ARRAY['Figma', 'Adobe Premiere', 'Adobe XD', 'Webflow']::TEXT[],
    'premium',
    'investors and stakeholders',
    2025,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Instagram Content Series' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Instagram Content Series' LIMIT 1), 1);

-- Project 10: Streaming Platform Campaign Identity for Ember Studios
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Streaming Platform Campaign Identity for Ember Studios',
    (SELECT id FROM clients WHERE name = 'Ember Studios' LIMIT 1),
    'branding_identity',
    'entertainment',
    'Created a cohesive visual identity for Ember Studios rooted in their Streaming Platform mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with industry analysts.',
    'futuristic',
    'asymmetric',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Raleway', 'Merriweather', 'Avenir']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop', 'Sketch', 'After Effects']::TEXT[],
    'mid',
    'industry analysts',
    2021,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Streaming Platform Campaign Identity for Ember Studios' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Streaming Platform Campaign Identity for Ember Studios' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Streaming Platform Campaign Identity for Ember Studios' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Streaming Platform Campaign Identity for Ember Studios' LIMIT 1), 15);

-- Project 11: Solar Adoption Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Solar Adoption Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'social_media',
    'energy',
    'Developed a social media content system for Pacific Grid Energy spanning Instagram, LinkedIn, and Twitter. The playful visual approach used process flow diagrams and dashboard widgets to boost engagement with internal team members. Included templates, content guidelines, and a 30-day launch calendar.',
    'playful',
    'freeform',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Futura', 'PT Serif', 'Helvetica Neue']::TEXT[],
    ARRAY['Figma', 'Tableau', 'Blender', 'Sketch']::TEXT[],
    'low',
    'internal team members',
    2010,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Solar Adoption Social Launch Kit' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Solar Adoption Social Launch Kit' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Solar Adoption Social Launch Kit' LIMIT 1), 50);

-- Project 12: Thornton & Associates LLP Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'print_collateral',
    'legal',
    'Designed a suite of print materials for Thornton & Associates LLP including brochures, flyers, and event signage. The corporate design featured interactive filters and hero photography, maintaining brand consistency across all touchpoints for community members.',
    'corporate',
    'modular',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Oswald', 'Lora', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Premiere', 'Canva']::TEXT[],
    'premium',
    'community members',
    2011,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 55);

-- Project 13: State of Oregon — DEQ Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'web_design',
    'government',
    'Designed and prototyped a modern web experience for State of Oregon — DEQ focused on Civic Engagement. The site featured timeline visuals, dashboard widgets, and seamless mobile responsiveness. User testing with students and educators informed iterative design refinements.',
    'minimalist',
    'modular',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Futura', 'Georgia', 'Lora']::TEXT[],
    ARRAY['Webflow', 'Adobe InDesign']::TEXT[],
    'high',
    'students and educators',
    2004,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Landing Page Suite' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Landing Page Suite' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Landing Page Suite' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Landing Page Suite' LIMIT 1), 12);

-- Project 14: Summit Lodge & Spa KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Summit Lodge & Spa KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'data_visualization',
    'travel_hospitality',
    'Designed a comprehensive data visualization suite for Summit Lodge & Spa covering Luxury Getaway analytics. The system included testimonial blocks, real-time dashboards, and exportable reports, all styled in a corporate visual language for C-suite executives.',
    'corporate',
    'single_column',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Raleway', 'Roboto']::TEXT[],
    ARRAY['Adobe XD', 'Tableau', 'Blender']::TEXT[],
    'premium',
    'C-suite executives',
    2014,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa KPI Visualization System' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa KPI Visualization System' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa KPI Visualization System' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa KPI Visualization System' LIMIT 1), 31);

-- Project 15: Federal Transit Administration Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Federal Transit Administration Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'editorial_design',
    'government',
    'Designed a publication for Federal Transit Administration focused on Public Safety, featuring a editorial editorial style with sidebar callouts, infographic sections, and thoughtful typography across 64 pages for industry analysts.',
    'editorial',
    'asymmetric',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Nunito']::TEXT[],
    ARRAY['Tableau', 'Adobe XD']::TEXT[],
    'premium',
    'industry analysts',
    2021,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Magazine Layout' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Magazine Layout' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Magazine Layout' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Magazine Layout' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Magazine Layout' LIMIT 1), 5);

-- Project 16: Wavelength Music Festival E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'web_design',
    'entertainment',
    'Designed and prototyped a modern web experience for Wavelength Music Festival focused on Live Events. The site featured data maps, comparison tables, and seamless mobile responsiveness. User testing with investors and stakeholders informed iterative design refinements.',
    'data_driven',
    'modular',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Avenir', 'Merriweather']::TEXT[],
    ARRAY['Canva', 'Procreate', 'Adobe Premiere', 'Adobe InDesign']::TEXT[],
    'premium',
    'investors and stakeholders',
    2020,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 11);

-- Project 17: Curriculum Innovation Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Curriculum Innovation Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'data_visualization',
    'education',
    'Designed a comprehensive data visualization suite for Global Learners Initiative covering Curriculum Innovation analytics. The system included pull quotes, real-time dashboards, and exportable reports, all styled in a data_driven visual language for nonprofit donors.',
    'data_driven',
    'asymmetric',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Lora', 'Helvetica Neue']::TEXT[],
    ARRAY['Figma', 'Procreate', 'Adobe Illustrator', 'After Effects']::TEXT[],
    'premium',
    'nonprofit donors',
    2016,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Curriculum Innovation Interactive Data Portal' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Curriculum Innovation Interactive Data Portal' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Curriculum Innovation Interactive Data Portal' LIMIT 1), 56);

-- Project 18: Innovation Pipeline Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Innovation Pipeline Data Explorer',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'data_visualization',
    'manufacturing',
    'Designed a comprehensive data visualization suite for Precision Dynamics Corp. covering Innovation Pipeline analytics. The system included icon systems, real-time dashboards, and exportable reports, all styled in a data_driven visual language for community members.',
    'data_driven',
    'card_based',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Oswald', 'Fira Sans', 'Work Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Sketch', 'Canva', 'Adobe Illustrator']::TEXT[],
    'premium',
    'community members',
    2008,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Data Explorer' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Data Explorer' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Data Explorer' LIMIT 1), 9);

-- Project 19: Cascade Legal Group Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'branding_identity',
    'legal',
    'Developed a complete brand identity system for Cascade Legal Group including logo, color palette, typography, and usage guidelines. The bold direction was crafted to resonate with general public while differentiating Cascade Legal Group in the legal space. Delivered a comprehensive brand toolkit.',
    'bold',
    'card_based',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Oswald', 'Garamond', 'Proxima Nova']::TEXT[],
    ARRAY['Webflow', 'Procreate']::TEXT[],
    'premium',
    'general public',
    2013,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 24);

-- Project 20: City of Portland — Parks Dept Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Print Ad Series',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'print_collateral',
    'government',
    'Produced print collateral for City of Portland — Parks Dept''s Budget Transparency initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive futuristic design used custom illustrations to communicate key messages to policy makers.',
    'futuristic',
    'editorial',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Roboto', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva', 'Webflow']::TEXT[],
    'premium',
    'policy makers',
    2007,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Print Ad Series' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Print Ad Series' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Print Ad Series' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Print Ad Series' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Print Ad Series' LIMIT 1), 8);

-- Project 21: Ember & Oak Home Goods Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'branding_identity',
    'retail',
    'Developed a complete brand identity system for Ember & Oak Home Goods including logo, color palette, typography, and usage guidelines. The bold direction was crafted to resonate with government officials while differentiating Ember & Oak Home Goods in the retail space. Delivered a comprehensive brand toolkit.',
    'bold',
    'grid',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Garamond', 'Merriweather']::TEXT[],
    ARRAY['Adobe Premiere', 'Sketch', 'Adobe XD']::TEXT[],
    'low',
    'government officials',
    2010,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Visual Identity Refresh' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Visual Identity Refresh' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Visual Identity Refresh' LIMIT 1), 55);

-- Project 22: City of Portland — Parks Dept Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Rebrand',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'branding_identity',
    'government',
    'Created a cohesive visual identity for City of Portland — Parks Dept rooted in their Public Safety mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with small business owners.',
    'bold',
    'single_column',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Roboto', 'Fira Sans', 'Helvetica Neue']::TEXT[],
    ARRAY['Figma', 'After Effects', 'Canva']::TEXT[],
    'low',
    'small business owners',
    2025,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Rebrand' LIMIT 1), 27);

-- Project 23: Trailhead Adventures Financial & Impact Summary 2017
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Financial & Impact Summary 2017',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'annual_report',
    'travel_hospitality',
    'Designed Trailhead Adventures''s flagship annual report with a focus on storytelling through data. The report featured hero photography and dashboard widgets across 56 pages, balancing detailed financials with human-interest narratives for C-suite executives.',
    'elegant',
    'split_screen',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Merriweather']::TEXT[],
    ARRAY['Procreate', 'Sketch', 'Adobe XD']::TEXT[],
    'mid',
    'C-suite executives',
    2017,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Financial & Impact Summary 2017' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Financial & Impact Summary 2017' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Financial & Impact Summary 2017' LIMIT 1), 53);

-- Project 24: Thornton & Associates LLP Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Thornton & Associates LLP covering Firm Heritage analytics. The system included sidebar callouts, real-time dashboards, and exportable reports, all styled in a organic visual language for government officials.',
    'organic',
    'split_screen',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Archivo', 'Fira Sans']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere', 'Blender']::TEXT[],
    'low',
    'government officials',
    2005,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 4);

-- Project 25: Thornton & Associates LLP Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Thornton & Associates LLP covering Industry Compliance analytics. The system included comparison tables, real-time dashboards, and exportable reports, all styled in a elegant visual language for families.',
    'elegant',
    'modular',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Raleway', 'Playfair Display']::TEXT[],
    ARRAY['Blender', 'Sketch']::TEXT[],
    'low',
    'families',
    2009,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 10);

-- Project 26: Finance Annual Review 2021
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Finance Annual Review 2021',
    (SELECT id FROM clients WHERE name = 'Granite Peak Capital' LIMIT 1),
    'annual_report',
    'finance',
    'Designed Granite Peak Capital''s flagship annual report with a focus on storytelling through data. The report featured pull quotes and testimonial blocks across 48 pages, balancing detailed financials with human-interest narratives for young professionals.',
    'futuristic',
    'split_screen',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Montserrat']::TEXT[],
    ARRAY['Procreate', 'After Effects', 'D3.js', 'Adobe Premiere']::TEXT[],
    'low',
    'young professionals',
    2021,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2021' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2021' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2021' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2021' LIMIT 1), 14);

-- Project 27: Urban Roots Food Bank Financial & Impact Summary 2020
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Urban Roots Food Bank Financial & Impact Summary 2020',
    (SELECT id FROM clients WHERE name = 'Urban Roots Food Bank' LIMIT 1),
    'annual_report',
    'nonprofit',
    'Produced a comprehensive annual report for Urban Roots Food Bank covering financial performance, program impact, and strategic outlook. The playful design incorporated dashboard widgets, custom illustrations, and narrative photography to engage industry analysts. Delivered as a 40-page print and digital publication.',
    'playful',
    'single_column',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Playfair Display', 'Open Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Sketch', 'Webflow']::TEXT[],
    'mid',
    'industry analysts',
    2020,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Financial & Impact Summary 2020' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Financial & Impact Summary 2020' LIMIT 1), 24);

-- Project 28: Azure Coast Resorts E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'web_design',
    'travel_hospitality',
    'Designed and prototyped a modern web experience for Azure Coast Resorts focused on Booking Platform. The site featured custom illustrations, dashboard widgets, and seamless mobile responsiveness. User testing with students and educators informed iterative design refinements.',
    'bold',
    'grid',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Libre Baskerville', 'Raleway']::TEXT[],
    ARRAY['Blender', 'Canva', 'Procreate', 'Adobe Illustrator']::TEXT[],
    'mid',
    'students and educators',
    2012,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts E-commerce Platform' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts E-commerce Platform' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts E-commerce Platform' LIMIT 1), 17);

-- Project 29: How Product Launch Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Product Launch Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'infographic',
    'food_beverage',
    'Created a multi-section infographic breaking down Product Launch trends for Peak Nutrition Labs. The design leveraged infographic sections, comparison tables, and custom iconography to make dense data approachable for healthcare professionals. Delivered in both digital and print-ready formats.',
    'playful',
    'split_screen',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Avenir', 'Montserrat']::TEXT[],
    ARRAY['Adobe XD', 'After Effects']::TEXT[],
    'premium',
    'healthcare professionals',
    2011,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Product Launch Works — Visual Breakdown' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'How Product Launch Works — Visual Breakdown' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'How Product Launch Works — Visual Breakdown' LIMIT 1), 21);

-- Project 30: Wavelength Music Festival Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Product Packaging',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'packaging',
    'entertainment',
    'Designed product packaging for Wavelength Music Festival that balanced shelf appeal with brand storytelling. The organic design featured charts and graphs, sustainable material choices, and clear product information hierarchy for internal team members.',
    'organic',
    'card_based',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Archivo', 'Lora', 'DM Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Canva', 'Adobe Illustrator']::TEXT[],
    'low',
    'internal team members',
    2009,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Product Packaging' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Product Packaging' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Product Packaging' LIMIT 1), 5);

-- Project 31: Retirement Planning Microsite for Vanguard Municipal Finance
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Retirement Planning Microsite for Vanguard Municipal Finance',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'web_design',
    'finance',
    'Designed and prototyped a modern web experience for Vanguard Municipal Finance focused on Retirement Planning. The site featured sidebar callouts, dashboard widgets, and seamless mobile responsiveness. User testing with internal team members informed iterative design refinements.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Futura', 'Fira Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Illustrator', 'Sketch', 'After Effects']::TEXT[],
    'high',
    'internal team members',
    2016,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Retirement Planning Microsite for Vanguard Municipal Finance' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Retirement Planning Microsite for Vanguard Municipal Finance' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Retirement Planning Microsite for Vanguard Municipal Finance' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Retirement Planning Microsite for Vanguard Municipal Finance' LIMIT 1), 44);

-- Project 32: Riverwalk Boutique Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Riverwalk Boutique Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Riverwalk Boutique' LIMIT 1),
    'print_collateral',
    'retail',
    'Designed a suite of print materials for Riverwalk Boutique including brochures, flyers, and event signage. The editorial design featured comparison tables and pull quotes, maintaining brand consistency across all touchpoints for government officials.',
    'editorial',
    'card_based',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Georgia', 'Work Sans', 'Proxima Nova']::TEXT[],
    ARRAY['After Effects', 'Tableau', 'Procreate']::TEXT[],
    'premium',
    'government officials',
    2013,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Direct Mail Campaign' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Direct Mail Campaign' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Direct Mail Campaign' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Direct Mail Campaign' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Direct Mail Campaign' LIMIT 1), 24);

-- Project 33: CoreSteel Industries Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'social_media',
    'manufacturing',
    'Developed a social media content system for CoreSteel Industries spanning Instagram, LinkedIn, and Twitter. The retro visual approach used icon systems and process flow diagrams to boost engagement with senior citizens. Included templates, content guidelines, and a 30-day launch calendar.',
    'retro',
    'card_based',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Archivo', 'Playfair Display', 'Futura']::TEXT[],
    ARRAY['Adobe Photoshop', 'Tableau']::TEXT[],
    'low',
    'senior citizens',
    2013,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 13);

-- Project 34: The State of Holiday Campaign — Visual Summary
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The State of Holiday Campaign — Visual Summary',
    (SELECT id FROM clients WHERE name = 'Riverwalk Boutique' LIMIT 1),
    'infographic',
    'retail',
    'Designed a visually compelling infographic for Riverwalk Boutique that distilled complex Holiday Campaign data into an accessible, shareable format. The piece featured infographic sections and dashboard widgets, using a elegant aesthetic to engage policy makers. Color-coded sections guided readers through key statistics and takeaways.',
    'elegant',
    'freeform',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Roboto', 'Futura']::TEXT[],
    ARRAY['D3.js', 'Tableau', 'Adobe Photoshop']::TEXT[],
    'high',
    'policy makers',
    2016,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The State of Holiday Campaign — Visual Summary' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'The State of Holiday Campaign — Visual Summary' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'The State of Holiday Campaign — Visual Summary' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'The State of Holiday Campaign — Visual Summary' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'The State of Holiday Campaign — Visual Summary' LIMIT 1), 20);

-- Project 35: Riverwalk Boutique Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Riverwalk Boutique Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Riverwalk Boutique' LIMIT 1),
    'editorial_design',
    'retail',
    'Designed a publication for Riverwalk Boutique focused on Holiday Campaign, featuring a elegant editorial style with hero photography, charts and graphs, and thoughtful typography across 56 pages for prospective customers.',
    'elegant',
    'card_based',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Garamond', 'IBM Plex Sans', 'DM Sans']::TEXT[],
    ARRAY['Sketch', 'Figma', 'Tableau', 'After Effects']::TEXT[],
    'high',
    'prospective customers',
    2017,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Magazine Layout' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Magazine Layout' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Magazine Layout' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Magazine Layout' LIMIT 1), 25);

-- Project 36: 2004 Impact Report — Wavelength Music Festival
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2004 Impact Report — Wavelength Music Festival',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'annual_report',
    'entertainment',
    'Designed Wavelength Music Festival''s flagship annual report with a focus on storytelling through data. The report featured timeline visuals and comparison tables across 80 pages, balancing detailed financials with human-interest narratives for healthcare professionals.',
    'minimalist',
    'modular',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Poppins', 'Merriweather', 'Lora']::TEXT[],
    ARRAY['Adobe XD', 'Blender', 'Procreate', 'Sketch']::TEXT[],
    'premium',
    'healthcare professionals',
    2004,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2004 Impact Report — Wavelength Music Festival' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Wavelength Music Festival' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Wavelength Music Festival' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Wavelength Music Festival' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Wavelength Music Festival' LIMIT 1), 14);

-- Project 37: Meridian Credit Union Investor Pitch Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Investor Pitch Deck',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'presentation',
    'finance',
    'Created a polished pitch deck for Meridian Credit Union with 64 slides covering strategy, data, and vision. The minimalist design balanced data maps with clean typography to keep small business owners engaged throughout.',
    'minimalist',
    'modular',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Inter']::TEXT[],
    ARRAY['Blender', 'Adobe XD', 'D3.js', 'Adobe Photoshop']::TEXT[],
    'low',
    'small business owners',
    2017,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Investor Pitch Deck' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Investor Pitch Deck' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Investor Pitch Deck' LIMIT 1), 7);

-- Project 38: Vanguard Municipal Finance Stakeholder Report 2017
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Stakeholder Report 2017',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'annual_report',
    'finance',
    'Designed Vanguard Municipal Finance''s flagship annual report with a focus on storytelling through data. The report featured stat highlight cards and pull quotes across 32 pages, balancing detailed financials with human-interest narratives for industry analysts.',
    'corporate',
    'editorial',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Futura', 'Nunito', 'Raleway']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe XD']::TEXT[],
    'premium',
    'industry analysts',
    2017,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Stakeholder Report 2017' LIMIT 1), 11);

-- Project 39: Music Discovery Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Music Discovery Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'editorial_design',
    'entertainment',
    'Designed a publication for Silver Screen Distribution focused on Music Discovery, featuring a minimalist editorial style with charts and graphs, comparison tables, and thoughtful typography across 32 pages for healthcare professionals.',
    'minimalist',
    'grid',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'D3.js']::TEXT[],
    'high',
    'healthcare professionals',
    2010,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Music Discovery Editorial Feature' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Music Discovery Editorial Feature' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Music Discovery Editorial Feature' LIMIT 1), 13);

-- Project 40: Ironridge Manufacturing Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Rebrand',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'branding_identity',
    'manufacturing',
    'Developed a complete brand identity system for Ironridge Manufacturing including logo, color palette, typography, and usage guidelines. The data_driven direction was crafted to resonate with industry analysts while differentiating Ironridge Manufacturing in the manufacturing space. Delivered a comprehensive brand toolkit.',
    'data_driven',
    'freeform',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Blender', 'D3.js', 'Adobe Illustrator']::TEXT[],
    'low',
    'industry analysts',
    2008,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Rebrand' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Rebrand' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Rebrand' LIMIT 1), 23);

-- Project 41: 2005 Impact Report — State of Oregon — DEQ
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2005 Impact Report — State of Oregon — DEQ',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'annual_report',
    'government',
    'Produced a comprehensive annual report for State of Oregon — DEQ covering financial performance, program impact, and strategic outlook. The organic design incorporated interactive filters, custom illustrations, and narrative photography to engage young professionals. Delivered as a 80-page print and digital publication.',
    'organic',
    'split_screen',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Futura', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'Blender', 'D3.js']::TEXT[],
    'low',
    'young professionals',
    2005,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2005 Impact Report — State of Oregon — DEQ' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = '2005 Impact Report — State of Oregon — DEQ' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = '2005 Impact Report — State of Oregon — DEQ' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = '2005 Impact Report — State of Oregon — DEQ' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = '2005 Impact Report — State of Oregon — DEQ' LIMIT 1), 36);

-- Project 42: Ember & Oak Home Goods Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'social_media',
    'retail',
    'Developed a social media content system for Ember & Oak Home Goods spanning Instagram, LinkedIn, and Twitter. The retro visual approach used sidebar callouts and infographic sections to boost engagement with industry analysts. Included templates, content guidelines, and a 30-day launch calendar.',
    'retro',
    'editorial',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Lora', 'Archivo']::TEXT[],
    ARRAY['D3.js', 'Blender']::TEXT[],
    'premium',
    'industry analysts',
    2005,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Social Media Campaign' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Social Media Campaign' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Social Media Campaign' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Social Media Campaign' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Social Media Campaign' LIMIT 1), 29);

-- Project 43: Developer Tools Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Developer Tools Data Explorer',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'data_visualization',
    'technology',
    'Designed a comprehensive data visualization suite for Nexon Cloud Solutions covering Developer Tools analytics. The system included icon systems, real-time dashboards, and exportable reports, all styled in a corporate visual language for policy makers.',
    'corporate',
    'asymmetric',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Futura', 'Avenir']::TEXT[],
    ARRAY['Sketch', 'Figma', 'Adobe InDesign', 'Webflow']::TEXT[],
    'high',
    'policy makers',
    2020,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Developer Tools Data Explorer' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Developer Tools Data Explorer' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Developer Tools Data Explorer' LIMIT 1), 32);

-- Project 44: Risk Management Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Risk Management Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'packaging',
    'finance',
    'Designed product packaging for BlueLine Wealth Advisors that balanced shelf appeal with brand storytelling. The corporate design featured custom illustrations, sustainable material choices, and clear product information hierarchy for tech-savvy millennials.',
    'corporate',
    'card_based',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Lora']::TEXT[],
    ARRAY['Procreate', 'D3.js']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2017,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Risk Management Limited Edition Packaging' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Risk Management Limited Edition Packaging' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Risk Management Limited Edition Packaging' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Risk Management Limited Edition Packaging' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Risk Management Limited Edition Packaging' LIMIT 1), 35);

-- Project 45: Market Trends Awareness Campaign — Vanguard Municipal Finance
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Market Trends Awareness Campaign — Vanguard Municipal Finance',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'social_media',
    'finance',
    'Created a multi-platform social campaign for Vanguard Municipal Finance centered on Market Trends. The design system featured charts and graphs, adaptable templates, and motion graphics optimized for each platform. Targeted C-suite executives with platform-specific messaging strategies.',
    'data_driven',
    'split_screen',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Oswald', 'Lora']::TEXT[],
    ARRAY['Sketch', 'Adobe XD', 'Adobe Illustrator']::TEXT[],
    'high',
    'C-suite executives',
    2004,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Vanguard Municipal Finance' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Vanguard Municipal Finance' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Vanguard Municipal Finance' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Vanguard Municipal Finance' LIMIT 1), 7);

-- Project 46: Cornerstone Development Group Financial & Impact Summary 2025
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Financial & Impact Summary 2025',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'annual_report',
    'real_estate',
    'Produced a comprehensive annual report for Cornerstone Development Group covering financial performance, program impact, and strategic outlook. The retro design incorporated data maps, stat highlight cards, and narrative photography to engage students and educators. Delivered as a 32-page print and digital publication.',
    'retro',
    'card_based',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Poppins', 'PT Serif', 'Futura']::TEXT[],
    ARRAY['Webflow', 'Adobe Premiere', 'Adobe XD']::TEXT[],
    'premium',
    'students and educators',
    2025,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2025' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2025' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2025' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2025' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2025' LIMIT 1), 22);

-- Project 47: Grid Modernization Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Grid Modernization Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'packaging',
    'energy',
    'Created a packaging system for SunBridge Solar''s Grid Modernization product line. The corporate design used dashboard widgets and tactile finishes to create a premium unboxing experience aligned with young professionals expectations.',
    'corporate',
    'freeform',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Futura', 'Lora']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe InDesign', 'Tableau', 'Canva']::TEXT[],
    'high',
    'young professionals',
    2023,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Grid Modernization Limited Edition Packaging' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Grid Modernization Limited Edition Packaging' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Grid Modernization Limited Edition Packaging' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Grid Modernization Limited Edition Packaging' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Grid Modernization Limited Edition Packaging' LIMIT 1), 18);

-- Project 48: Ember & Oak Home Goods Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Product Packaging',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'packaging',
    'retail',
    'Designed product packaging for Ember & Oak Home Goods that balanced shelf appeal with brand storytelling. The bold design featured custom illustrations, sustainable material choices, and clear product information hierarchy for tech-savvy millennials.',
    'bold',
    'modular',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Futura', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'D3.js', 'Blender']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2017,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Product Packaging' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Product Packaging' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Product Packaging' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Product Packaging' LIMIT 1), 9);

-- Project 49: Sunrise Senior Living Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sunrise Senior Living Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'branding_identity',
    'healthcare',
    'Created a cohesive visual identity for Sunrise Senior Living rooted in their Health Equity mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with industry analysts.',
    'organic',
    'split_screen',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Illustrator', 'Webflow', 'Procreate']::TEXT[],
    'mid',
    'industry analysts',
    2014,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Brand Guidelines & Toolkit' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Brand Guidelines & Toolkit' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Brand Guidelines & Toolkit' LIMIT 1), 50);

-- Project 50: AI & Machine Learning Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'AI & Machine Learning Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Pivotal Data Systems' LIMIT 1),
    'editorial_design',
    'technology',
    'Designed a publication for Pivotal Data Systems focused on AI & Machine Learning, featuring a bold editorial style with infographic sections, process flow diagrams, and thoughtful typography across 32 pages for industry analysts.',
    'bold',
    'modular',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'DM Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe XD']::TEXT[],
    'premium',
    'industry analysts',
    2023,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Editorial Feature' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Editorial Feature' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Editorial Feature' LIMIT 1), 28);

-- Project 51: CoreSteel Industries Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Magazine Layout',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Designed a publication for CoreSteel Industries focused on Safety Standards, featuring a playful editorial style with dashboard widgets, process flow diagrams, and thoughtful typography across 40 pages for internal team members.',
    'playful',
    'card_based',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Avenir', 'Georgia', 'Open Sans']::TEXT[],
    ARRAY['D3.js', 'Sketch', 'Adobe Premiere']::TEXT[],
    'mid',
    'internal team members',
    2008,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Magazine Layout' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Magazine Layout' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Magazine Layout' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Magazine Layout' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Magazine Layout' LIMIT 1), 38);

-- Project 52: Precision Dynamics Corp. Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Designed a publication for Precision Dynamics Corp. focused on Quality Control, featuring a playful editorial style with interactive filters, custom illustrations, and thoughtful typography across 80 pages for parents.',
    'playful',
    'modular',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Oswald', 'Poppins']::TEXT[],
    ARRAY['Canva', 'Blender', 'Adobe InDesign']::TEXT[],
    'low',
    'parents',
    2023,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Magazine Layout' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Magazine Layout' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Magazine Layout' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Magazine Layout' LIMIT 1), 22);

-- Project 53: Meridian Credit Union Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'print_collateral',
    'finance',
    'Produced print collateral for Meridian Credit Union''s Financial Literacy initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive corporate design used data maps to communicate key messages to young professionals.',
    'corporate',
    'grid',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Lora', 'Oswald']::TEXT[],
    ARRAY['Canva', 'Webflow', 'D3.js', 'Figma']::TEXT[],
    'high',
    'young professionals',
    2006,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Brochure & Print Suite' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Brochure & Print Suite' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Brochure & Print Suite' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Brochure & Print Suite' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Brochure & Print Suite' LIMIT 1), 9);

-- Project 54: Finance Annual Review 2025
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Finance Annual Review 2025',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'annual_report',
    'finance',
    'Designed Meridian Credit Union''s flagship annual report with a focus on storytelling through data. The report featured data maps and hero photography across 24 pages, balancing detailed financials with human-interest narratives for C-suite executives.',
    'organic',
    'grid',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Garamond', 'Nunito']::TEXT[],
    ARRAY['Tableau', 'Webflow']::TEXT[],
    'mid',
    'C-suite executives',
    2025,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2025' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2025' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2025' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2025' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Finance Annual Review 2025' LIMIT 1), 7);

-- Project 55: Global Learners Initiative Stakeholder Report 2004
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative Stakeholder Report 2004',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'annual_report',
    'education',
    'Designed Global Learners Initiative''s flagship annual report with a focus on storytelling through data. The report featured dashboard widgets and charts and graphs across 32 pages, balancing detailed financials with human-interest narratives for families.',
    'data_driven',
    'freeform',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Poppins', 'PT Serif']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe Premiere']::TEXT[],
    'mid',
    'families',
    2004,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Stakeholder Report 2004' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Stakeholder Report 2004' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Stakeholder Report 2004' LIMIT 1), 30);

-- Project 56: Cultural Heritage Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cultural Heritage Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'packaging',
    'travel_hospitality',
    'Designed product packaging for Azure Coast Resorts that balanced shelf appeal with brand storytelling. The organic design featured testimonial blocks, sustainable material choices, and clear product information hierarchy for general public.',
    'organic',
    'modular',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['PT Serif', 'IBM Plex Sans']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere', 'Canva']::TEXT[],
    'low',
    'general public',
    2023,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Cultural Heritage Limited Edition Packaging' LIMIT 1), 13);

-- Project 57: Financial Literacy Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Financial Literacy Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'print_collateral',
    'finance',
    'Produced print collateral for Vanguard Municipal Finance''s Financial Literacy initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive elegant design used data maps to communicate key messages to internal team members.',
    'elegant',
    'modular',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Georgia', 'IBM Plex Sans']::TEXT[],
    ARRAY['After Effects', 'Sketch', 'Tableau', 'Figma']::TEXT[],
    'premium',
    'internal team members',
    2022,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Financial Literacy Conference Collateral' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Financial Literacy Conference Collateral' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Financial Literacy Conference Collateral' LIMIT 1), 1);

-- Project 58: Innovation Pipeline Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Innovation Pipeline Conference Collateral',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'print_collateral',
    'manufacturing',
    'Designed a suite of print materials for CoreSteel Industries including brochures, flyers, and event signage. The retro design featured hero photography and process flow diagrams, maintaining brand consistency across all touchpoints for small business owners.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Garamond', 'Lora']::TEXT[],
    ARRAY['Adobe XD', 'After Effects', 'Webflow', 'Tableau']::TEXT[],
    'low',
    'small business owners',
    2022,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Conference Collateral' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Conference Collateral' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Conference Collateral' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Innovation Pipeline Conference Collateral' LIMIT 1), 24);

-- Project 59: Lakewood School District Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Lakewood School District Content Publication',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'editorial_design',
    'education',
    'Created an editorial layout for Lakewood School District''s Lifelong Learning content, blending longform storytelling with data maps and hero photography. The elegant design established a distinctive voice for reaching families.',
    'elegant',
    'split_screen',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Avenir']::TEXT[],
    ARRAY['Tableau', 'Adobe XD', 'Adobe Premiere']::TEXT[],
    'mid',
    'families',
    2006,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Lakewood School District Content Publication' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Lakewood School District Content Publication' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Lakewood School District Content Publication' LIMIT 1), 12);

-- Project 60: CoreSteel Industries Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'web_design',
    'manufacturing',
    'Designed and prototyped a modern web experience for CoreSteel Industries focused on Industry 4.0. The site featured infographic sections, hero photography, and seamless mobile responsiveness. User testing with internal team members informed iterative design refinements.',
    'corporate',
    'split_screen',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Futura', 'Roboto']::TEXT[],
    ARRAY['Sketch', 'After Effects']::TEXT[],
    'low',
    'internal team members',
    2014,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 41);

-- Project 61: Nexon Cloud Solutions Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'packaging',
    'technology',
    'Designed product packaging for Nexon Cloud Solutions that balanced shelf appeal with brand storytelling. The data_driven design featured data maps, sustainable material choices, and clear product information hierarchy for parents.',
    'data_driven',
    'editorial',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Poppins', 'Space Grotesk']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe XD', 'Blender', 'Sketch']::TEXT[],
    'mid',
    'parents',
    2016,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Packaging Redesign' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Packaging Redesign' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Packaging Redesign' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Packaging Redesign' LIMIT 1), 11);

-- Project 62: Azure Coast Resorts Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'editorial_design',
    'travel_hospitality',
    'Created an editorial layout for Azure Coast Resorts''s Luxury Getaway content, blending longform storytelling with pull quotes and testimonial blocks. The minimalist design established a distinctive voice for reaching policy makers.',
    'minimalist',
    'grid',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Helvetica Neue']::TEXT[],
    ARRAY['Sketch', 'Tableau', 'Webflow', 'Canva']::TEXT[],
    'low',
    'policy makers',
    2004,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Whitepaper Series' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Whitepaper Series' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Whitepaper Series' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Whitepaper Series' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Whitepaper Series' LIMIT 1), 12);

-- Project 63: Ember & Oak Home Goods Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'print_collateral',
    'retail',
    'Produced print collateral for Ember & Oak Home Goods''s Product Line initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive retro design used testimonial blocks to communicate key messages to government officials.',
    'retro',
    'card_based',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Open Sans', 'Lora']::TEXT[],
    ARRAY['Figma', 'Sketch']::TEXT[],
    'mid',
    'government officials',
    2014,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Direct Mail Campaign' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Direct Mail Campaign' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Direct Mail Campaign' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Direct Mail Campaign' LIMIT 1), 34);

-- Project 64: Luxury Living Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Luxury Living Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'social_media',
    'real_estate',
    'Developed a social media content system for Cornerstone Development Group spanning Instagram, LinkedIn, and Twitter. The organic visual approach used infographic sections and comparison tables to boost engagement with investors and stakeholders. Included templates, content guidelines, and a 30-day launch calendar.',
    'organic',
    'grid',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'DM Sans']::TEXT[],
    ARRAY['D3.js', 'Tableau', 'Procreate']::TEXT[],
    'low',
    'investors and stakeholders',
    2015,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Luxury Living Social Launch Kit' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Luxury Living Social Launch Kit' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Luxury Living Social Launch Kit' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Luxury Living Social Launch Kit' LIMIT 1), 58);

-- Project 65: How Budget Transparency Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Budget Transparency Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'infographic',
    'government',
    'Created a multi-section infographic breaking down Budget Transparency trends for City of Portland — Parks Dept. The design leveraged full-bleed imagery, testimonial blocks, and custom iconography to make dense data approachable for parents. Delivered in both digital and print-ready formats.',
    'data_driven',
    'single_column',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Futura', 'Avenir', 'Montserrat']::TEXT[],
    ARRAY['Adobe Illustrator', 'After Effects']::TEXT[],
    'high',
    'parents',
    2020,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Budget Transparency Works — Visual Breakdown' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'How Budget Transparency Works — Visual Breakdown' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'How Budget Transparency Works — Visual Breakdown' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'How Budget Transparency Works — Visual Breakdown' LIMIT 1), 13);

-- Project 66: Industry Compliance Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry Compliance Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'print_collateral',
    'legal',
    'Produced print collateral for Thornton & Associates LLP''s Industry Compliance initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive organic design used infographic sections to communicate key messages to retail consumers.',
    'organic',
    'split_screen',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Futura', 'Georgia', 'DM Sans']::TEXT[],
    ARRAY['Adobe XD', 'Blender', 'Procreate', 'Adobe Premiere']::TEXT[],
    'mid',
    'retail consumers',
    2022,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry Compliance Conference Collateral' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Industry Compliance Conference Collateral' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Industry Compliance Conference Collateral' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Industry Compliance Conference Collateral' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Industry Compliance Conference Collateral' LIMIT 1), 6);

-- Project 67: Legal Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Legal Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'infographic',
    'legal',
    'Designed a visually compelling infographic for Cascade Legal Group that distilled complex Case Studies data into an accessible, shareable format. The piece featured interactive filters and full-bleed imagery, using a data_driven aesthetic to engage government officials. Color-coded sections guided readers through key statistics and takeaways.',
    'data_driven',
    'split_screen',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Inter']::TEXT[],
    ARRAY['Adobe XD', 'After Effects', 'Adobe InDesign']::TEXT[],
    'mid',
    'government officials',
    2019,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Legal Impact Report Infographic' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Legal Impact Report Infographic' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Legal Impact Report Infographic' LIMIT 1), 27);

-- Project 68: Silver Screen Distribution Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'data_visualization',
    'entertainment',
    'Designed a comprehensive data visualization suite for Silver Screen Distribution covering Content Creation analytics. The system included icon systems, real-time dashboards, and exportable reports, all styled in a editorial visual language for environmental advocates.',
    'editorial',
    'card_based',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Futura', 'Work Sans', 'Merriweather']::TEXT[],
    ARRAY['Sketch', 'Blender']::TEXT[],
    'high',
    'environmental advocates',
    2008,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 12);

-- Project 69: Precision Dynamics Corp. Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Brand Portal',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'web_design',
    'manufacturing',
    'Led the full redesign of Precision Dynamics Corp.''s web presence, creating a responsive, accessible site with a elegant visual language. Key features included comparison tables, custom illustrations, and an intuitive navigation system. The design prioritized performance and conversion for community members.',
    'elegant',
    'grid',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Archivo']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Sketch']::TEXT[],
    'high',
    'community members',
    2025,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Brand Portal' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Brand Portal' LIMIT 1), 11);

-- Project 70: State of Oregon — DEQ Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'print_collateral',
    'government',
    'Designed a suite of print materials for State of Oregon — DEQ including brochures, flyers, and event signage. The organic design featured data maps and sidebar callouts, maintaining brand consistency across all touchpoints for prospective customers.',
    'organic',
    'asymmetric',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Oswald', 'DM Sans']::TEXT[],
    ARRAY['Sketch', 'Tableau', 'Figma']::TEXT[],
    'mid',
    'prospective customers',
    2003,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Direct Mail Campaign' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Direct Mail Campaign' LIMIT 1), 22);

-- Project 71: CoreSteel Industries Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'data_visualization',
    'manufacturing',
    'Designed a comprehensive data visualization suite for CoreSteel Industries covering Quality Control analytics. The system included sidebar callouts, real-time dashboards, and exportable reports, all styled in a playful visual language for senior citizens.',
    'playful',
    'modular',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Lora', 'Fira Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'Procreate', 'Adobe Illustrator']::TEXT[],
    'low',
    'senior citizens',
    2003,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Analytics Dashboard' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Analytics Dashboard' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Analytics Dashboard' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Analytics Dashboard' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Analytics Dashboard' LIMIT 1), 3);

-- Project 72: Wanderlust Travel Co. Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'presentation',
    'travel_hospitality',
    'Designed a high-impact presentation deck for Wanderlust Travel Co. to communicate Eco Tourism insights to young professionals. The editorial slide design featured sidebar callouts, comparison tables, and clear data storytelling across 40 slides.',
    'editorial',
    'freeform',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Inter', 'Raleway']::TEXT[],
    ARRAY['Adobe Photoshop', 'Canva', 'Sketch']::TEXT[],
    'low',
    'young professionals',
    2015,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Board Meeting Deck' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Board Meeting Deck' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Board Meeting Deck' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Board Meeting Deck' LIMIT 1), 4);

-- Project 73: Cascade Legal Group Stakeholder Report 2010
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Stakeholder Report 2010',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'annual_report',
    'legal',
    'Produced a comprehensive annual report for Cascade Legal Group covering financial performance, program impact, and strategic outlook. The elegant design incorporated stat highlight cards, testimonial blocks, and narrative photography to engage internal team members. Delivered as a 64-page print and digital publication.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Nunito', 'Proxima Nova', 'Archivo']::TEXT[],
    ARRAY['Procreate', 'Blender', 'Tableau']::TEXT[],
    'mid',
    'internal team members',
    2010,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Stakeholder Report 2010' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Stakeholder Report 2010' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Stakeholder Report 2010' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Stakeholder Report 2010' LIMIT 1), 9);

-- Project 74: Fieldstone Brewing Co. Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Fieldstone Brewing Co. Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'packaging',
    'food_beverage',
    'Designed product packaging for Fieldstone Brewing Co. that balanced shelf appeal with brand storytelling. The playful design featured dashboard widgets, sustainable material choices, and clear product information hierarchy for policy makers.',
    'playful',
    'editorial',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Playfair Display', 'Source Serif Pro']::TEXT[],
    ARRAY['Blender', 'After Effects']::TEXT[],
    'high',
    'policy makers',
    2019,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Retail Packaging Suite' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Retail Packaging Suite' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Retail Packaging Suite' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Retail Packaging Suite' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Retail Packaging Suite' LIMIT 1), 13);

-- Project 75: FreshCart Grocers Year in Review 2018
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'FreshCart Grocers Year in Review 2018',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'annual_report',
    'retail',
    'Designed FreshCart Grocers''s flagship annual report with a focus on storytelling through data. The report featured comparison tables and sidebar callouts across 24 pages, balancing detailed financials with human-interest narratives for families.',
    'editorial',
    'grid',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Libre Baskerville', 'Source Serif Pro']::TEXT[],
    ARRAY['After Effects', 'Adobe Illustrator', 'Tableau']::TEXT[],
    'low',
    'families',
    2018,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2018' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2018' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2018' LIMIT 1), 9);

-- Project 76: Cornerstone Development Group Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'packaging',
    'real_estate',
    'Designed product packaging for Cornerstone Development Group that balanced shelf appeal with brand storytelling. The futuristic design featured stat highlight cards, sustainable material choices, and clear product information hierarchy for community members.',
    'futuristic',
    'card_based',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'PT Serif']::TEXT[],
    ARRAY['After Effects', 'D3.js', 'Figma', 'Adobe Photoshop']::TEXT[],
    'mid',
    'community members',
    2010,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Packaging Redesign' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Packaging Redesign' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Packaging Redesign' LIMIT 1), 8);

-- Project 77: Industry 4.0 Explained: An Infographic Guide
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry 4.0 Explained: An Infographic Guide',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'infographic',
    'manufacturing',
    'Created a multi-section infographic breaking down Industry 4.0 trends for CoreSteel Industries. The design leveraged timeline visuals, sidebar callouts, and custom iconography to make dense data approachable for government officials. Delivered in both digital and print-ready formats.',
    'playful',
    'modular',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Nunito', 'DM Sans']::TEXT[],
    ARRAY['Figma', 'Blender', 'D3.js']::TEXT[],
    'mid',
    'government officials',
    2021,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Explained: An Infographic Guide' LIMIT 1), 6);

-- Project 78: STEM Futures Foundation Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'STEM Futures Foundation Rebrand',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'branding_identity',
    'education',
    'Developed a complete brand identity system for STEM Futures Foundation including logo, color palette, typography, and usage guidelines. The elegant direction was crafted to resonate with environmental advocates while differentiating STEM Futures Foundation in the education space. Delivered a comprehensive brand toolkit.',
    'elegant',
    'editorial',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Raleway', 'Merriweather']::TEXT[],
    ARRAY['Tableau', 'Adobe Illustrator', 'Canva']::TEXT[],
    'premium',
    'environmental advocates',
    2004,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Rebrand' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Rebrand' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Rebrand' LIMIT 1), 29);

-- Project 79: Harbor View Realty Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Harbor View Realty Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Created a cohesive visual identity for Harbor View Realty rooted in their Property Portfolio mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with prospective customers.',
    'retro',
    'modular',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Open Sans']::TEXT[],
    ARRAY['Adobe XD', 'Procreate', 'Sketch', 'After Effects']::TEXT[],
    'low',
    'prospective customers',
    2009,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Visual Identity Refresh' LIMIT 1), 9);

-- Project 80: Peak Nutrition Labs Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Created a cohesive visual identity for Peak Nutrition Labs rooted in their Organic Sourcing mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with young professionals.',
    'playful',
    'grid',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Blender']::TEXT[],
    'high',
    'young professionals',
    2020,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Visual Identity Refresh' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Visual Identity Refresh' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Visual Identity Refresh' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Visual Identity Refresh' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Visual Identity Refresh' LIMIT 1), 33);

-- Project 81: How Supply Chain Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Supply Chain Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'infographic',
    'manufacturing',
    'Created a multi-section infographic breaking down Supply Chain trends for Ironridge Manufacturing. The design leveraged charts and graphs, infographic sections, and custom iconography to make dense data approachable for investors and stakeholders. Delivered in both digital and print-ready formats.',
    'futuristic',
    'editorial',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Futura', 'Helvetica Neue']::TEXT[],
    ARRAY['D3.js', 'Canva', 'Tableau', 'Procreate']::TEXT[],
    'mid',
    'investors and stakeholders',
    2005,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 24);

-- Project 82: Pacific Grid Energy E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Grid Energy E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'web_design',
    'energy',
    'Designed and prototyped a modern web experience for Pacific Grid Energy focused on Grid Modernization. The site featured custom illustrations, infographic sections, and seamless mobile responsiveness. User testing with small business owners informed iterative design refinements.',
    'corporate',
    'single_column',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Open Sans']::TEXT[],
    ARRAY['Tableau', 'Adobe Illustrator', 'Webflow']::TEXT[],
    'high',
    'small business owners',
    2014,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy E-commerce Platform' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy E-commerce Platform' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy E-commerce Platform' LIMIT 1), 9);

-- Project 83: Trailhead Adventures Investor Pitch Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Investor Pitch Deck',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'presentation',
    'travel_hospitality',
    'Designed a high-impact presentation deck for Trailhead Adventures to communicate Adventure Travel insights to general public. The retro slide design featured charts and graphs, process flow diagrams, and clear data storytelling across 80 slides.',
    'retro',
    'asymmetric',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Archivo', 'Garamond', 'Avenir']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe XD']::TEXT[],
    'low',
    'general public',
    2010,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Investor Pitch Deck' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Investor Pitch Deck' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Investor Pitch Deck' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Investor Pitch Deck' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Investor Pitch Deck' LIMIT 1), 56);

-- Project 84: Manufacturing Annual Review 2006
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Manufacturing Annual Review 2006',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Designed Ironridge Manufacturing''s flagship annual report with a focus on storytelling through data. The report featured pull quotes and timeline visuals across 48 pages, balancing detailed financials with human-interest narratives for senior citizens.',
    'editorial',
    'freeform',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Oswald', 'Space Grotesk', 'Inter']::TEXT[],
    ARRAY['Sketch', 'Procreate', 'Canva', 'Adobe Premiere']::TEXT[],
    'low',
    'senior citizens',
    2006,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2006' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2006' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2006' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2006' LIMIT 1), 11);

-- Project 85: Nexon Cloud Solutions Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'presentation',
    'technology',
    'Designed a high-impact presentation deck for Nexon Cloud Solutions to communicate Cloud Computing insights to tech-savvy millennials. The playful slide design featured interactive filters, custom illustrations, and clear data storytelling across 24 slides.',
    'playful',
    'card_based',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Lora', 'Roboto']::TEXT[],
    ARRAY['After Effects', 'Canva']::TEXT[],
    'high',
    'tech-savvy millennials',
    2014,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Board Meeting Deck' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Board Meeting Deck' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Board Meeting Deck' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Board Meeting Deck' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Board Meeting Deck' LIMIT 1), 22);

-- Project 86: Sage & Thyme Restaurant Group Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'packaging',
    'food_beverage',
    'Designed product packaging for Sage & Thyme Restaurant Group that balanced shelf appeal with brand storytelling. The playful design featured full-bleed imagery, sustainable material choices, and clear product information hierarchy for prospective customers.',
    'playful',
    'card_based',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Nunito', 'Raleway']::TEXT[],
    ARRAY['Sketch', 'Canva', 'Adobe Illustrator']::TEXT[],
    'mid',
    'prospective customers',
    2007,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Packaging Redesign' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Packaging Redesign' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Packaging Redesign' LIMIT 1), 15);

-- Project 87: Census Data Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Census Data Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'print_collateral',
    'government',
    'Produced print collateral for Maricopa County Public Health''s Census Data initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive data_driven design used icon systems to communicate key messages to tech-savvy millennials.',
    'data_driven',
    'card_based',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Space Grotesk']::TEXT[],
    ARRAY['After Effects', 'Adobe XD']::TEXT[],
    'high',
    'tech-savvy millennials',
    2017,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Census Data Conference Collateral' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Census Data Conference Collateral' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Census Data Conference Collateral' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Census Data Conference Collateral' LIMIT 1), 20);

-- Project 88: Silver Screen Distribution Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'packaging',
    'entertainment',
    'Created a packaging system for Silver Screen Distribution''s Streaming Platform product line. The minimalist design used testimonial blocks and tactile finishes to create a premium unboxing experience aligned with industry analysts expectations.',
    'minimalist',
    'split_screen',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Raleway', 'Avenir']::TEXT[],
    ARRAY['Adobe Premiere', 'After Effects']::TEXT[],
    'mid',
    'industry analysts',
    2017,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 10);

-- Project 89: AI & Machine Learning Publication Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'AI & Machine Learning Publication Design',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'editorial_design',
    'technology',
    'Designed a publication for Nexon Cloud Solutions focused on AI & Machine Learning, featuring a minimalist editorial style with comparison tables, timeline visuals, and thoughtful typography across 48 pages for community members.',
    'minimalist',
    'card_based',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'IBM Plex Sans']::TEXT[],
    ARRAY['Canva', 'Procreate', 'Tableau']::TEXT[],
    'high',
    'community members',
    2016,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Publication Design' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Publication Design' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Publication Design' LIMIT 1), 30);

-- Project 90: Atlas Outdoor Co. Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Dashboard Design',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'data_visualization',
    'retail',
    'Built an interactive data visualization system for Atlas Outdoor Co. to explore Sustainability metrics. The corporate design featured process flow diagrams, sidebar callouts, and filterable views that empowered senior citizens to discover insights independently.',
    'corporate',
    'split_screen',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Proxima Nova']::TEXT[],
    ARRAY['Figma', 'Adobe XD']::TEXT[],
    'high',
    'senior citizens',
    2018,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 24);

-- Project 91: Global Learners Initiative Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'presentation',
    'education',
    'Designed a high-impact presentation deck for Global Learners Initiative to communicate Curriculum Innovation insights to internal team members. The playful slide design featured data maps, icon systems, and clear data storytelling across 80 slides.',
    'playful',
    'editorial',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Inter', 'Proxima Nova', 'Merriweather']::TEXT[],
    ARRAY['Sketch', 'Procreate']::TEXT[],
    'premium',
    'internal team members',
    2015,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Conference Presentation' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Conference Presentation' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Conference Presentation' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Conference Presentation' LIMIT 1), 56);

-- Project 92: Peak Nutrition Labs Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'presentation',
    'food_beverage',
    'Created a polished pitch deck for Peak Nutrition Labs with 64 slides covering strategy, data, and vision. The data_driven design balanced process flow diagrams with clean typography to keep tech-savvy millennials engaged throughout.',
    'data_driven',
    'card_based',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Avenir', 'Lora']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe Photoshop', 'Sketch']::TEXT[],
    'low',
    'tech-savvy millennials',
    2014,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 22);

-- Project 93: Pacific Grid Energy Website Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Grid Energy Website Redesign',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'web_design',
    'energy',
    'Designed and prototyped a modern web experience for Pacific Grid Energy focused on Renewable Transition. The site featured infographic sections, stat highlight cards, and seamless mobile responsiveness. User testing with small business owners informed iterative design refinements.',
    'organic',
    'modular',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Libre Baskerville']::TEXT[],
    ARRAY['Blender', 'Tableau', 'Canva', 'After Effects']::TEXT[],
    'mid',
    'small business owners',
    2008,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 28);

-- Project 94: Grid Modernization Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Grid Modernization Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'social_media',
    'energy',
    'Developed a social media content system for SunBridge Solar spanning Instagram, LinkedIn, and Twitter. The playful visual approach used process flow diagrams and full-bleed imagery to boost engagement with community members. Included templates, content guidelines, and a 30-day launch calendar.',
    'playful',
    'split_screen',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Oswald', 'Georgia']::TEXT[],
    ARRAY['Blender', 'Adobe Photoshop', 'After Effects']::TEXT[],
    'premium',
    'community members',
    2020,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Grid Modernization Social Launch Kit' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Grid Modernization Social Launch Kit' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Grid Modernization Social Launch Kit' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Grid Modernization Social Launch Kit' LIMIT 1), 8);

-- Project 95: Production Efficiency Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Production Efficiency Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Designed a publication for Ironridge Manufacturing focused on Production Efficiency, featuring a retro editorial style with hero photography, interactive filters, and thoughtful typography across 32 pages for general public.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Futura', 'Archivo', 'Poppins']::TEXT[],
    ARRAY['Adobe Premiere', 'Sketch', 'Procreate']::TEXT[],
    'mid',
    'general public',
    2022,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Production Efficiency Editorial Feature' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Production Efficiency Editorial Feature' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Production Efficiency Editorial Feature' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Production Efficiency Editorial Feature' LIMIT 1), 1);

-- Project 96: Azure Coast Resorts Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'branding_identity',
    'travel_hospitality',
    'Developed a complete brand identity system for Azure Coast Resorts including logo, color palette, typography, and usage guidelines. The futuristic direction was crafted to resonate with nonprofit donors while differentiating Azure Coast Resorts in the travel hospitality space. Delivered a comprehensive brand toolkit.',
    'futuristic',
    'split_screen',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Fira Sans']::TEXT[],
    ARRAY['Sketch', 'Adobe Premiere', 'Adobe XD', 'Canva']::TEXT[],
    'mid',
    'nonprofit donors',
    2021,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 44);

-- Project 97: Booking Platform Campaign Identity for Summit Lodge & Spa
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Booking Platform Campaign Identity for Summit Lodge & Spa',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'branding_identity',
    'travel_hospitality',
    'Developed a complete brand identity system for Summit Lodge & Spa including logo, color palette, typography, and usage guidelines. The organic direction was crafted to resonate with senior citizens while differentiating Summit Lodge & Spa in the travel hospitality space. Delivered a comprehensive brand toolkit.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Helvetica Neue']::TEXT[],
    ARRAY['Figma', 'Adobe Illustrator', 'Adobe InDesign']::TEXT[],
    'high',
    'senior citizens',
    2012,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Booking Platform Campaign Identity for Summit Lodge & Spa' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Booking Platform Campaign Identity for Summit Lodge & Spa' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Booking Platform Campaign Identity for Summit Lodge & Spa' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Booking Platform Campaign Identity for Summit Lodge & Spa' LIMIT 1), 33);

-- Project 98: Atlas Outdoor Co. Website Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Website Redesign',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'web_design',
    'retail',
    'Led the full redesign of Atlas Outdoor Co.''s web presence, creating a responsive, accessible site with a minimalist visual language. Key features included dashboard widgets, charts and graphs, and an intuitive navigation system. The design prioritized performance and conversion for students and educators.',
    'minimalist',
    'card_based',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Roboto', 'Lora', 'Garamond']::TEXT[],
    ARRAY['Blender', 'Tableau']::TEXT[],
    'high',
    'students and educators',
    2025,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 18);

-- Project 99: BlueLine Wealth Advisors Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Print Ad Series',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'print_collateral',
    'finance',
    'Produced print collateral for BlueLine Wealth Advisors''s ESG Investing initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive retro design used interactive filters to communicate key messages to parents.',
    'retro',
    'modular',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Tableau', 'Adobe Premiere', 'Adobe InDesign']::TEXT[],
    'mid',
    'parents',
    2015,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Print Ad Series' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Print Ad Series' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Print Ad Series' LIMIT 1), 18);

-- Project 100: CoreSteel Industries Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'web_design',
    'manufacturing',
    'Led the full redesign of CoreSteel Industries''s web presence, creating a responsive, accessible site with a corporate visual language. Key features included custom illustrations, testimonial blocks, and an intuitive navigation system. The design prioritized performance and conversion for C-suite executives.',
    'corporate',
    'modular',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Fira Sans', 'Futura']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Premiere', 'After Effects', 'Sketch']::TEXT[],
    'low',
    'C-suite executives',
    2010,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Interactive Web Platform' LIMIT 1), 26);

-- Project 101: City of Portland — Parks Dept Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'editorial_design',
    'government',
    'Created an editorial layout for City of Portland — Parks Dept''s Infrastructure content, blending longform storytelling with interactive filters and stat highlight cards. The futuristic design established a distinctive voice for reaching C-suite executives.',
    'futuristic',
    'freeform',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'PT Serif']::TEXT[],
    ARRAY['Blender', 'Sketch', 'Tableau']::TEXT[],
    'mid',
    'C-suite executives',
    2018,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Newsletter Redesign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Newsletter Redesign' LIMIT 1), 5);

-- Project 102: GreenShift Renewables Event Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables Event Materials',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'print_collateral',
    'energy',
    'Designed a suite of print materials for GreenShift Renewables including brochures, flyers, and event signage. The futuristic design featured timeline visuals and custom illustrations, maintaining brand consistency across all touchpoints for general public.',
    'futuristic',
    'asymmetric',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Source Serif Pro', 'Futura']::TEXT[],
    ARRAY['Figma', 'Sketch', 'Tableau', 'Adobe Premiere']::TEXT[],
    'high',
    'general public',
    2025,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Event Materials' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Event Materials' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Event Materials' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Event Materials' LIMIT 1), 36);

-- Project 103: Thornton & Associates LLP Stakeholder Report 2011
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Stakeholder Report 2011',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'annual_report',
    'legal',
    'Produced a comprehensive annual report for Thornton & Associates LLP covering financial performance, program impact, and strategic outlook. The minimalist design incorporated timeline visuals, infographic sections, and narrative photography to engage policy makers. Delivered as a 40-page print and digital publication.',
    'minimalist',
    'freeform',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Fira Sans', 'IBM Plex Sans']::TEXT[],
    ARRAY['Canva', 'D3.js']::TEXT[],
    'premium',
    'policy makers',
    2011,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Stakeholder Report 2011' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Stakeholder Report 2011' LIMIT 1), 15);

-- Project 104: Annual EdTech Snapshot
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Annual EdTech Snapshot',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'infographic',
    'education',
    'Designed a visually compelling infographic for Lakewood School District that distilled complex EdTech data into an accessible, shareable format. The piece featured process flow diagrams and hero photography, using a organic aesthetic to engage government officials. Color-coded sections guided readers through key statistics and takeaways.',
    'organic',
    'freeform',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Georgia', 'Space Grotesk', 'Raleway']::TEXT[],
    ARRAY['D3.js', 'Adobe XD']::TEXT[],
    'premium',
    'government officials',
    2007,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Annual EdTech Snapshot' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Annual EdTech Snapshot' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Annual EdTech Snapshot' LIMIT 1), 22);

-- Project 105: FreshCart Grocers Year in Review 2014
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'FreshCart Grocers Year in Review 2014',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'annual_report',
    'retail',
    'Produced a comprehensive annual report for FreshCart Grocers covering financial performance, program impact, and strategic outlook. The editorial design incorporated pull quotes, data maps, and narrative photography to engage retail consumers. Delivered as a 48-page print and digital publication.',
    'editorial',
    'split_screen',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Garamond', 'Work Sans', 'Oswald']::TEXT[],
    ARRAY['Adobe Premiere', 'Blender']::TEXT[],
    'low',
    'retail consumers',
    2014,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2014' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2014' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2014' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Year in Review 2014' LIMIT 1), 46);

-- Project 106: BlueLine Wealth Advisors Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Brand Identity System',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'branding_identity',
    'finance',
    'Created a cohesive visual identity for BlueLine Wealth Advisors rooted in their Digital Banking mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with healthcare professionals.',
    'editorial',
    'single_column',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'IBM Plex Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Illustrator', 'D3.js', 'Webflow', 'Blender']::TEXT[],
    'premium',
    'healthcare professionals',
    2018,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Brand Identity System' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Brand Identity System' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Brand Identity System' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Brand Identity System' LIMIT 1), 60);

-- Project 107: Brand Launch Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Brand Launch Data Explorer',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'data_visualization',
    'retail',
    'Designed a comprehensive data visualization suite for Ember & Oak Home Goods covering Brand Launch analytics. The system included icon systems, real-time dashboards, and exportable reports, all styled in a elegant visual language for students and educators.',
    'elegant',
    'single_column',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Nunito', 'Montserrat']::TEXT[],
    ARRAY['Adobe XD', 'Procreate', 'Adobe Photoshop', 'Canva']::TEXT[],
    'low',
    'students and educators',
    2009,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Brand Launch Data Explorer' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Brand Launch Data Explorer' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Brand Launch Data Explorer' LIMIT 1), 2);

-- Project 108: Arclight AI Annual Report 2019
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Annual Report 2019',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'annual_report',
    'technology',
    'Produced a comprehensive annual report for Arclight AI covering financial performance, program impact, and strategic outlook. The corporate design incorporated comparison tables, custom illustrations, and narrative photography to engage families. Delivered as a 24-page print and digital publication.',
    'corporate',
    'freeform',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Archivo', 'Georgia', 'Open Sans']::TEXT[],
    ARRAY['Canva', 'Adobe Illustrator']::TEXT[],
    'premium',
    'families',
    2019,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Annual Report 2019' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Arclight AI Annual Report 2019' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Arclight AI Annual Report 2019' LIMIT 1), 36);

-- Project 109: Summit Lodge & Spa Annual Report 2023
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Summit Lodge & Spa Annual Report 2023',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'annual_report',
    'travel_hospitality',
    'Designed Summit Lodge & Spa''s flagship annual report with a focus on storytelling through data. The report featured infographic sections and charts and graphs across 64 pages, balancing detailed financials with human-interest narratives for senior citizens.',
    'minimalist',
    'asymmetric',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Poppins', 'Garamond']::TEXT[],
    ARRAY['Webflow', 'Adobe Premiere', 'After Effects']::TEXT[],
    'mid',
    'senior citizens',
    2023,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Annual Report 2023' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Annual Report 2023' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Annual Report 2023' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Annual Report 2023' LIMIT 1), 50);

-- Project 110: Peak Nutrition Labs Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Created an editorial layout for Peak Nutrition Labs''s Farm to Table content, blending longform storytelling with charts and graphs and stat highlight cards. The data_driven design established a distinctive voice for reaching healthcare professionals.',
    'data_driven',
    'single_column',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Nunito', 'Merriweather']::TEXT[],
    ARRAY['Procreate', 'Blender', 'Adobe Photoshop', 'Tableau']::TEXT[],
    'high',
    'healthcare professionals',
    2018,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Newsletter Redesign' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Newsletter Redesign' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Newsletter Redesign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Newsletter Redesign' LIMIT 1), 22);

-- Project 111: Clearpath Diagnostics Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clearpath Diagnostics Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'social_media',
    'healthcare',
    'Developed a social media content system for Clearpath Diagnostics spanning Instagram, LinkedIn, and Twitter. The minimalist visual approach used testimonial blocks and timeline visuals to boost engagement with government officials. Included templates, content guidelines, and a 30-day launch calendar.',
    'minimalist',
    'split_screen',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Archivo', 'PT Serif', 'Georgia']::TEXT[],
    ARRAY['Procreate', 'Adobe Photoshop']::TEXT[],
    'high',
    'government officials',
    2021,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Digital Ad Campaign' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Digital Ad Campaign' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Digital Ad Campaign' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Digital Ad Campaign' LIMIT 1), 27);

-- Project 112: Fieldstone Brewing Co. Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Fieldstone Brewing Co. Rebrand',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Developed a complete brand identity system for Fieldstone Brewing Co. including logo, color palette, typography, and usage guidelines. The organic direction was crafted to resonate with government officials while differentiating Fieldstone Brewing Co. in the food beverage space. Delivered a comprehensive brand toolkit.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Work Sans']::TEXT[],
    ARRAY['Adobe XD', 'D3.js']::TEXT[],
    'mid',
    'government officials',
    2018,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Rebrand' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Rebrand' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Rebrand' LIMIT 1), 15);

-- Project 113: BlueLine Wealth Advisors Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Catalog Design',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'print_collateral',
    'finance',
    'Produced print collateral for BlueLine Wealth Advisors''s Financial Literacy initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive futuristic design used timeline visuals to communicate key messages to industry analysts.',
    'futuristic',
    'asymmetric',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Poppins', 'Proxima Nova', 'Archivo']::TEXT[],
    ARRAY['D3.js', 'Procreate', 'Adobe XD', 'Adobe Photoshop']::TEXT[],
    'high',
    'industry analysts',
    2012,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Catalog Design' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Catalog Design' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Catalog Design' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Catalog Design' LIMIT 1), 15);

-- Project 114: CoreSteel Industries Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Created an editorial layout for CoreSteel Industries''s Quality Control content, blending longform storytelling with dashboard widgets and charts and graphs. The corporate design established a distinctive voice for reaching government officials.',
    'corporate',
    'asymmetric',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Roboto']::TEXT[],
    ARRAY['Tableau', 'Webflow', 'Adobe Premiere', 'Adobe XD']::TEXT[],
    'premium',
    'government officials',
    2007,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Newsletter Redesign' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Newsletter Redesign' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Newsletter Redesign' LIMIT 1), 43);

-- Project 115: NovaCare Therapeutics Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'NovaCare Therapeutics Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'NovaCare Therapeutics' LIMIT 1),
    'presentation',
    'healthcare',
    'Designed a high-impact presentation deck for NovaCare Therapeutics to communicate Preventive Care insights to environmental advocates. The organic slide design featured custom illustrations, comparison tables, and clear data storytelling across 40 slides.',
    'organic',
    'card_based',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Garamond', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe InDesign', 'Canva', 'Adobe Illustrator']::TEXT[],
    'mid',
    'environmental advocates',
    2016,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Board Meeting Deck' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Board Meeting Deck' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Board Meeting Deck' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Board Meeting Deck' LIMIT 1), 2);

-- Project 116: Thornton & Associates LLP Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'infographic',
    'legal',
    'Designed a visually compelling infographic for Thornton & Associates LLP that distilled complex Industry Compliance data into an accessible, shareable format. The piece featured infographic sections and data maps, using a futuristic aesthetic to engage investors and stakeholders. Color-coded sections guided readers through key statistics and takeaways.',
    'futuristic',
    'editorial',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Avenir', 'DM Sans', 'Open Sans']::TEXT[],
    ARRAY['Figma', 'After Effects']::TEXT[],
    'premium',
    'investors and stakeholders',
    2008,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Key Metrics Infographic' LIMIT 1), 7);

-- Project 117: Quantum Mesh Networks Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quantum Mesh Networks Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'social_media',
    'technology',
    'Created a multi-platform social campaign for Quantum Mesh Networks centered on API Ecosystem. The design system featured hero photography, adaptable templates, and motion graphics optimized for each platform. Targeted community members with platform-specific messaging strategies.',
    'bold',
    'split_screen',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Poppins', 'IBM Plex Sans', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva', 'Figma']::TEXT[],
    'low',
    'community members',
    2012,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Media Campaign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Media Campaign' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Media Campaign' LIMIT 1), 14);

-- Project 118: Precision Dynamics Corp. Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'packaging',
    'manufacturing',
    'Created a packaging system for Precision Dynamics Corp.''s Innovation Pipeline product line. The futuristic design used comparison tables and tactile finishes to create a premium unboxing experience aligned with policy makers expectations.',
    'futuristic',
    'single_column',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Roboto', 'Libre Baskerville', 'Proxima Nova']::TEXT[],
    ARRAY['Blender', 'D3.js']::TEXT[],
    'low',
    'policy makers',
    2015,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Packaging Redesign' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Packaging Redesign' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Packaging Redesign' LIMIT 1), 47);

-- Project 119: STEM Futures Foundation Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'STEM Futures Foundation Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'web_design',
    'education',
    'Led the full redesign of STEM Futures Foundation''s web presence, creating a responsive, accessible site with a data_driven visual language. Key features included interactive filters, data maps, and an intuitive navigation system. The design prioritized performance and conversion for environmental advocates.',
    'data_driven',
    'modular',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Inter', 'PT Serif', 'Proxima Nova']::TEXT[],
    ARRAY['D3.js', 'Blender', 'After Effects', 'Adobe Illustrator']::TEXT[],
    'high',
    'environmental advocates',
    2005,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Landing Page Suite' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Landing Page Suite' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Landing Page Suite' LIMIT 1), 59);

-- Project 120: Budget Transparency Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Budget Transparency Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'social_media',
    'government',
    'Created a multi-platform social campaign for Federal Transit Administration centered on Budget Transparency. The design system featured hero photography, adaptable templates, and motion graphics optimized for each platform. Targeted young professionals with platform-specific messaging strategies.',
    'futuristic',
    'split_screen',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Libre Baskerville', 'Space Grotesk']::TEXT[],
    ARRAY['Adobe Photoshop', 'Figma', 'Adobe Premiere', 'Canva']::TEXT[],
    'premium',
    'young professionals',
    2004,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Budget Transparency Social Launch Kit' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Budget Transparency Social Launch Kit' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Budget Transparency Social Launch Kit' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Budget Transparency Social Launch Kit' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Budget Transparency Social Launch Kit' LIMIT 1), 13);

-- Project 121: Ironridge Manufacturing Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'print_collateral',
    'manufacturing',
    'Designed a suite of print materials for Ironridge Manufacturing including brochures, flyers, and event signage. The elegant design featured testimonial blocks and data maps, maintaining brand consistency across all touchpoints for prospective customers.',
    'elegant',
    'card_based',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'PT Serif']::TEXT[],
    ARRAY['Adobe Illustrator', 'Sketch']::TEXT[],
    'low',
    'prospective customers',
    2009,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Print Ad Series' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Print Ad Series' LIMIT 1), 15);

-- Project 122: Real Estate Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Real Estate Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'infographic',
    'real_estate',
    'Designed a visually compelling infographic for Harbor View Realty that distilled complex Community Design data into an accessible, shareable format. The piece featured full-bleed imagery and timeline visuals, using a retro aesthetic to engage students and educators. Color-coded sections guided readers through key statistics and takeaways.',
    'retro',
    'single_column',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Futura', 'Source Serif Pro']::TEXT[],
    ARRAY['Webflow', 'Canva']::TEXT[],
    'high',
    'students and educators',
    2014,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 14);

-- Project 123: Wanderlust Travel Co. Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'branding_identity',
    'travel_hospitality',
    'Created a cohesive visual identity for Wanderlust Travel Co. rooted in their Destination Guide mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with prospective customers.',
    'corporate',
    'single_column',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Futura', 'PT Serif']::TEXT[],
    ARRAY['Adobe Photoshop', 'Sketch']::TEXT[],
    'high',
    'prospective customers',
    2023,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Visual Identity Refresh' LIMIT 1), 14);

-- Project 124: Voices for Justice Stakeholder Report 2011
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Stakeholder Report 2011',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'annual_report',
    'nonprofit',
    'Designed Voices for Justice''s flagship annual report with a focus on storytelling through data. The report featured testimonial blocks and sidebar callouts across 64 pages, balancing detailed financials with human-interest narratives for community members.',
    'organic',
    'asymmetric',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Lora', 'Fira Sans']::TEXT[],
    ARRAY['Figma', 'Procreate']::TEXT[],
    'high',
    'community members',
    2011,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Stakeholder Report 2011' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Voices for Justice Stakeholder Report 2011' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Voices for Justice Stakeholder Report 2011' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Voices for Justice Stakeholder Report 2011' LIMIT 1), 60);

-- Project 125: Industry Compliance Explained: An Infographic Guide
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry Compliance Explained: An Infographic Guide',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'infographic',
    'legal',
    'Created a multi-section infographic breaking down Industry Compliance trends for Cascade Legal Group. The design leveraged timeline visuals, sidebar callouts, and custom iconography to make dense data approachable for parents. Delivered in both digital and print-ready formats.',
    'data_driven',
    'single_column',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Montserrat']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Premiere', 'Sketch']::TEXT[],
    'high',
    'parents',
    2025,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry Compliance Explained: An Infographic Guide' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Industry Compliance Explained: An Infographic Guide' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Industry Compliance Explained: An Infographic Guide' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Industry Compliance Explained: An Infographic Guide' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Industry Compliance Explained: An Infographic Guide' LIMIT 1), 27);

-- Project 126: Community Design Explained: An Infographic Guide
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Community Design Explained: An Infographic Guide',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'infographic',
    'real_estate',
    'Designed a visually compelling infographic for Skyline Properties that distilled complex Community Design data into an accessible, shareable format. The piece featured comparison tables and timeline visuals, using a data_driven aesthetic to engage parents. Color-coded sections guided readers through key statistics and takeaways.',
    'data_driven',
    'asymmetric',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Lora', 'Merriweather']::TEXT[],
    ARRAY['After Effects', 'D3.js', 'Canva']::TEXT[],
    'premium',
    'parents',
    2009,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Community Design Explained: An Infographic Guide' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'Community Design Explained: An Infographic Guide' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Community Design Explained: An Infographic Guide' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Community Design Explained: An Infographic Guide' LIMIT 1), 8);

-- Project 127: Global Learners Initiative E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'web_design',
    'education',
    'Led the full redesign of Global Learners Initiative''s web presence, creating a responsive, accessible site with a data_driven visual language. Key features included sidebar callouts, testimonial blocks, and an intuitive navigation system. The design prioritized performance and conversion for industry analysts.',
    'data_driven',
    'editorial',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Inter', 'Playfair Display']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Premiere', 'Adobe XD', 'Figma']::TEXT[],
    'premium',
    'industry analysts',
    2005,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative E-commerce Platform' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative E-commerce Platform' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative E-commerce Platform' LIMIT 1), 11);

-- Project 128: Wind Energy Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wind Energy Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'editorial_design',
    'energy',
    'Created an editorial layout for Pacific Grid Energy''s Wind Energy content, blending longform storytelling with timeline visuals and dashboard widgets. The elegant design established a distinctive voice for reaching parents.',
    'elegant',
    'editorial',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Nunito', 'Avenir', 'Lora']::TEXT[],
    ARRAY['Canva', 'Adobe XD', 'Adobe Photoshop']::TEXT[],
    'low',
    'parents',
    2004,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wind Energy Editorial Feature' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Wind Energy Editorial Feature' LIMIT 1), 4);

-- Project 129: Customer Experience By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Customer Experience By the Numbers',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'infographic',
    'retail',
    'Designed a visually compelling infographic for Ember & Oak Home Goods that distilled complex Customer Experience data into an accessible, shareable format. The piece featured stat highlight cards and full-bleed imagery, using a futuristic aesthetic to engage general public. Color-coded sections guided readers through key statistics and takeaways.',
    'futuristic',
    'modular',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Montserrat', 'Archivo']::TEXT[],
    ARRAY['Canva', 'Adobe Premiere', 'Adobe InDesign']::TEXT[],
    'low',
    'general public',
    2022,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Customer Experience By the Numbers' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Customer Experience By the Numbers' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Customer Experience By the Numbers' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Customer Experience By the Numbers' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Customer Experience By the Numbers' LIMIT 1), 11);

-- Project 130: 2011 Impact Report — Ironridge Manufacturing
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2011 Impact Report — Ironridge Manufacturing',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Produced a comprehensive annual report for Ironridge Manufacturing covering financial performance, program impact, and strategic outlook. The organic design incorporated sidebar callouts, process flow diagrams, and narrative photography to engage industry analysts. Delivered as a 24-page print and digital publication.',
    'organic',
    'single_column',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Archivo', 'Work Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Canva']::TEXT[],
    'mid',
    'industry analysts',
    2011,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2011 Impact Report — Ironridge Manufacturing' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Ironridge Manufacturing' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Ironridge Manufacturing' LIMIT 1), 33);

-- Project 131: Cascade Legal Group Year in Review 2012
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Year in Review 2012',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'annual_report',
    'legal',
    'Produced a comprehensive annual report for Cascade Legal Group covering financial performance, program impact, and strategic outlook. The elegant design incorporated process flow diagrams, interactive filters, and narrative photography to engage students and educators. Delivered as a 24-page print and digital publication.',
    'elegant',
    'single_column',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'PT Serif', 'Avenir']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'premium',
    'students and educators',
    2012,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Year in Review 2012' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Year in Review 2012' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Year in Review 2012' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Year in Review 2012' LIMIT 1), 45);

-- Project 132: FreshCart Grocers Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'FreshCart Grocers Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'print_collateral',
    'retail',
    'Produced print collateral for FreshCart Grocers''s Holiday Campaign initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive playful design used interactive filters to communicate key messages to prospective customers.',
    'playful',
    'asymmetric',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Lora']::TEXT[],
    ARRAY['Adobe Premiere', 'Figma', 'Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'premium',
    'prospective customers',
    2015,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Direct Mail Campaign' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Direct Mail Campaign' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Direct Mail Campaign' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Direct Mail Campaign' LIMIT 1), 21);

-- Project 133: Government Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Government Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'data_visualization',
    'government',
    'Built an interactive data visualization system for City of Portland — Parks Dept to explore Civic Engagement metrics. The minimalist design featured testimonial blocks, data maps, and filterable views that empowered senior citizens to discover insights independently.',
    'minimalist',
    'asymmetric',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Nunito', 'Avenir']::TEXT[],
    ARRAY['Adobe Photoshop', 'Canva', 'Adobe XD', 'Tableau']::TEXT[],
    'high',
    'senior citizens',
    2023,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Government Benchmark Dashboard' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Government Benchmark Dashboard' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Government Benchmark Dashboard' LIMIT 1), 29);

-- Project 134: STEM Futures Foundation Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'STEM Futures Foundation Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'print_collateral',
    'education',
    'Designed a suite of print materials for STEM Futures Foundation including brochures, flyers, and event signage. The elegant design featured dashboard widgets and timeline visuals, maintaining brand consistency across all touchpoints for government officials.',
    'elegant',
    'grid',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Garamond', 'Source Serif Pro']::TEXT[],
    ARRAY['Webflow', 'Canva']::TEXT[],
    'mid',
    'government officials',
    2020,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Brochure & Print Suite' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Brochure & Print Suite' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Brochure & Print Suite' LIMIT 1), 16);

-- Project 135: SunBridge Solar Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SunBridge Solar Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'packaging',
    'energy',
    'Created a packaging system for SunBridge Solar''s Wind Energy product line. The corporate design used pull quotes and tactile finishes to create a premium unboxing experience aligned with senior citizens expectations.',
    'corporate',
    'split_screen',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Avenir', 'IBM Plex Sans']::TEXT[],
    ARRAY['Canva', 'Adobe Illustrator', 'Procreate', 'Tableau']::TEXT[],
    'high',
    'senior citizens',
    2014,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sustainable Packaging Design' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sustainable Packaging Design' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sustainable Packaging Design' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sustainable Packaging Design' LIMIT 1), 17);

-- Project 136: BlueLine Wealth Advisors Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'social_media',
    'finance',
    'Created a multi-platform social campaign for BlueLine Wealth Advisors centered on Fintech Innovation. The design system featured process flow diagrams, adaptable templates, and motion graphics optimized for each platform. Targeted investors and stakeholders with platform-specific messaging strategies.',
    'data_driven',
    'single_column',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Oswald', 'Nunito']::TEXT[],
    ARRAY['Tableau', 'Webflow']::TEXT[],
    'mid',
    'investors and stakeholders',
    2006,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Digital Ad Campaign' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Digital Ad Campaign' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Digital Ad Campaign' LIMIT 1), 59);

-- Project 137: GreenShift Renewables E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'web_design',
    'energy',
    'Designed and prototyped a modern web experience for GreenShift Renewables focused on Clean Tech. The site featured comparison tables, stat highlight cards, and seamless mobile responsiveness. User testing with parents informed iterative design refinements.',
    'data_driven',
    'editorial',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Raleway', 'Libre Baskerville']::TEXT[],
    ARRAY['Sketch', 'Canva', 'Adobe InDesign']::TEXT[],
    'mid',
    'parents',
    2006,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables E-commerce Platform' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables E-commerce Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables E-commerce Platform' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables E-commerce Platform' LIMIT 1), 19);

-- Project 138: Cascade Legal Group Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'web_design',
    'legal',
    'Led the full redesign of Cascade Legal Group''s web presence, creating a responsive, accessible site with a editorial visual language. Key features included custom illustrations, sidebar callouts, and an intuitive navigation system. The design prioritized performance and conversion for environmental advocates.',
    'editorial',
    'freeform',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Montserrat']::TEXT[],
    ARRAY['After Effects', 'Adobe InDesign']::TEXT[],
    'low',
    'environmental advocates',
    2014,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 20);

-- Project 139: Customer Experience Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Customer Experience Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'data_visualization',
    'retail',
    'Designed a comprehensive data visualization suite for FreshCart Grocers covering Customer Experience analytics. The system included pull quotes, real-time dashboards, and exportable reports, all styled in a bold visual language for nonprofit donors.',
    'bold',
    'single_column',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Archivo', 'Playfair Display', 'Inter']::TEXT[],
    ARRAY['Sketch', 'Adobe Photoshop', 'D3.js', 'Canva']::TEXT[],
    'premium',
    'nonprofit donors',
    2010,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Customer Experience Interactive Data Portal' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Customer Experience Interactive Data Portal' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Customer Experience Interactive Data Portal' LIMIT 1), 13);

-- Project 140: Cascade Legal Group Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'packaging',
    'legal',
    'Created a packaging system for Cascade Legal Group''s Case Studies product line. The bold design used custom illustrations and tactile finishes to create a premium unboxing experience aligned with families expectations.',
    'bold',
    'card_based',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe InDesign', 'Figma', 'Webflow', 'Adobe XD']::TEXT[],
    'low',
    'families',
    2016,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Sustainable Packaging Design' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Sustainable Packaging Design' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Sustainable Packaging Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Sustainable Packaging Design' LIMIT 1), 13);

-- Project 141: Meridian Credit Union Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'print_collateral',
    'finance',
    'Produced print collateral for Meridian Credit Union''s Retirement Planning initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive corporate design used pull quotes to communicate key messages to retail consumers.',
    'corporate',
    'single_column',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Avenir']::TEXT[],
    ARRAY['Canva', 'Adobe Photoshop', 'Tableau']::TEXT[],
    'high',
    'retail consumers',
    2013,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Print Ad Series' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Print Ad Series' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Print Ad Series' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Print Ad Series' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Print Ad Series' LIMIT 1), 54);

-- Project 142: Habitat Renewal Coalition Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Habitat Renewal Coalition Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Developed a complete brand identity system for Habitat Renewal Coalition including logo, color palette, typography, and usage guidelines. The retro direction was crafted to resonate with healthcare professionals while differentiating Habitat Renewal Coalition in the nonprofit space. Delivered a comprehensive brand toolkit.',
    'retro',
    'asymmetric',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Avenir', 'Nunito']::TEXT[],
    ARRAY['Adobe Photoshop', 'Blender']::TEXT[],
    'low',
    'healthcare professionals',
    2008,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Visual Identity Refresh' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Visual Identity Refresh' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Visual Identity Refresh' LIMIT 1), 1);

-- Project 143: Quantum Mesh Networks Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quantum Mesh Networks Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'social_media',
    'technology',
    'Developed a social media content system for Quantum Mesh Networks spanning Instagram, LinkedIn, and Twitter. The editorial visual approach used data maps and testimonial blocks to boost engagement with nonprofit donors. Included templates, content guidelines, and a 30-day launch calendar.',
    'editorial',
    'asymmetric',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Avenir']::TEXT[],
    ARRAY['Blender', 'Figma']::TEXT[],
    'mid',
    'nonprofit donors',
    2011,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Content Toolkit' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Content Toolkit' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Social Content Toolkit' LIMIT 1), 20);

-- Project 144: Budget Transparency Keynote Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Budget Transparency Keynote Deck',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'presentation',
    'government',
    'Designed a high-impact presentation deck for State of Oregon — DEQ to communicate Budget Transparency insights to environmental advocates. The minimalist slide design featured comparison tables, custom illustrations, and clear data storytelling across 24 slides.',
    'minimalist',
    'split_screen',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Avenir']::TEXT[],
    ARRAY['Tableau', 'Adobe XD', 'Figma', 'Blender']::TEXT[],
    'mid',
    'environmental advocates',
    2020,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Budget Transparency Keynote Deck' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Budget Transparency Keynote Deck' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Budget Transparency Keynote Deck' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Budget Transparency Keynote Deck' LIMIT 1), 49);

-- Project 145: TerraCode Labs E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'TerraCode Labs E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'TerraCode Labs' LIMIT 1),
    'web_design',
    'technology',
    'Designed and prototyped a modern web experience for TerraCode Labs focused on Cloud Computing. The site featured stat highlight cards, full-bleed imagery, and seamless mobile responsiveness. User testing with environmental advocates informed iterative design refinements.',
    'corporate',
    'modular',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Avenir']::TEXT[],
    ARRAY['Sketch', 'Adobe Illustrator']::TEXT[],
    'mid',
    'environmental advocates',
    2006,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'TerraCode Labs E-commerce Platform' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'TerraCode Labs E-commerce Platform' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'TerraCode Labs E-commerce Platform' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'TerraCode Labs E-commerce Platform' LIMIT 1), 11);

-- Project 146: Cornerstone Development Group Event Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Event Materials',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'print_collateral',
    'real_estate',
    'Produced print collateral for Cornerstone Development Group''s Sustainability initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive data_driven design used comparison tables to communicate key messages to industry analysts.',
    'data_driven',
    'modular',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Open Sans', 'PT Serif', 'Proxima Nova']::TEXT[],
    ARRAY['Tableau', 'After Effects', 'Sketch', 'Adobe XD']::TEXT[],
    'mid',
    'industry analysts',
    2021,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Event Materials' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Event Materials' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Event Materials' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Event Materials' LIMIT 1), 8);

-- Project 147: GreenShift Renewables Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables Rebrand',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'branding_identity',
    'energy',
    'Created a cohesive visual identity for GreenShift Renewables rooted in their Renewable Transition mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with policy makers.',
    'elegant',
    'asymmetric',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Archivo']::TEXT[],
    ARRAY['Blender', 'Webflow', 'Canva']::TEXT[],
    'low',
    'policy makers',
    2003,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Rebrand' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Rebrand' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Rebrand' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Rebrand' LIMIT 1), 8);

-- Project 148: Safety Standards Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Safety Standards Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'packaging',
    'manufacturing',
    'Designed product packaging for CoreSteel Industries that balanced shelf appeal with brand storytelling. The playful design featured full-bleed imagery, sustainable material choices, and clear product information hierarchy for prospective customers.',
    'playful',
    'split_screen',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Oswald', 'Work Sans']::TEXT[],
    ARRAY['Adobe Illustrator', 'Sketch']::TEXT[],
    'mid',
    'prospective customers',
    2008,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Safety Standards Limited Edition Packaging' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Safety Standards Limited Edition Packaging' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Safety Standards Limited Edition Packaging' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Safety Standards Limited Edition Packaging' LIMIT 1), 9);

-- Project 149: Vanguard Municipal Finance Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Product Packaging',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'packaging',
    'finance',
    'Designed product packaging for Vanguard Municipal Finance that balanced shelf appeal with brand storytelling. The elegant design featured infographic sections, sustainable material choices, and clear product information hierarchy for policy makers.',
    'elegant',
    'modular',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Open Sans', 'Fira Sans']::TEXT[],
    ARRAY['Adobe XD', 'Webflow', 'Canva']::TEXT[],
    'mid',
    'policy makers',
    2015,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Product Packaging' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Product Packaging' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Product Packaging' LIMIT 1), 8);

-- Project 150: Nexon Cloud Solutions Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'print_collateral',
    'technology',
    'Designed a suite of print materials for Nexon Cloud Solutions including brochures, flyers, and event signage. The data_driven design featured comparison tables and icon systems, maintaining brand consistency across all touchpoints for prospective customers.',
    'data_driven',
    'asymmetric',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Nunito']::TEXT[],
    ARRAY['Adobe Photoshop', 'Figma']::TEXT[],
    'mid',
    'prospective customers',
    2016,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Direct Mail Campaign' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Direct Mail Campaign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Direct Mail Campaign' LIMIT 1), 15);

-- Project 151: Product Launch Publication Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Product Launch Publication Design',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Created an editorial layout for Peak Nutrition Labs''s Product Launch content, blending longform storytelling with hero photography and data maps. The minimalist design established a distinctive voice for reaching families.',
    'minimalist',
    'modular',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Garamond']::TEXT[],
    ARRAY['D3.js', 'Tableau']::TEXT[],
    'low',
    'families',
    2009,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Product Launch Publication Design' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Product Launch Publication Design' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Product Launch Publication Design' LIMIT 1), 4);

-- Project 152: Wanderlust Travel Co. E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'web_design',
    'travel_hospitality',
    'Designed and prototyped a modern web experience for Wanderlust Travel Co. focused on Guest Experience. The site featured interactive filters, hero photography, and seamless mobile responsiveness. User testing with healthcare professionals informed iterative design refinements.',
    'data_driven',
    'asymmetric',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Futura', 'Archivo']::TEXT[],
    ARRAY['Procreate', 'Tableau']::TEXT[],
    'mid',
    'healthcare professionals',
    2018,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. E-commerce Platform' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. E-commerce Platform' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. E-commerce Platform' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. E-commerce Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. E-commerce Platform' LIMIT 1), 51);

-- Project 153: The Literacy Project Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The Literacy Project Dashboard Design',
    (SELECT id FROM clients WHERE name = 'The Literacy Project' LIMIT 1),
    'data_visualization',
    'nonprofit',
    'Built an interactive data visualization system for The Literacy Project to explore Youth Development metrics. The corporate design featured testimonial blocks, sidebar callouts, and filterable views that empowered investors and stakeholders to discover insights independently.',
    'corporate',
    'asymmetric',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Garamond', 'Fira Sans']::TEXT[],
    ARRAY['Blender', 'Figma']::TEXT[],
    'high',
    'investors and stakeholders',
    2022,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The Literacy Project Dashboard Design' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'The Literacy Project Dashboard Design' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'The Literacy Project Dashboard Design' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'The Literacy Project Dashboard Design' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'The Literacy Project Dashboard Design' LIMIT 1), 50);

-- Project 154: Nutrition Facts Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nutrition Facts Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'social_media',
    'food_beverage',
    'Developed a social media content system for Peak Nutrition Labs spanning Instagram, LinkedIn, and Twitter. The futuristic visual approach used comparison tables and interactive filters to boost engagement with small business owners. Included templates, content guidelines, and a 30-day launch calendar.',
    'futuristic',
    'single_column',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Raleway', 'DM Sans', 'Garamond']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere', 'After Effects']::TEXT[],
    'premium',
    'small business owners',
    2020,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nutrition Facts Social Launch Kit' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Nutrition Facts Social Launch Kit' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Nutrition Facts Social Launch Kit' LIMIT 1), 17);

-- Project 155: AI & Machine Learning Keynote Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'AI & Machine Learning Keynote Deck',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'presentation',
    'technology',
    'Designed a high-impact presentation deck for Quantum Mesh Networks to communicate AI & Machine Learning insights to healthcare professionals. The minimalist slide design featured icon systems, full-bleed imagery, and clear data storytelling across 80 slides.',
    'minimalist',
    'asymmetric',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Roboto', 'Futura', 'Playfair Display']::TEXT[],
    ARRAY['After Effects', 'Webflow', 'D3.js', 'Tableau']::TEXT[],
    'mid',
    'healthcare professionals',
    2018,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Keynote Deck' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Keynote Deck' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Keynote Deck' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Keynote Deck' LIMIT 1), 11);

-- Project 156: Coastal Harvest Seafood Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'web_design',
    'food_beverage',
    'Led the full redesign of Coastal Harvest Seafood''s web presence, creating a responsive, accessible site with a minimalist visual language. Key features included data maps, dashboard widgets, and an intuitive navigation system. The design prioritized performance and conversion for community members.',
    'minimalist',
    'freeform',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Avenir', 'Libre Baskerville', 'Garamond']::TEXT[],
    ARRAY['Blender', 'Figma']::TEXT[],
    'mid',
    'community members',
    2023,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Interactive Web Platform' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Interactive Web Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Interactive Web Platform' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Interactive Web Platform' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Interactive Web Platform' LIMIT 1), 29);

-- Project 157: Voices for Justice Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'web_design',
    'nonprofit',
    'Designed and prototyped a modern web experience for Voices for Justice focused on Donor Engagement. The site featured dashboard widgets, sidebar callouts, and seamless mobile responsiveness. User testing with parents informed iterative design refinements.',
    'futuristic',
    'asymmetric',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Source Serif Pro', 'Libre Baskerville']::TEXT[],
    ARRAY['Canva', 'Procreate', 'Adobe Photoshop', 'Adobe XD']::TEXT[],
    'low',
    'parents',
    2019,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Landing Page Suite' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Voices for Justice Landing Page Suite' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Voices for Justice Landing Page Suite' LIMIT 1), 8);

-- Project 158: Ironridge Manufacturing Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'print_collateral',
    'manufacturing',
    'Designed a suite of print materials for Ironridge Manufacturing including brochures, flyers, and event signage. The futuristic design featured hero photography and data maps, maintaining brand consistency across all touchpoints for healthcare professionals.',
    'futuristic',
    'freeform',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Roboto', 'Archivo', 'Poppins']::TEXT[],
    ARRAY['Adobe XD', 'Webflow', 'Adobe Photoshop']::TEXT[],
    'low',
    'healthcare professionals',
    2025,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Direct Mail Campaign' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Direct Mail Campaign' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Direct Mail Campaign' LIMIT 1), 4);

-- Project 159: Trailhead Adventures Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'editorial_design',
    'travel_hospitality',
    'Designed a publication for Trailhead Adventures focused on Destination Guide, featuring a retro editorial style with hero photography, stat highlight cards, and thoughtful typography across 80 pages for environmental advocates.',
    'retro',
    'editorial',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Futura', 'Space Grotesk', 'Work Sans']::TEXT[],
    ARRAY['Webflow', 'Sketch', 'Canva', 'Adobe InDesign']::TEXT[],
    'low',
    'environmental advocates',
    2006,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Magazine Layout' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Magazine Layout' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Magazine Layout' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Magazine Layout' LIMIT 1), 23);

-- Project 160: Thornton & Associates LLP Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Product Packaging',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'packaging',
    'legal',
    'Designed product packaging for Thornton & Associates LLP that balanced shelf appeal with brand storytelling. The organic design featured sidebar callouts, sustainable material choices, and clear product information hierarchy for policy makers.',
    'organic',
    'freeform',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Futura', 'Raleway', 'Poppins']::TEXT[],
    ARRAY['Sketch', 'Adobe Photoshop', 'Webflow', 'Canva']::TEXT[],
    'low',
    'policy makers',
    2003,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Product Packaging' LIMIT 1), 35);

-- Project 161: CoreSteel Industries Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Brand Identity System',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'branding_identity',
    'manufacturing',
    'Developed a complete brand identity system for CoreSteel Industries including logo, color palette, typography, and usage guidelines. The editorial direction was crafted to resonate with prospective customers while differentiating CoreSteel Industries in the manufacturing space. Delivered a comprehensive brand toolkit.',
    'editorial',
    'card_based',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Lora', 'Helvetica Neue']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Adobe XD', 'Canva']::TEXT[],
    'premium',
    'prospective customers',
    2009,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Brand Identity System' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Brand Identity System' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Brand Identity System' LIMIT 1), 53);

-- Project 162: Cornerstone Development Group Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'print_collateral',
    'real_estate',
    'Produced print collateral for Cornerstone Development Group''s Sustainability initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive elegant design used timeline visuals to communicate key messages to C-suite executives.',
    'elegant',
    'freeform',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Avenir', 'Futura', 'Merriweather']::TEXT[],
    ARRAY['D3.js', 'Tableau', 'Procreate', 'Blender']::TEXT[],
    'high',
    'C-suite executives',
    2020,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Direct Mail Campaign' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Direct Mail Campaign' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Direct Mail Campaign' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Direct Mail Campaign' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Direct Mail Campaign' LIMIT 1), 27);

-- Project 163: Summit Lodge & Spa Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Summit Lodge & Spa Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'web_design',
    'travel_hospitality',
    'Led the full redesign of Summit Lodge & Spa''s web presence, creating a responsive, accessible site with a retro visual language. Key features included dashboard widgets, stat highlight cards, and an intuitive navigation system. The design prioritized performance and conversion for government officials.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Raleway', 'Futura']::TEXT[],
    ARRAY['After Effects', 'Sketch', 'Canva', 'Adobe XD']::TEXT[],
    'premium',
    'government officials',
    2005,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Landing Page Suite' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Landing Page Suite' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Landing Page Suite' LIMIT 1), 3);

-- Project 164: City of Portland — Parks Dept Annual Report 2020
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Annual Report 2020',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'annual_report',
    'government',
    'Produced a comprehensive annual report for City of Portland — Parks Dept covering financial performance, program impact, and strategic outlook. The bold design incorporated icon systems, pull quotes, and narrative photography to engage parents. Delivered as a 32-page print and digital publication.',
    'bold',
    'asymmetric',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Futura', 'Lora', 'Roboto']::TEXT[],
    ARRAY['After Effects', 'Sketch', 'Adobe Photoshop', 'Adobe Premiere']::TEXT[],
    'premium',
    'parents',
    2020,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Annual Report 2020' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Annual Report 2020' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Annual Report 2020' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Annual Report 2020' LIMIT 1), 59);

-- Project 165: GreenShift Renewables KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'data_visualization',
    'energy',
    'Designed a comprehensive data visualization suite for GreenShift Renewables covering Sustainability Report analytics. The system included dashboard widgets, real-time dashboards, and exportable reports, all styled in a playful visual language for parents.',
    'playful',
    'editorial',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Work Sans', 'Archivo']::TEXT[],
    ARRAY['Procreate', 'Adobe Illustrator']::TEXT[],
    'premium',
    'parents',
    2023,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables KPI Visualization System' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables KPI Visualization System' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables KPI Visualization System' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables KPI Visualization System' LIMIT 1), 50);

-- Project 166: Thornton & Associates LLP Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Thornton & Associates LLP covering Client Services analytics. The system included testimonial blocks, real-time dashboards, and exportable reports, all styled in a organic visual language for environmental advocates.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Archivo', 'Nunito', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Premiere']::TEXT[],
    'low',
    'environmental advocates',
    2016,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Analytics Dashboard' LIMIT 1), 7);

-- Project 167: The Literacy Project Annual Report 2025
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The Literacy Project Annual Report 2025',
    (SELECT id FROM clients WHERE name = 'The Literacy Project' LIMIT 1),
    'annual_report',
    'nonprofit',
    'Designed The Literacy Project''s flagship annual report with a focus on storytelling through data. The report featured hero photography and data maps across 64 pages, balancing detailed financials with human-interest narratives for senior citizens.',
    'organic',
    'split_screen',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Archivo', 'Inter']::TEXT[],
    ARRAY['Adobe Illustrator', 'Sketch']::TEXT[],
    'high',
    'senior citizens',
    2025,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The Literacy Project Annual Report 2025' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'The Literacy Project Annual Report 2025' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'The Literacy Project Annual Report 2025' LIMIT 1), 18);

-- Project 168: Community Impact Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Community Impact Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Urban Roots Food Bank' LIMIT 1),
    'data_visualization',
    'nonprofit',
    'Designed a comprehensive data visualization suite for Urban Roots Food Bank covering Community Impact analytics. The system included pull quotes, real-time dashboards, and exportable reports, all styled in a retro visual language for community members.',
    'retro',
    'split_screen',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Poppins', 'Merriweather', 'Raleway']::TEXT[],
    ARRAY['Webflow', 'Figma', 'Adobe Illustrator']::TEXT[],
    'low',
    'community members',
    2013,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Community Impact Interactive Data Portal' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Community Impact Interactive Data Portal' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Community Impact Interactive Data Portal' LIMIT 1), 27);

-- Project 169: Ember Studios Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember Studios Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Ember Studios' LIMIT 1),
    'social_media',
    'entertainment',
    'Developed a social media content system for Ember Studios spanning Instagram, LinkedIn, and Twitter. The retro visual approach used interactive filters and timeline visuals to boost engagement with prospective customers. Included templates, content guidelines, and a 30-day launch calendar.',
    'retro',
    'editorial',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Playfair Display']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Illustrator', 'Webflow', 'Tableau']::TEXT[],
    'low',
    'prospective customers',
    2020,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember Studios Digital Ad Campaign' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Ember Studios Digital Ad Campaign' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Ember Studios Digital Ad Campaign' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Ember Studios Digital Ad Campaign' LIMIT 1), 19);

-- Project 170: 2005 Impact Report — FreshCart Grocers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2005 Impact Report — FreshCart Grocers',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'annual_report',
    'retail',
    'Designed FreshCart Grocers''s flagship annual report with a focus on storytelling through data. The report featured pull quotes and timeline visuals across 80 pages, balancing detailed financials with human-interest narratives for general public.',
    'corporate',
    'editorial',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Archivo']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva']::TEXT[],
    'premium',
    'general public',
    2005,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2005 Impact Report — FreshCart Grocers' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = '2005 Impact Report — FreshCart Grocers' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = '2005 Impact Report — FreshCart Grocers' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = '2005 Impact Report — FreshCart Grocers' LIMIT 1), 27);

-- Project 171: Thornton & Associates LLP KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Thornton & Associates LLP covering Industry Compliance analytics. The system included dashboard widgets, real-time dashboards, and exportable reports, all styled in a editorial visual language for senior citizens.',
    'editorial',
    'modular',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Futura', 'Archivo', 'Poppins']::TEXT[],
    ARRAY['Blender', 'Adobe InDesign']::TEXT[],
    'premium',
    'senior citizens',
    2009,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 58);

-- Project 172: Silver Screen Distribution Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'packaging',
    'entertainment',
    'Designed product packaging for Silver Screen Distribution that balanced shelf appeal with brand storytelling. The futuristic design featured timeline visuals, sustainable material choices, and clear product information hierarchy for senior citizens.',
    'futuristic',
    'single_column',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Fira Sans', 'Avenir']::TEXT[],
    ARRAY['Figma', 'Adobe InDesign']::TEXT[],
    'premium',
    'senior citizens',
    2020,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 17);

-- Project 173: NovaCare Therapeutics Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'NovaCare Therapeutics Catalog Design',
    (SELECT id FROM clients WHERE name = 'NovaCare Therapeutics' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Designed a suite of print materials for NovaCare Therapeutics including brochures, flyers, and event signage. The corporate design featured hero photography and infographic sections, maintaining brand consistency across all touchpoints for internal team members.',
    'corporate',
    'asymmetric',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Archivo', 'Georgia', 'Nunito']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere', 'Figma']::TEXT[],
    'low',
    'internal team members',
    2009,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Catalog Design' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Catalog Design' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Catalog Design' LIMIT 1), 19);

-- Project 174: Sustainability Report Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sustainability Report Workshop Materials',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'presentation',
    'energy',
    'Created a polished pitch deck for SunBridge Solar with 64 slides covering strategy, data, and vision. The corporate design balanced testimonial blocks with clean typography to keep students and educators engaged throughout.',
    'corporate',
    'single_column',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Avenir', 'Source Serif Pro', 'Proxima Nova']::TEXT[],
    ARRAY['After Effects', 'Adobe Illustrator', 'Adobe InDesign', 'Adobe Premiere']::TEXT[],
    'mid',
    'students and educators',
    2021,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sustainability Report Workshop Materials' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Sustainability Report Workshop Materials' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Sustainability Report Workshop Materials' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Sustainability Report Workshop Materials' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Sustainability Report Workshop Materials' LIMIT 1), 21);

-- Project 175: Azure Coast Resorts Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'print_collateral',
    'travel_hospitality',
    'Produced print collateral for Azure Coast Resorts''s Cultural Heritage initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive data_driven design used comparison tables to communicate key messages to internal team members.',
    'data_driven',
    'single_column',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Georgia', 'Playfair Display']::TEXT[],
    ARRAY['D3.js', 'Figma', 'Blender']::TEXT[],
    'mid',
    'internal team members',
    2015,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Direct Mail Campaign' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Direct Mail Campaign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Direct Mail Campaign' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Direct Mail Campaign' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Direct Mail Campaign' LIMIT 1), 4);

-- Project 176: Arclight AI E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'web_design',
    'technology',
    'Led the full redesign of Arclight AI''s web presence, creating a responsive, accessible site with a elegant visual language. Key features included infographic sections, interactive filters, and an intuitive navigation system. The design prioritized performance and conversion for policy makers.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Georgia', 'Roboto']::TEXT[],
    ARRAY['Adobe XD', 'Procreate', 'Canva', 'Adobe InDesign']::TEXT[],
    'mid',
    'policy makers',
    2010,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI E-commerce Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Arclight AI E-commerce Platform' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Arclight AI E-commerce Platform' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Arclight AI E-commerce Platform' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Arclight AI E-commerce Platform' LIMIT 1), 28);

-- Project 177: Industry Compliance Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry Compliance Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'editorial_design',
    'legal',
    'Designed a publication for Thornton & Associates LLP focused on Industry Compliance, featuring a minimalist editorial style with testimonial blocks, pull quotes, and thoughtful typography across 32 pages for environmental advocates.',
    'minimalist',
    'card_based',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Proxima Nova', 'Open Sans']::TEXT[],
    ARRAY['Figma', 'Tableau']::TEXT[],
    'low',
    'environmental advocates',
    2012,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Industry Compliance Editorial Feature' LIMIT 1), 55);

-- Project 178: State of Oregon — DEQ Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'packaging',
    'government',
    'Created a packaging system for State of Oregon — DEQ''s Public Health product line. The futuristic design used data maps and tactile finishes to create a premium unboxing experience aligned with nonprofit donors expectations.',
    'futuristic',
    'editorial',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Roboto']::TEXT[],
    ARRAY['Procreate', 'After Effects', 'Adobe XD']::TEXT[],
    'mid',
    'nonprofit donors',
    2018,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Sustainable Packaging Design' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Sustainable Packaging Design' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Sustainable Packaging Design' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Sustainable Packaging Design' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Sustainable Packaging Design' LIMIT 1), 21);

-- Project 179: Skyline Properties Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'infographic',
    'real_estate',
    'Created a multi-section infographic breaking down Property Portfolio trends for Skyline Properties. The design leveraged icon systems, pull quotes, and custom iconography to make dense data approachable for general public. Delivered in both digital and print-ready formats.',
    'corporate',
    'single_column',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Inter']::TEXT[],
    ARRAY['Adobe Premiere', 'Procreate', 'Adobe Illustrator']::TEXT[],
    'high',
    'general public',
    2007,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 12);

-- Project 180: Voices for Justice Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Brand Portal',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'web_design',
    'nonprofit',
    'Designed and prototyped a modern web experience for Voices for Justice focused on Community Impact. The site featured process flow diagrams, charts and graphs, and seamless mobile responsiveness. User testing with internal team members informed iterative design refinements.',
    'minimalist',
    'modular',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Avenir']::TEXT[],
    ARRAY['Tableau', 'Webflow', 'Adobe XD']::TEXT[],
    'mid',
    'internal team members',
    2025,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Portal' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Portal' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Portal' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Portal' LIMIT 1), 7);

-- Project 181: Annual Solar Adoption Snapshot
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Annual Solar Adoption Snapshot',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'infographic',
    'energy',
    'Created a multi-section infographic breaking down Solar Adoption trends for Pacific Grid Energy. The design leveraged custom illustrations, sidebar callouts, and custom iconography to make dense data approachable for C-suite executives. Delivered in both digital and print-ready formats.',
    'minimalist',
    'single_column',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Helvetica Neue', 'DM Sans']::TEXT[],
    ARRAY['Blender', 'Sketch']::TEXT[],
    'high',
    'C-suite executives',
    2013,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Annual Solar Adoption Snapshot' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Annual Solar Adoption Snapshot' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Annual Solar Adoption Snapshot' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Annual Solar Adoption Snapshot' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Annual Solar Adoption Snapshot' LIMIT 1), 19);

-- Project 182: Pacific Grid Energy Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Grid Energy Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'editorial_design',
    'energy',
    'Designed a publication for Pacific Grid Energy focused on Energy Efficiency, featuring a corporate editorial style with stat highlight cards, interactive filters, and thoughtful typography across 40 pages for retail consumers.',
    'corporate',
    'card_based',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Helvetica Neue']::TEXT[],
    ARRAY['D3.js', 'Blender']::TEXT[],
    'mid',
    'retail consumers',
    2021,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Newsletter Redesign' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Newsletter Redesign' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Newsletter Redesign' LIMIT 1), 47);

-- Project 183: Arclight AI Event Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Event Materials',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'print_collateral',
    'technology',
    'Designed a suite of print materials for Arclight AI including brochures, flyers, and event signage. The playful design featured hero photography and icon systems, maintaining brand consistency across all touchpoints for community members.',
    'playful',
    'grid',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Lora', 'Poppins']::TEXT[],
    ARRAY['Procreate', 'D3.js']::TEXT[],
    'high',
    'community members',
    2016,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Event Materials' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Arclight AI Event Materials' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Arclight AI Event Materials' LIMIT 1), 48);

-- Project 184: Thornton & Associates LLP Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'print_collateral',
    'legal',
    'Designed a suite of print materials for Thornton & Associates LLP including brochures, flyers, and event signage. The playful design featured stat highlight cards and testimonial blocks, maintaining brand consistency across all touchpoints for government officials.',
    'playful',
    'card_based',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Raleway', 'Nunito']::TEXT[],
    ARRAY['Adobe Premiere', 'Tableau']::TEXT[],
    'premium',
    'government officials',
    2018,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Brochure & Print Suite' LIMIT 1), 42);

-- Project 185: Supply Chain By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Supply Chain By the Numbers',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'infographic',
    'manufacturing',
    'Designed a visually compelling infographic for CoreSteel Industries that distilled complex Supply Chain data into an accessible, shareable format. The piece featured testimonial blocks and hero photography, using a data_driven aesthetic to engage parents. Color-coded sections guided readers through key statistics and takeaways.',
    'data_driven',
    'card_based',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Open Sans', 'Fira Sans']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere', 'Figma', 'Blender']::TEXT[],
    'high',
    'parents',
    2015,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Supply Chain By the Numbers' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Supply Chain By the Numbers' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Supply Chain By the Numbers' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Supply Chain By the Numbers' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Supply Chain By the Numbers' LIMIT 1), 29);

-- Project 186: Thornton & Associates LLP Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'packaging',
    'legal',
    'Created a packaging system for Thornton & Associates LLP''s Case Studies product line. The playful design used stat highlight cards and tactile finishes to create a premium unboxing experience aligned with policy makers expectations.',
    'playful',
    'split_screen',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Nunito', 'Space Grotesk', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva']::TEXT[],
    'premium',
    'policy makers',
    2005,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Sustainable Packaging Design' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Sustainable Packaging Design' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Sustainable Packaging Design' LIMIT 1), 6);

-- Project 187: Festival Experience Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Festival Experience Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'print_collateral',
    'entertainment',
    'Produced print collateral for Wavelength Music Festival''s Festival Experience initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive bold design used custom illustrations to communicate key messages to families.',
    'bold',
    'card_based',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Poppins', 'Lora']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere']::TEXT[],
    'mid',
    'families',
    2015,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Festival Experience Conference Collateral' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Festival Experience Conference Collateral' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Festival Experience Conference Collateral' LIMIT 1), 5);

-- Project 188: Clearpath Diagnostics KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clearpath Diagnostics KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'data_visualization',
    'healthcare',
    'Built an interactive data visualization system for Clearpath Diagnostics to explore Population Health metrics. The organic design featured hero photography, icon systems, and filterable views that empowered policy makers to discover insights independently.',
    'organic',
    'split_screen',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Nunito', 'Source Serif Pro', 'Roboto']::TEXT[],
    ARRAY['D3.js', 'Figma', 'Adobe Photoshop', 'Blender']::TEXT[],
    'low',
    'policy makers',
    2022,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics KPI Visualization System' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics KPI Visualization System' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics KPI Visualization System' LIMIT 1), 3);

-- Project 189: FreshCart Grocers Stakeholder Report 2008
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'FreshCart Grocers Stakeholder Report 2008',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'annual_report',
    'retail',
    'Designed FreshCart Grocers''s flagship annual report with a focus on storytelling through data. The report featured data maps and testimonial blocks across 80 pages, balancing detailed financials with human-interest narratives for internal team members.',
    'minimalist',
    'asymmetric',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Roboto', 'Oswald']::TEXT[],
    ARRAY['Adobe XD', 'Webflow', 'After Effects']::TEXT[],
    'premium',
    'internal team members',
    2008,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Stakeholder Report 2008' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Stakeholder Report 2008' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Stakeholder Report 2008' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Stakeholder Report 2008' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Stakeholder Report 2008' LIMIT 1), 18);

-- Project 190: Meridian Credit Union Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'editorial_design',
    'finance',
    'Designed a publication for Meridian Credit Union focused on Wealth Growth, featuring a editorial editorial style with infographic sections, pull quotes, and thoughtful typography across 56 pages for retail consumers.',
    'editorial',
    'asymmetric',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Lora', 'Futura', 'Garamond']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Tableau']::TEXT[],
    'premium',
    'retail consumers',
    2025,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Newsletter Redesign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Newsletter Redesign' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Newsletter Redesign' LIMIT 1), 19);

-- Project 191: Practice Areas Campaign Identity for Cascade Legal Group
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Practice Areas Campaign Identity for Cascade Legal Group',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'branding_identity',
    'legal',
    'Developed a complete brand identity system for Cascade Legal Group including logo, color palette, typography, and usage guidelines. The data_driven direction was crafted to resonate with C-suite executives while differentiating Cascade Legal Group in the legal space. Delivered a comprehensive brand toolkit.',
    'data_driven',
    'card_based',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Raleway', 'PT Serif', 'Roboto']::TEXT[],
    ARRAY['Sketch', 'Blender', 'Procreate']::TEXT[],
    'premium',
    'C-suite executives',
    2004,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Practice Areas Campaign Identity for Cascade Legal Group' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Practice Areas Campaign Identity for Cascade Legal Group' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Practice Areas Campaign Identity for Cascade Legal Group' LIMIT 1), 7);

-- Project 192: Silver Screen Distribution Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'data_visualization',
    'entertainment',
    'Built an interactive data visualization system for Silver Screen Distribution to explore Season Launch metrics. The organic design featured sidebar callouts, hero photography, and filterable views that empowered environmental advocates to discover insights independently.',
    'organic',
    'grid',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Georgia', 'Playfair Display', 'Fira Sans']::TEXT[],
    ARRAY['D3.js', 'Adobe Premiere', 'Tableau']::TEXT[],
    'mid',
    'environmental advocates',
    2018,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Analytics Dashboard' LIMIT 1), 17);

-- Project 193: Sage & Thyme Restaurant Group Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Created an editorial layout for Sage & Thyme Restaurant Group''s Farm to Table content, blending longform storytelling with timeline visuals and custom illustrations. The futuristic design established a distinctive voice for reaching community members.',
    'futuristic',
    'editorial',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Open Sans', 'IBM Plex Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'Blender', 'Sketch']::TEXT[],
    'low',
    'community members',
    2012,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Whitepaper Series' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Whitepaper Series' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Whitepaper Series' LIMIT 1), 13);

-- Project 194: Pacific Grid Energy Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Grid Energy Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'web_design',
    'energy',
    'Designed and prototyped a modern web experience for Pacific Grid Energy focused on Solar Adoption. The site featured process flow diagrams, charts and graphs, and seamless mobile responsiveness. User testing with students and educators informed iterative design refinements.',
    'corporate',
    'freeform',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Georgia']::TEXT[],
    ARRAY['Canva', 'After Effects']::TEXT[],
    'premium',
    'students and educators',
    2019,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Interactive Web Platform' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Interactive Web Platform' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Interactive Web Platform' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Interactive Web Platform' LIMIT 1), 16);

-- Project 195: Atlas Outdoor Co. Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'branding_identity',
    'retail',
    'Created a cohesive visual identity for Atlas Outdoor Co. rooted in their Seasonal Collection mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with community members.',
    'corporate',
    'modular',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Inter', 'Futura']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator', 'Adobe Photoshop', 'Webflow']::TEXT[],
    'high',
    'community members',
    2020,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Visual Identity Refresh' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Visual Identity Refresh' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Visual Identity Refresh' LIMIT 1), 25);

-- Project 196: SunBridge Solar Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SunBridge Solar Dashboard Design',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'data_visualization',
    'energy',
    'Designed a comprehensive data visualization suite for SunBridge Solar covering Grid Modernization analytics. The system included full-bleed imagery, real-time dashboards, and exportable reports, all styled in a minimalist visual language for nonprofit donors.',
    'minimalist',
    'editorial',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Poppins', 'Proxima Nova']::TEXT[],
    ARRAY['D3.js', 'Tableau', 'Adobe Premiere', 'Canva']::TEXT[],
    'low',
    'nonprofit donors',
    2018,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SunBridge Solar Dashboard Design' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Dashboard Design' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Dashboard Design' LIMIT 1), 12);

-- Project 197: Digital Banking Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Digital Banking Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'data_visualization',
    'finance',
    'Designed a comprehensive data visualization suite for BlueLine Wealth Advisors covering Digital Banking analytics. The system included process flow diagrams, real-time dashboards, and exportable reports, all styled in a elegant visual language for small business owners.',
    'elegant',
    'split_screen',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Space Grotesk', 'Source Serif Pro']::TEXT[],
    ARRAY['Figma', 'Adobe Illustrator', 'Canva']::TEXT[],
    'premium',
    'small business owners',
    2010,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Digital Banking Interactive Data Portal' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Digital Banking Interactive Data Portal' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Digital Banking Interactive Data Portal' LIMIT 1), 25);

-- Project 198: Atlas Outdoor Co. Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'packaging',
    'retail',
    'Created a packaging system for Atlas Outdoor Co.''s Loyalty Program product line. The bold design used interactive filters and tactile finishes to create a premium unboxing experience aligned with retail consumers expectations.',
    'bold',
    'modular',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop']::TEXT[],
    'premium',
    'retail consumers',
    2015,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Packaging Redesign' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Packaging Redesign' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Packaging Redesign' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Packaging Redesign' LIMIT 1), 47);

-- Project 199: Resort Amenities Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Resort Amenities Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'data_visualization',
    'travel_hospitality',
    'Built an interactive data visualization system for Wanderlust Travel Co. to explore Resort Amenities metrics. The playful design featured charts and graphs, testimonial blocks, and filterable views that empowered senior citizens to discover insights independently.',
    'playful',
    'modular',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Roboto', 'Merriweather']::TEXT[],
    ARRAY['D3.js', 'Procreate']::TEXT[],
    'premium',
    'senior citizens',
    2005,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Resort Amenities Interactive Data Portal' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Resort Amenities Interactive Data Portal' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Resort Amenities Interactive Data Portal' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Resort Amenities Interactive Data Portal' LIMIT 1), 25);

-- Project 200: City of Portland — Parks Dept Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'print_collateral',
    'government',
    'Produced print collateral for City of Portland — Parks Dept''s Environmental Policy initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive bold design used testimonial blocks to communicate key messages to environmental advocates.',
    'bold',
    'grid',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Montserrat', 'DM Sans', 'Inter']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere']::TEXT[],
    'premium',
    'environmental advocates',
    2007,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brochure & Print Suite' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brochure & Print Suite' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brochure & Print Suite' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brochure & Print Suite' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brochure & Print Suite' LIMIT 1), 15);

-- Project 201: Nexon Cloud Solutions Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'social_media',
    'technology',
    'Developed a social media content system for Nexon Cloud Solutions spanning Instagram, LinkedIn, and Twitter. The playful visual approach used interactive filters and icon systems to boost engagement with prospective customers. Included templates, content guidelines, and a 30-day launch calendar.',
    'playful',
    'editorial',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Roboto', 'Lora']::TEXT[],
    ARRAY['Procreate', 'After Effects', 'Canva', 'D3.js']::TEXT[],
    'low',
    'prospective customers',
    2005,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Digital Ad Campaign' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Digital Ad Campaign' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Digital Ad Campaign' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Digital Ad Campaign' LIMIT 1), 21);

-- Project 202: Food Beverage Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Food Beverage Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'data_visualization',
    'food_beverage',
    'Built an interactive data visualization system for Sage & Thyme Restaurant Group to explore Farm to Table metrics. The corporate design featured hero photography, pull quotes, and filterable views that empowered general public to discover insights independently.',
    'corporate',
    'modular',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Garamond', 'Work Sans']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe InDesign', 'Adobe Premiere', 'Blender']::TEXT[],
    'premium',
    'general public',
    2020,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 4);

-- Project 203: Cornerstone Development Group Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Dashboard Design',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'data_visualization',
    'real_estate',
    'Built an interactive data visualization system for Cornerstone Development Group to explore Commercial Spaces metrics. The editorial design featured timeline visuals, icon systems, and filterable views that empowered families to discover insights independently.',
    'editorial',
    'split_screen',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Georgia', 'PT Serif', 'Garamond']::TEXT[],
    ARRAY['Figma', 'Tableau', 'Canva']::TEXT[],
    'high',
    'families',
    2016,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Dashboard Design' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Dashboard Design' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Dashboard Design' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Dashboard Design' LIMIT 1), 13);

-- Project 204: Nexon Cloud Solutions Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Content Publication',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'editorial_design',
    'technology',
    'Designed a publication for Nexon Cloud Solutions focused on Cybersecurity, featuring a elegant editorial style with infographic sections, data maps, and thoughtful typography across 40 pages for policy makers.',
    'elegant',
    'modular',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'PT Serif', 'Poppins']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere', 'Adobe Photoshop']::TEXT[],
    'high',
    'policy makers',
    2003,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Content Publication' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Content Publication' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Content Publication' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Content Publication' LIMIT 1), 58);

-- Project 205: Thornton & Associates LLP E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'web_design',
    'legal',
    'Led the full redesign of Thornton & Associates LLP''s web presence, creating a responsive, accessible site with a corporate visual language. Key features included infographic sections, comparison tables, and an intuitive navigation system. The design prioritized performance and conversion for families.',
    'corporate',
    'freeform',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Work Sans', 'Georgia']::TEXT[],
    ARRAY['Adobe Photoshop', 'After Effects', 'Tableau', 'Procreate']::TEXT[],
    'low',
    'families',
    2023,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP E-commerce Platform' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP E-commerce Platform' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP E-commerce Platform' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP E-commerce Platform' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP E-commerce Platform' LIMIT 1), 1);

-- Project 206: Atlas Outdoor Co. Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'social_media',
    'retail',
    'Developed a social media content system for Atlas Outdoor Co. spanning Instagram, LinkedIn, and Twitter. The elegant visual approach used charts and graphs and sidebar callouts to boost engagement with government officials. Included templates, content guidelines, and a 30-day launch calendar.',
    'elegant',
    'asymmetric',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Space Grotesk']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe InDesign', 'Adobe XD', 'Blender']::TEXT[],
    'high',
    'government officials',
    2023,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Digital Ad Campaign' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Digital Ad Campaign' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Digital Ad Campaign' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Digital Ad Campaign' LIMIT 1), 17);

-- Project 207: Urban Roots Food Bank Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Urban Roots Food Bank Brand Identity System',
    (SELECT id FROM clients WHERE name = 'Urban Roots Food Bank' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Created a cohesive visual identity for Urban Roots Food Bank rooted in their Donor Engagement mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with students and educators.',
    'minimalist',
    'grid',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Avenir']::TEXT[],
    ARRAY['D3.js', 'Procreate', 'Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'low',
    'students and educators',
    2004,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Brand Identity System' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Brand Identity System' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Brand Identity System' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Brand Identity System' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Urban Roots Food Bank Brand Identity System' LIMIT 1), 30);

-- Project 208: Maricopa County Public Health Sales Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Maricopa County Public Health Sales Presentation',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'presentation',
    'government',
    'Designed a high-impact presentation deck for Maricopa County Public Health to communicate Infrastructure insights to prospective customers. The retro slide design featured interactive filters, process flow diagrams, and clear data storytelling across 48 slides.',
    'retro',
    'grid',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Poppins', 'Helvetica Neue', 'Work Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'Blender']::TEXT[],
    'high',
    'prospective customers',
    2011,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Sales Presentation' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Sales Presentation' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Sales Presentation' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Sales Presentation' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Sales Presentation' LIMIT 1), 43);

-- Project 209: MedVista Health Systems Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'presentation',
    'healthcare',
    'Created a polished pitch deck for MedVista Health Systems with 40 slides covering strategy, data, and vision. The elegant design balanced infographic sections with clean typography to keep prospective customers engaged throughout.',
    'elegant',
    'editorial',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Archivo', 'Open Sans']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere']::TEXT[],
    'high',
    'prospective customers',
    2015,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Board Meeting Deck' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Board Meeting Deck' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Board Meeting Deck' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Board Meeting Deck' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Board Meeting Deck' LIMIT 1), 21);

-- Project 210: Public Health Campaign Identity for Federal Transit Administration
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Public Health Campaign Identity for Federal Transit Administration',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'branding_identity',
    'government',
    'Created a cohesive visual identity for Federal Transit Administration rooted in their Public Health mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with healthcare professionals.',
    'elegant',
    'card_based',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Lora', 'Playfair Display']::TEXT[],
    ARRAY['Figma', 'Adobe Premiere']::TEXT[],
    'low',
    'healthcare professionals',
    2023,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Public Health Campaign Identity for Federal Transit Administration' LIMIT 1), 58);

-- Project 211: CoreSteel Industries Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Product Packaging',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'packaging',
    'manufacturing',
    'Created a packaging system for CoreSteel Industries''s Safety Standards product line. The organic design used custom illustrations and tactile finishes to create a premium unboxing experience aligned with prospective customers expectations.',
    'organic',
    'editorial',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Proxima Nova']::TEXT[],
    ARRAY['Adobe InDesign', 'Figma', 'Webflow', 'Tableau']::TEXT[],
    'mid',
    'prospective customers',
    2005,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Product Packaging' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Product Packaging' LIMIT 1), 8);

-- Project 212: Cornerstone Development Group Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'editorial_design',
    'real_estate',
    'Designed a publication for Cornerstone Development Group focused on Community Design, featuring a data_driven editorial style with timeline visuals, infographic sections, and thoughtful typography across 24 pages for senior citizens.',
    'data_driven',
    'single_column',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'PT Serif']::TEXT[],
    ARRAY['Procreate', 'Figma']::TEXT[],
    'low',
    'senior citizens',
    2009,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Magazine Layout' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Magazine Layout' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Magazine Layout' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Magazine Layout' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Magazine Layout' LIMIT 1), 27);

-- Project 213: Nexon Cloud Solutions Year in Review 2003
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Year in Review 2003',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'annual_report',
    'technology',
    'Designed Nexon Cloud Solutions''s flagship annual report with a focus on storytelling through data. The report featured comparison tables and sidebar callouts across 56 pages, balancing detailed financials with human-interest narratives for C-suite executives.',
    'data_driven',
    'card_based',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Nunito', 'Proxima Nova', 'PT Serif']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe InDesign', 'Adobe Photoshop']::TEXT[],
    'mid',
    'C-suite executives',
    2003,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Year in Review 2003' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Year in Review 2003' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Year in Review 2003' LIMIT 1), 25);

-- Project 214: Food Beverage Annual Review 2003
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Food Beverage Annual Review 2003',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'annual_report',
    'food_beverage',
    'Produced a comprehensive annual report for Coastal Harvest Seafood covering financial performance, program impact, and strategic outlook. The elegant design incorporated stat highlight cards, comparison tables, and narrative photography to engage students and educators. Delivered as a 32-page print and digital publication.',
    'elegant',
    'freeform',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Oswald', 'Archivo', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'Procreate']::TEXT[],
    'premium',
    'students and educators',
    2003,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Food Beverage Annual Review 2003' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Food Beverage Annual Review 2003' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Food Beverage Annual Review 2003' LIMIT 1), 13);

-- Project 215: Wellbridge Community Health Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wellbridge Community Health Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Wellbridge Community Health' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Designed a suite of print materials for Wellbridge Community Health including brochures, flyers, and event signage. The elegant design featured infographic sections and hero photography, maintaining brand consistency across all touchpoints for general public.',
    'elegant',
    'single_column',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Archivo', 'Poppins']::TEXT[],
    ARRAY['Procreate', 'Figma']::TEXT[],
    'premium',
    'general public',
    2011,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Brochure & Print Suite' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Brochure & Print Suite' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Brochure & Print Suite' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Brochure & Print Suite' LIMIT 1), 30);

-- Project 216: Riverwalk Boutique Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Riverwalk Boutique Rebrand',
    (SELECT id FROM clients WHERE name = 'Riverwalk Boutique' LIMIT 1),
    'branding_identity',
    'retail',
    'Created a cohesive visual identity for Riverwalk Boutique rooted in their Seasonal Collection mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with prospective customers.',
    'bold',
    'single_column',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Nunito', 'Lora']::TEXT[],
    ARRAY['D3.js', 'Canva']::TEXT[],
    'premium',
    'prospective customers',
    2009,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Rebrand' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Rebrand' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Rebrand' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Rebrand' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Rebrand' LIMIT 1), 33);

-- Project 217: Financial Literacy Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Financial Literacy Data Explorer',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'data_visualization',
    'finance',
    'Built an interactive data visualization system for Meridian Credit Union to explore Financial Literacy metrics. The organic design featured dashboard widgets, comparison tables, and filterable views that empowered retail consumers to discover insights independently.',
    'organic',
    'card_based',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Roboto', 'Nunito']::TEXT[],
    ARRAY['Canva', 'Adobe Photoshop', 'D3.js', 'Webflow']::TEXT[],
    'mid',
    'retail consumers',
    2013,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Financial Literacy Data Explorer' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Financial Literacy Data Explorer' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Financial Literacy Data Explorer' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Financial Literacy Data Explorer' LIMIT 1), 14);

-- Project 218: How Public Health Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Public Health Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'infographic',
    'government',
    'Designed a visually compelling infographic for Maricopa County Public Health that distilled complex Public Health data into an accessible, shareable format. The piece featured interactive filters and process flow diagrams, using a minimalist aesthetic to engage students and educators. Color-coded sections guided readers through key statistics and takeaways.',
    'minimalist',
    'split_screen',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Roboto', 'Archivo']::TEXT[],
    ARRAY['Adobe Premiere', 'Webflow']::TEXT[],
    'low',
    'students and educators',
    2016,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Public Health Works — Visual Breakdown' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'How Public Health Works — Visual Breakdown' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'How Public Health Works — Visual Breakdown' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'How Public Health Works — Visual Breakdown' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'How Public Health Works — Visual Breakdown' LIMIT 1), 41);

-- Project 219: CoreSteel Industries E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'web_design',
    'manufacturing',
    'Led the full redesign of CoreSteel Industries''s web presence, creating a responsive, accessible site with a futuristic visual language. Key features included stat highlight cards, testimonial blocks, and an intuitive navigation system. The design prioritized performance and conversion for healthcare professionals.',
    'futuristic',
    'editorial',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Playfair Display', 'DM Sans']::TEXT[],
    ARRAY['Procreate', 'Sketch', 'Adobe Premiere']::TEXT[],
    'high',
    'healthcare professionals',
    2023,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries E-commerce Platform' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries E-commerce Platform' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries E-commerce Platform' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries E-commerce Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries E-commerce Platform' LIMIT 1), 16);

-- Project 220: TerraCode Labs Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'TerraCode Labs Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'TerraCode Labs' LIMIT 1),
    'packaging',
    'technology',
    'Created a packaging system for TerraCode Labs''s AI & Machine Learning product line. The bold design used hero photography and tactile finishes to create a premium unboxing experience aligned with prospective customers expectations.',
    'bold',
    'single_column',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Oswald', 'Georgia']::TEXT[],
    ARRAY['Adobe XD', 'Webflow']::TEXT[],
    'mid',
    'prospective customers',
    2013,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'TerraCode Labs Sustainable Packaging Design' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Sustainable Packaging Design' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Sustainable Packaging Design' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Sustainable Packaging Design' LIMIT 1), 39);

-- Project 221: Skyline Properties Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'editorial_design',
    'real_estate',
    'Designed a publication for Skyline Properties focused on Community Design, featuring a retro editorial style with infographic sections, data maps, and thoughtful typography across 56 pages for families.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Poppins', 'Raleway']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe InDesign']::TEXT[],
    'mid',
    'families',
    2017,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Newsletter Redesign' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Skyline Properties Newsletter Redesign' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Skyline Properties Newsletter Redesign' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Skyline Properties Newsletter Redesign' LIMIT 1), 51);

-- Project 222: Voices for Justice Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Developed a complete brand identity system for Voices for Justice including logo, color palette, typography, and usage guidelines. The bold direction was crafted to resonate with policy makers while differentiating Voices for Justice in the nonprofit space. Delivered a comprehensive brand toolkit.',
    'bold',
    'grid',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Garamond', 'Avenir']::TEXT[],
    ARRAY['Blender', 'Webflow', 'Canva', 'Adobe Premiere']::TEXT[],
    'mid',
    'policy makers',
    2019,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Guidelines & Toolkit' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Guidelines & Toolkit' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Guidelines & Toolkit' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Guidelines & Toolkit' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Voices for Justice Brand Guidelines & Toolkit' LIMIT 1), 13);

-- Project 223: Pivotal Data Systems Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pivotal Data Systems Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Pivotal Data Systems' LIMIT 1),
    'editorial_design',
    'technology',
    'Created an editorial layout for Pivotal Data Systems''s Cybersecurity content, blending longform storytelling with custom illustrations and sidebar callouts. The playful design established a distinctive voice for reaching government officials.',
    'playful',
    'modular',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Garamond', 'Lora', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe XD', 'Adobe InDesign', 'Adobe Photoshop']::TEXT[],
    'mid',
    'government officials',
    2008,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Magazine Layout' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Magazine Layout' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Magazine Layout' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Magazine Layout' LIMIT 1), 32);

-- Project 224: Cornerstone Development Group Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'print_collateral',
    'real_estate',
    'Designed a suite of print materials for Cornerstone Development Group including brochures, flyers, and event signage. The playful design featured infographic sections and dashboard widgets, maintaining brand consistency across all touchpoints for tech-savvy millennials.',
    'playful',
    'grid',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Adobe XD', 'Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'high',
    'tech-savvy millennials',
    2023,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 5);

-- Project 225: Medical Research Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Medical Research Editorial Feature',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Designed a publication for MedVista Health Systems focused on Medical Research, featuring a corporate editorial style with full-bleed imagery, stat highlight cards, and thoughtful typography across 64 pages for healthcare professionals.',
    'corporate',
    'single_column',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Space Grotesk']::TEXT[],
    ARRAY['D3.js', 'Blender', 'Figma', 'Tableau']::TEXT[],
    'high',
    'healthcare professionals',
    2009,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Medical Research Editorial Feature' LIMIT 1), 36);

-- Project 226: Cascade Legal Group Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'presentation',
    'legal',
    'Created a polished pitch deck for Cascade Legal Group with 24 slides covering strategy, data, and vision. The organic design balanced data maps with clean typography to keep policy makers engaged throughout.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Merriweather', 'DM Sans']::TEXT[],
    ARRAY['Webflow', 'Blender', 'Adobe XD']::TEXT[],
    'mid',
    'policy makers',
    2016,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Conference Presentation' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Conference Presentation' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Conference Presentation' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Conference Presentation' LIMIT 1), 22);

-- Project 227: The Literacy Project Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The Literacy Project Product Packaging',
    (SELECT id FROM clients WHERE name = 'The Literacy Project' LIMIT 1),
    'packaging',
    'nonprofit',
    'Designed product packaging for The Literacy Project that balanced shelf appeal with brand storytelling. The organic design featured icon systems, sustainable material choices, and clear product information hierarchy for government officials.',
    'organic',
    'grid',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Raleway', 'DM Sans']::TEXT[],
    ARRAY['Webflow', 'Tableau', 'Canva', 'Adobe Illustrator']::TEXT[],
    'high',
    'government officials',
    2021,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The Literacy Project Product Packaging' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'The Literacy Project Product Packaging' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'The Literacy Project Product Packaging' LIMIT 1), 38);

-- Project 228: Food Beverage Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Food Beverage Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'data_visualization',
    'food_beverage',
    'Built an interactive data visualization system for Peak Nutrition Labs to explore Craft Brewing metrics. The data_driven design featured comparison tables, timeline visuals, and filterable views that empowered small business owners to discover insights independently.',
    'data_driven',
    'card_based',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Raleway', 'Poppins']::TEXT[],
    ARRAY['Figma', 'Adobe InDesign', 'Adobe XD', 'Canva']::TEXT[],
    'high',
    'small business owners',
    2023,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Food Beverage Benchmark Dashboard' LIMIT 1), 39);

-- Project 229: Precision Dynamics Corp. Annual Report 2013
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Annual Report 2013',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Produced a comprehensive annual report for Precision Dynamics Corp. covering financial performance, program impact, and strategic outlook. The data_driven design incorporated interactive filters, timeline visuals, and narrative photography to engage small business owners. Delivered as a 24-page print and digital publication.',
    'data_driven',
    'editorial',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Lora', 'Inter', 'Fira Sans']::TEXT[],
    ARRAY['Adobe XD', 'Procreate', 'Canva']::TEXT[],
    'high',
    'small business owners',
    2013,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Annual Report 2013' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Annual Report 2013' LIMIT 1), 29);

-- Project 230: Cornerstone Development Group Financial & Impact Summary 2018
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Financial & Impact Summary 2018',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'annual_report',
    'real_estate',
    'Produced a comprehensive annual report for Cornerstone Development Group covering financial performance, program impact, and strategic outlook. The bold design incorporated pull quotes, data maps, and narrative photography to engage young professionals. Delivered as a 64-page print and digital publication.',
    'bold',
    'editorial',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Poppins', 'Proxima Nova', 'DM Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'low',
    'young professionals',
    2018,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2018' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Financial & Impact Summary 2018' LIMIT 1), 19);

-- Project 231: Thornton & Associates LLP Stakeholder Report 2016
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Stakeholder Report 2016',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'annual_report',
    'legal',
    'Produced a comprehensive annual report for Thornton & Associates LLP covering financial performance, program impact, and strategic outlook. The bold design incorporated charts and graphs, testimonial blocks, and narrative photography to engage general public. Delivered as a 80-page print and digital publication.',
    'bold',
    'grid',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Montserrat']::TEXT[],
    ARRAY['Figma', 'Adobe Illustrator', 'Sketch']::TEXT[],
    'premium',
    'general public',
    2016,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Stakeholder Report 2016' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Stakeholder Report 2016' LIMIT 1), 25);

-- Project 232: Healthcare Annual Review 2014
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Healthcare Annual Review 2014',
    (SELECT id FROM clients WHERE name = 'Wellbridge Community Health' LIMIT 1),
    'annual_report',
    'healthcare',
    'Produced a comprehensive annual report for Wellbridge Community Health covering financial performance, program impact, and strategic outlook. The playful design incorporated stat highlight cards, comparison tables, and narrative photography to engage parents. Delivered as a 80-page print and digital publication.',
    'playful',
    'modular',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Garamond', 'Oswald']::TEXT[],
    ARRAY['Blender', 'Adobe Photoshop']::TEXT[],
    'high',
    'parents',
    2014,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Healthcare Annual Review 2014' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Healthcare Annual Review 2014' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Healthcare Annual Review 2014' LIMIT 1), 51);

-- Project 233: Harbor View Realty Annual Report 2016
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Harbor View Realty Annual Report 2016',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'annual_report',
    'real_estate',
    'Designed Harbor View Realty''s flagship annual report with a focus on storytelling through data. The report featured custom illustrations and infographic sections across 48 pages, balancing detailed financials with human-interest narratives for industry analysts.',
    'playful',
    'freeform',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Montserrat']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva', 'Adobe XD', 'Sketch']::TEXT[],
    'premium',
    'industry analysts',
    2016,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Harbor View Realty Annual Report 2016' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Annual Report 2016' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Annual Report 2016' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Annual Report 2016' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Annual Report 2016' LIMIT 1), 49);

-- Project 234: STEM Futures Foundation Financial & Impact Summary 2003
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'STEM Futures Foundation Financial & Impact Summary 2003',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'annual_report',
    'education',
    'Produced a comprehensive annual report for STEM Futures Foundation covering financial performance, program impact, and strategic outlook. The organic design incorporated process flow diagrams, full-bleed imagery, and narrative photography to engage nonprofit donors. Delivered as a 24-page print and digital publication.',
    'organic',
    'freeform',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Lora']::TEXT[],
    ARRAY['After Effects', 'Adobe Premiere', 'D3.js']::TEXT[],
    'mid',
    'nonprofit donors',
    2003,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Financial & Impact Summary 2003' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Financial & Impact Summary 2003' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Financial & Impact Summary 2003' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation Financial & Impact Summary 2003' LIMIT 1), 32);

-- Project 235: Volunteer Network Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Volunteer Network Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'editorial_design',
    'nonprofit',
    'Designed a publication for Habitat Renewal Coalition focused on Volunteer Network, featuring a data_driven editorial style with infographic sections, pull quotes, and thoughtful typography across 64 pages for prospective customers.',
    'data_driven',
    'modular',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Oswald', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Illustrator', 'Sketch']::TEXT[],
    'premium',
    'prospective customers',
    2014,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Volunteer Network Editorial Feature' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Volunteer Network Editorial Feature' LIMIT 1), 27);

-- Project 236: How Streaming Platform Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Streaming Platform Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'infographic',
    'entertainment',
    'Designed a visually compelling infographic for Silver Screen Distribution that distilled complex Streaming Platform data into an accessible, shareable format. The piece featured sidebar callouts and testimonial blocks, using a playful aesthetic to engage healthcare professionals. Color-coded sections guided readers through key statistics and takeaways.',
    'playful',
    'card_based',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Avenir']::TEXT[],
    ARRAY['Canva', 'Blender', 'Sketch']::TEXT[],
    'high',
    'healthcare professionals',
    2007,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Streaming Platform Works — Visual Breakdown' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'How Streaming Platform Works — Visual Breakdown' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'How Streaming Platform Works — Visual Breakdown' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'How Streaming Platform Works — Visual Breakdown' LIMIT 1), 53);

-- Project 237: Arclight AI Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Product Packaging',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'packaging',
    'technology',
    'Created a packaging system for Arclight AI''s IoT Solutions product line. The elegant design used custom illustrations and tactile finishes to create a premium unboxing experience aligned with prospective customers expectations.',
    'elegant',
    'editorial',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Avenir', 'Archivo', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Blender', 'Adobe InDesign']::TEXT[],
    'premium',
    'prospective customers',
    2016,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Product Packaging' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Arclight AI Product Packaging' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Arclight AI Product Packaging' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Arclight AI Product Packaging' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Arclight AI Product Packaging' LIMIT 1), 31);

-- Project 238: FreshCart Grocers Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'FreshCart Grocers Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'editorial_design',
    'retail',
    'Created an editorial layout for FreshCart Grocers''s Product Line content, blending longform storytelling with data maps and interactive filters. The minimalist design established a distinctive voice for reaching industry analysts.',
    'minimalist',
    'freeform',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Helvetica Neue']::TEXT[],
    ARRAY['D3.js', 'Adobe Illustrator', 'Adobe Premiere']::TEXT[],
    'premium',
    'industry analysts',
    2006,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'FreshCart Grocers Newsletter Redesign' LIMIT 1), 3);

-- Project 239: Coastal Harvest Seafood Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'presentation',
    'food_beverage',
    'Designed a high-impact presentation deck for Coastal Harvest Seafood to communicate Food Safety insights to prospective customers. The retro slide design featured data maps, interactive filters, and clear data storytelling across 40 slides.',
    'retro',
    'asymmetric',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Poppins', 'Futura', 'DM Sans']::TEXT[],
    ARRAY['After Effects', 'Adobe Photoshop', 'Canva']::TEXT[],
    'premium',
    'prospective customers',
    2006,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Conference Presentation' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Conference Presentation' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Conference Presentation' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Conference Presentation' LIMIT 1), 28);

-- Project 240: Sage & Thyme Restaurant Group Sustainable Packaging Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Sustainable Packaging Design',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'packaging',
    'food_beverage',
    'Designed product packaging for Sage & Thyme Restaurant Group that balanced shelf appeal with brand storytelling. The organic design featured timeline visuals, sustainable material choices, and clear product information hierarchy for industry analysts.',
    'organic',
    'card_based',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Nunito', 'Libre Baskerville']::TEXT[],
    ARRAY['D3.js', 'Blender', 'Canva']::TEXT[],
    'mid',
    'industry analysts',
    2014,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Sustainable Packaging Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Sustainable Packaging Design' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Sustainable Packaging Design' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Sustainable Packaging Design' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Sustainable Packaging Design' LIMIT 1), 60);

-- Project 241: Atlas Outdoor Co. Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Dashboard Design',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'data_visualization',
    'retail',
    'Built an interactive data visualization system for Atlas Outdoor Co. to explore Holiday Campaign metrics. The playful design featured pull quotes, stat highlight cards, and filterable views that empowered senior citizens to discover insights independently.',
    'playful',
    'single_column',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Nunito', 'Raleway']::TEXT[],
    ARRAY['Tableau', 'Adobe InDesign', 'Sketch']::TEXT[],
    'mid',
    'senior citizens',
    2024,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 54);

-- Project 242: Global Learners Initiative Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative Brand Portal',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'web_design',
    'education',
    'Designed and prototyped a modern web experience for Global Learners Initiative focused on Distance Education. The site featured interactive filters, dashboard widgets, and seamless mobile responsiveness. User testing with general public informed iterative design refinements.',
    'elegant',
    'editorial',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Roboto']::TEXT[],
    ARRAY['D3.js', 'Sketch', 'Adobe Illustrator']::TEXT[],
    'low',
    'general public',
    2011,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Brand Portal' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Brand Portal' LIMIT 1), 19);

-- Project 243: Harbor View Realty Financial & Impact Summary 2013
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Harbor View Realty Financial & Impact Summary 2013',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'annual_report',
    'real_estate',
    'Produced a comprehensive annual report for Harbor View Realty covering financial performance, program impact, and strategic outlook. The corporate design incorporated interactive filters, comparison tables, and narrative photography to engage government officials. Delivered as a 48-page print and digital publication.',
    'corporate',
    'asymmetric',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Poppins']::TEXT[],
    ARRAY['Sketch', 'Canva']::TEXT[],
    'high',
    'government officials',
    2013,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Harbor View Realty Financial & Impact Summary 2013' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Financial & Impact Summary 2013' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Financial & Impact Summary 2013' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Financial & Impact Summary 2013' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Financial & Impact Summary 2013' LIMIT 1), 24);

-- Project 244: Thornton & Associates LLP Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'print_collateral',
    'legal',
    'Produced print collateral for Thornton & Associates LLP''s Pro Bono Work initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive elegant design used charts and graphs to communicate key messages to environmental advocates.',
    'elegant',
    'grid',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Avenir', 'Montserrat']::TEXT[],
    ARRAY['Webflow', 'Adobe Photoshop', 'Canva', 'After Effects']::TEXT[],
    'low',
    'environmental advocates',
    2024,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Direct Mail Campaign' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Direct Mail Campaign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Direct Mail Campaign' LIMIT 1), 14);

-- Project 245: Workforce Development Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Workforce Development Workshop Materials',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'presentation',
    'manufacturing',
    'Created a polished pitch deck for CoreSteel Industries with 48 slides covering strategy, data, and vision. The minimalist design balanced interactive filters with clean typography to keep senior citizens engaged throughout.',
    'minimalist',
    'modular',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Poppins', 'Proxima Nova']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator', 'Adobe XD']::TEXT[],
    'low',
    'senior citizens',
    2018,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Workforce Development Workshop Materials' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Workforce Development Workshop Materials' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Workforce Development Workshop Materials' LIMIT 1), 58);

-- Project 246: MedVista Health Systems Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Conference Presentation',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'presentation',
    'healthcare',
    'Designed a high-impact presentation deck for MedVista Health Systems to communicate Clinical Trials insights to government officials. The corporate slide design featured infographic sections, interactive filters, and clear data storytelling across 40 slides.',
    'corporate',
    'modular',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Futura', 'Avenir']::TEXT[],
    ARRAY['Procreate', 'Adobe XD', 'Canva']::TEXT[],
    'high',
    'government officials',
    2021,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Conference Presentation' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Conference Presentation' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Conference Presentation' LIMIT 1), 28);

-- Project 247: TerraCode Labs Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'TerraCode Labs Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'TerraCode Labs' LIMIT 1),
    'presentation',
    'technology',
    'Designed a high-impact presentation deck for TerraCode Labs to communicate SaaS Platform insights to healthcare professionals. The futuristic slide design featured hero photography, data maps, and clear data storytelling across 40 slides.',
    'futuristic',
    'single_column',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Poppins', 'Playfair Display']::TEXT[],
    ARRAY['D3.js', 'After Effects', 'Webflow']::TEXT[],
    'low',
    'healthcare professionals',
    2003,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'TerraCode Labs Board Meeting Deck' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Board Meeting Deck' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Board Meeting Deck' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Board Meeting Deck' LIMIT 1), 59);

-- Project 248: Thornton & Associates LLP Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Rebrand',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'branding_identity',
    'legal',
    'Created a cohesive visual identity for Thornton & Associates LLP rooted in their Firm Heritage mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with investors and stakeholders.',
    'corporate',
    'modular',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Georgia', 'Avenir', 'Merriweather']::TEXT[],
    ARRAY['Adobe InDesign', 'After Effects', 'Webflow']::TEXT[],
    'high',
    'investors and stakeholders',
    2018,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Rebrand' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Rebrand' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Rebrand' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Rebrand' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Rebrand' LIMIT 1), 26);

-- Project 249: Silver Screen Distribution Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'branding_identity',
    'entertainment',
    'Created a cohesive visual identity for Silver Screen Distribution rooted in their Festival Experience mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with general public.',
    'futuristic',
    'card_based',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Futura', 'Avenir']::TEXT[],
    ARRAY['Adobe Premiere', 'Webflow', 'Figma', 'Procreate']::TEXT[],
    'high',
    'general public',
    2005,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Guidelines & Toolkit' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Guidelines & Toolkit' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Guidelines & Toolkit' LIMIT 1), 6);

-- Project 250: GreenShift Renewables Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'data_visualization',
    'energy',
    'Designed a comprehensive data visualization suite for GreenShift Renewables covering Sustainability Report analytics. The system included icon systems, real-time dashboards, and exportable reports, all styled in a retro visual language for young professionals.',
    'retro',
    'split_screen',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Lora', 'Work Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe XD', 'After Effects']::TEXT[],
    'mid',
    'young professionals',
    2005,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Analytics Dashboard' LIMIT 1), 6);

-- Project 251: API Ecosystem By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'API Ecosystem By the Numbers',
    (SELECT id FROM clients WHERE name = 'Pivotal Data Systems' LIMIT 1),
    'infographic',
    'technology',
    'Designed a visually compelling infographic for Pivotal Data Systems that distilled complex API Ecosystem data into an accessible, shareable format. The piece featured process flow diagrams and interactive filters, using a corporate aesthetic to engage industry analysts. Color-coded sections guided readers through key statistics and takeaways.',
    'corporate',
    'editorial',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'IBM Plex Sans']::TEXT[],
    ARRAY['Blender', 'Canva', 'Procreate', 'Adobe Premiere']::TEXT[],
    'low',
    'industry analysts',
    2018,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'API Ecosystem By the Numbers' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'API Ecosystem By the Numbers' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'API Ecosystem By the Numbers' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'API Ecosystem By the Numbers' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'API Ecosystem By the Numbers' LIMIT 1), 55);

-- Project 252: GreenShift Renewables Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables Magazine Layout',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'editorial_design',
    'energy',
    'Created an editorial layout for GreenShift Renewables''s Grid Modernization content, blending longform storytelling with data maps and pull quotes. The playful design established a distinctive voice for reaching senior citizens.',
    'playful',
    'card_based',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe XD', 'Adobe InDesign', 'Figma']::TEXT[],
    'low',
    'senior citizens',
    2010,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Magazine Layout' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Magazine Layout' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Magazine Layout' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Magazine Layout' LIMIT 1), 11);

-- Project 253: Precision Dynamics Corp. Instagram Content Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Instagram Content Series',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'social_media',
    'manufacturing',
    'Created a multi-platform social campaign for Precision Dynamics Corp. centered on Quality Control. The design system featured timeline visuals, adaptable templates, and motion graphics optimized for each platform. Targeted nonprofit donors with platform-specific messaging strategies.',
    'retro',
    'grid',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Oswald', 'Libre Baskerville']::TEXT[],
    ARRAY['Figma', 'Adobe Photoshop']::TEXT[],
    'low',
    'nonprofit donors',
    2020,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 60);

-- Project 254: Trailhead Adventures Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'print_collateral',
    'travel_hospitality',
    'Designed a suite of print materials for Trailhead Adventures including brochures, flyers, and event signage. The editorial design featured interactive filters and custom illustrations, maintaining brand consistency across all touchpoints for policy makers.',
    'editorial',
    'single_column',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Oswald', 'Nunito']::TEXT[],
    ARRAY['D3.js', 'Adobe InDesign', 'After Effects']::TEXT[],
    'premium',
    'policy makers',
    2017,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Print Ad Series' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Print Ad Series' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Print Ad Series' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Print Ad Series' LIMIT 1), 8);

-- Project 255: Federal Transit Administration Financial & Impact Summary 2007
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Federal Transit Administration Financial & Impact Summary 2007',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'annual_report',
    'government',
    'Produced a comprehensive annual report for Federal Transit Administration covering financial performance, program impact, and strategic outlook. The organic design incorporated interactive filters, stat highlight cards, and narrative photography to engage parents. Delivered as a 48-page print and digital publication.',
    'organic',
    'modular',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Archivo', 'Roboto']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator']::TEXT[],
    'mid',
    'parents',
    2007,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Financial & Impact Summary 2007' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Financial & Impact Summary 2007' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Financial & Impact Summary 2007' LIMIT 1), 28);

-- Project 256: Arclight AI Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Brand Portal',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'web_design',
    'technology',
    'Led the full redesign of Arclight AI''s web presence, creating a responsive, accessible site with a futuristic visual language. Key features included stat highlight cards, data maps, and an intuitive navigation system. The design prioritized performance and conversion for policy makers.',
    'futuristic',
    'grid',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Futura', 'PT Serif', 'Raleway']::TEXT[],
    ARRAY['Webflow', 'Procreate', 'Adobe InDesign']::TEXT[],
    'low',
    'policy makers',
    2016,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Portal' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Portal' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Arclight AI Brand Portal' LIMIT 1), 11);

-- Project 257: Medical Research Microsite for Wellbridge Community Health
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Medical Research Microsite for Wellbridge Community Health',
    (SELECT id FROM clients WHERE name = 'Wellbridge Community Health' LIMIT 1),
    'web_design',
    'healthcare',
    'Led the full redesign of Wellbridge Community Health''s web presence, creating a responsive, accessible site with a organic visual language. Key features included charts and graphs, process flow diagrams, and an intuitive navigation system. The design prioritized performance and conversion for tech-savvy millennials.',
    'organic',
    'split_screen',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Avenir', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe InDesign', 'Procreate']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2024,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Medical Research Microsite for Wellbridge Community Health' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Medical Research Microsite for Wellbridge Community Health' LIMIT 1), 29);

-- Project 258: Wavelength Music Festival E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'web_design',
    'entertainment',
    'Designed and prototyped a modern web experience for Wavelength Music Festival focused on Film Production. The site featured charts and graphs, interactive filters, and seamless mobile responsiveness. User testing with prospective customers informed iterative design refinements.',
    'corporate',
    'card_based',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Poppins', 'Lora']::TEXT[],
    ARRAY['Adobe Premiere', 'Canva', 'Procreate', 'Webflow']::TEXT[],
    'mid',
    'prospective customers',
    2005,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival E-commerce Platform' LIMIT 1), 4);

-- Project 259: Cascade Legal Group Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Content Publication',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'editorial_design',
    'legal',
    'Created an editorial layout for Cascade Legal Group''s Thought Leadership content, blending longform storytelling with interactive filters and dashboard widgets. The data_driven design established a distinctive voice for reaching government officials.',
    'data_driven',
    'modular',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Nunito', 'Garamond']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator', 'Sketch']::TEXT[],
    'low',
    'government officials',
    2018,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 23);

-- Project 260: Harbor View Realty Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Harbor View Realty Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Developed a complete brand identity system for Harbor View Realty including logo, color palette, typography, and usage guidelines. The editorial direction was crafted to resonate with young professionals while differentiating Harbor View Realty in the real estate space. Delivered a comprehensive brand toolkit.',
    'editorial',
    'single_column',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Nunito', 'Avenir', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe XD', 'Procreate', 'Canva', 'Adobe InDesign']::TEXT[],
    'high',
    'young professionals',
    2022,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Harbor View Realty Brand Guidelines & Toolkit' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Brand Guidelines & Toolkit' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Brand Guidelines & Toolkit' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Brand Guidelines & Toolkit' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Brand Guidelines & Toolkit' LIMIT 1), 18);

-- Project 261: MedVista Health Systems Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Produced print collateral for MedVista Health Systems''s Telehealth initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive elegant design used sidebar callouts to communicate key messages to senior citizens.',
    'elegant',
    'freeform',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Archivo']::TEXT[],
    ARRAY['Canva', 'Sketch']::TEXT[],
    'mid',
    'senior citizens',
    2008,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Direct Mail Campaign' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Direct Mail Campaign' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Direct Mail Campaign' LIMIT 1), 30);

-- Project 262: 2019 Impact Report — Summit Lodge & Spa
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2019 Impact Report — Summit Lodge & Spa',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'annual_report',
    'travel_hospitality',
    'Produced a comprehensive annual report for Summit Lodge & Spa covering financial performance, program impact, and strategic outlook. The bold design incorporated full-bleed imagery, timeline visuals, and narrative photography to engage investors and stakeholders. Delivered as a 24-page print and digital publication.',
    'bold',
    'asymmetric',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Source Serif Pro', 'Oswald']::TEXT[],
    ARRAY['Canva', 'Adobe Premiere', 'Adobe Illustrator', 'Adobe InDesign']::TEXT[],
    'low',
    'investors and stakeholders',
    2019,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2019 Impact Report — Summit Lodge & Spa' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = '2019 Impact Report — Summit Lodge & Spa' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = '2019 Impact Report — Summit Lodge & Spa' LIMIT 1), 28);

-- Project 263: The Literacy Project Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The Literacy Project Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'The Literacy Project' LIMIT 1),
    'packaging',
    'nonprofit',
    'Created a packaging system for The Literacy Project''s Environmental Justice product line. The playful design used full-bleed imagery and tactile finishes to create a premium unboxing experience aligned with government officials expectations.',
    'playful',
    'asymmetric',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Open Sans', 'Lora']::TEXT[],
    ARRAY['After Effects', 'Webflow', 'Canva']::TEXT[],
    'high',
    'government officials',
    2014,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The Literacy Project Packaging Redesign' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'The Literacy Project Packaging Redesign' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'The Literacy Project Packaging Redesign' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'The Literacy Project Packaging Redesign' LIMIT 1), 17);

-- Project 264: Government Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Government Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'infographic',
    'government',
    'Created a multi-section infographic breaking down Environmental Policy trends for Federal Transit Administration. The design leveraged dashboard widgets, full-bleed imagery, and custom iconography to make dense data approachable for small business owners. Delivered in both digital and print-ready formats.',
    'playful',
    'grid',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Libre Baskerville']::TEXT[],
    ARRAY['Tableau', 'Adobe Photoshop', 'Blender']::TEXT[],
    'high',
    'small business owners',
    2016,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Government Impact Report Infographic' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Government Impact Report Infographic' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Government Impact Report Infographic' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Government Impact Report Infographic' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Government Impact Report Infographic' LIMIT 1), 37);

-- Project 265: Energy Efficiency Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Energy Efficiency Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'packaging',
    'energy',
    'Created a packaging system for GreenShift Renewables''s Energy Efficiency product line. The elegant design used hero photography and tactile finishes to create a premium unboxing experience aligned with government officials expectations.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Montserrat', 'Georgia']::TEXT[],
    ARRAY['Webflow', 'Adobe XD']::TEXT[],
    'mid',
    'government officials',
    2003,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Energy Efficiency Limited Edition Packaging' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Energy Efficiency Limited Edition Packaging' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Energy Efficiency Limited Edition Packaging' LIMIT 1), 23);

-- Project 266: Distance Education Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Distance Education Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'editorial_design',
    'education',
    'Created an editorial layout for Global Learners Initiative''s Distance Education content, blending longform storytelling with process flow diagrams and data maps. The data_driven design established a distinctive voice for reaching nonprofit donors.',
    'data_driven',
    'single_column',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Space Grotesk']::TEXT[],
    ARRAY['D3.js', 'Adobe Photoshop', 'Adobe XD', 'Canva']::TEXT[],
    'high',
    'nonprofit donors',
    2012,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Distance Education Editorial Feature' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Distance Education Editorial Feature' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Distance Education Editorial Feature' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Distance Education Editorial Feature' LIMIT 1), 49);

-- Project 267: Silver Screen Distribution Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'packaging',
    'entertainment',
    'Designed product packaging for Silver Screen Distribution that balanced shelf appeal with brand storytelling. The futuristic design featured dashboard widgets, sustainable material choices, and clear product information hierarchy for internal team members.',
    'futuristic',
    'card_based',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Poppins', 'Lora', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'Adobe Premiere']::TEXT[],
    'high',
    'internal team members',
    2021,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 8);

-- Project 268: 2019 Impact Report — Granite Peak Capital
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2019 Impact Report — Granite Peak Capital',
    (SELECT id FROM clients WHERE name = 'Granite Peak Capital' LIMIT 1),
    'annual_report',
    'finance',
    'Designed Granite Peak Capital''s flagship annual report with a focus on storytelling through data. The report featured interactive filters and charts and graphs across 40 pages, balancing detailed financials with human-interest narratives for tech-savvy millennials.',
    'retro',
    'modular',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Inter', 'PT Serif']::TEXT[],
    ARRAY['Adobe InDesign', 'Procreate']::TEXT[],
    'low',
    'tech-savvy millennials',
    2019,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2019 Impact Report — Granite Peak Capital' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = '2019 Impact Report — Granite Peak Capital' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = '2019 Impact Report — Granite Peak Capital' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = '2019 Impact Report — Granite Peak Capital' LIMIT 1), 32);

-- Project 269: Coastal Harvest Seafood KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'data_visualization',
    'food_beverage',
    'Built an interactive data visualization system for Coastal Harvest Seafood to explore Product Launch metrics. The retro design featured interactive filters, stat highlight cards, and filterable views that empowered internal team members to discover insights independently.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Georgia', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'D3.js']::TEXT[],
    'premium',
    'internal team members',
    2022,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood KPI Visualization System' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood KPI Visualization System' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood KPI Visualization System' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood KPI Visualization System' LIMIT 1), 9);

-- Project 270: Energy Annual Review 2022
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Energy Annual Review 2022',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'annual_report',
    'energy',
    'Designed GreenShift Renewables''s flagship annual report with a focus on storytelling through data. The report featured stat highlight cards and process flow diagrams across 24 pages, balancing detailed financials with human-interest narratives for policy makers.',
    'editorial',
    'asymmetric',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Inter', 'Montserrat']::TEXT[],
    ARRAY['Blender', 'Adobe InDesign', 'Figma', 'Sketch']::TEXT[],
    'mid',
    'policy makers',
    2022,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Energy Annual Review 2022' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Energy Annual Review 2022' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Energy Annual Review 2022' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Energy Annual Review 2022' LIMIT 1), 10);

-- Project 271: Wanderlust Travel Co. Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'packaging',
    'travel_hospitality',
    'Created a packaging system for Wanderlust Travel Co.''s Eco Tourism product line. The retro design used custom illustrations and tactile finishes to create a premium unboxing experience aligned with tech-savvy millennials expectations.',
    'retro',
    'card_based',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Oswald', 'Roboto', 'Lora']::TEXT[],
    ARRAY['After Effects', 'Tableau', 'Adobe InDesign']::TEXT[],
    'high',
    'tech-savvy millennials',
    2005,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Packaging Redesign' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Packaging Redesign' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Packaging Redesign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Packaging Redesign' LIMIT 1), 48);

-- Project 272: Government Annual Review 2022
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Government Annual Review 2022',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'annual_report',
    'government',
    'Produced a comprehensive annual report for State of Oregon — DEQ covering financial performance, program impact, and strategic outlook. The minimalist design incorporated data maps, pull quotes, and narrative photography to engage parents. Delivered as a 48-page print and digital publication.',
    'minimalist',
    'single_column',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Raleway', 'Playfair Display']::TEXT[],
    ARRAY['Canva', 'Blender', 'After Effects']::TEXT[],
    'mid',
    'parents',
    2022,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Government Annual Review 2022' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Government Annual Review 2022' LIMIT 1), 15);

-- Project 273: Food Security Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Food Security Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Urban Roots Food Bank' LIMIT 1),
    'editorial_design',
    'nonprofit',
    'Designed a publication for Urban Roots Food Bank focused on Food Security, featuring a futuristic editorial style with icon systems, sidebar callouts, and thoughtful typography across 24 pages for small business owners.',
    'futuristic',
    'split_screen',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Archivo', 'Nunito']::TEXT[],
    ARRAY['Canva', 'Figma', 'Procreate', 'Webflow']::TEXT[],
    'low',
    'small business owners',
    2023,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Food Security Editorial Feature' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Food Security Editorial Feature' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Food Security Editorial Feature' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Food Security Editorial Feature' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Food Security Editorial Feature' LIMIT 1), 20);

-- Project 274: Case Studies Limited Edition Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Case Studies Limited Edition Packaging',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'packaging',
    'legal',
    'Created a packaging system for Thornton & Associates LLP''s Case Studies product line. The data_driven design used hero photography and tactile finishes to create a premium unboxing experience aligned with environmental advocates expectations.',
    'data_driven',
    'asymmetric',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Futura', 'Fira Sans']::TEXT[],
    ARRAY['Tableau', 'Adobe XD', 'Webflow']::TEXT[],
    'high',
    'environmental advocates',
    2005,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Case Studies Limited Edition Packaging' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Case Studies Limited Edition Packaging' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Case Studies Limited Edition Packaging' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Case Studies Limited Edition Packaging' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Case Studies Limited Edition Packaging' LIMIT 1), 21);

-- Project 275: Healthcare Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Healthcare Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'infographic',
    'healthcare',
    'Designed a visually compelling infographic for MedVista Health Systems that distilled complex Telehealth data into an accessible, shareable format. The piece featured testimonial blocks and data maps, using a playful aesthetic to engage environmental advocates. Color-coded sections guided readers through key statistics and takeaways.',
    'playful',
    'card_based',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Avenir', 'Montserrat', 'IBM Plex Sans']::TEXT[],
    ARRAY['Webflow', 'D3.js', 'Adobe XD']::TEXT[],
    'premium',
    'environmental advocates',
    2015,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 16);

-- Project 276: Precision Dynamics Corp. Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'branding_identity',
    'manufacturing',
    'Developed a complete brand identity system for Precision Dynamics Corp. including logo, color palette, typography, and usage guidelines. The corporate direction was crafted to resonate with C-suite executives while differentiating Precision Dynamics Corp. in the manufacturing space. Delivered a comprehensive brand toolkit.',
    'corporate',
    'split_screen',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Raleway', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Adobe InDesign', 'Blender', 'Adobe Photoshop']::TEXT[],
    'high',
    'C-suite executives',
    2004,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Visual Identity Refresh' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Visual Identity Refresh' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Visual Identity Refresh' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Visual Identity Refresh' LIMIT 1), 3);

-- Project 277: Silver Screen Distribution Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'packaging',
    'entertainment',
    'Designed product packaging for Silver Screen Distribution that balanced shelf appeal with brand storytelling. The organic design featured custom illustrations, sustainable material choices, and clear product information hierarchy for senior citizens.',
    'organic',
    'grid',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Avenir', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'Adobe XD', 'Blender']::TEXT[],
    'premium',
    'senior citizens',
    2023,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Retail Packaging Suite' LIMIT 1), 34);

-- Project 278: Granite Peak Capital Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Granite Peak Capital Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Granite Peak Capital' LIMIT 1),
    'branding_identity',
    'finance',
    'Developed a complete brand identity system for Granite Peak Capital including logo, color palette, typography, and usage guidelines. The corporate direction was crafted to resonate with prospective customers while differentiating Granite Peak Capital in the finance space. Delivered a comprehensive brand toolkit.',
    'corporate',
    'editorial',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Raleway', 'Open Sans', 'Montserrat']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe XD', 'Figma']::TEXT[],
    'high',
    'prospective customers',
    2012,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Logo & Identity Package' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Logo & Identity Package' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Logo & Identity Package' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Logo & Identity Package' LIMIT 1), 13);

-- Project 279: Trailhead Adventures Stakeholder Report 2004
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Stakeholder Report 2004',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'annual_report',
    'travel_hospitality',
    'Produced a comprehensive annual report for Trailhead Adventures covering financial performance, program impact, and strategic outlook. The playful design incorporated pull quotes, interactive filters, and narrative photography to engage students and educators. Delivered as a 48-page print and digital publication.',
    'playful',
    'grid',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe Illustrator', 'D3.js', 'After Effects']::TEXT[],
    'premium',
    'students and educators',
    2004,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Stakeholder Report 2004' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Stakeholder Report 2004' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Stakeholder Report 2004' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Stakeholder Report 2004' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Stakeholder Report 2004' LIMIT 1), 8);

-- Project 280: Fieldstone Brewing Co. Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Fieldstone Brewing Co. Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Developed a complete brand identity system for Fieldstone Brewing Co. including logo, color palette, typography, and usage guidelines. The bold direction was crafted to resonate with policy makers while differentiating Fieldstone Brewing Co. in the food beverage space. Delivered a comprehensive brand toolkit.',
    'bold',
    'asymmetric',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Nunito', 'Work Sans']::TEXT[],
    ARRAY['D3.js', 'Canva', 'Adobe InDesign', 'Adobe Photoshop']::TEXT[],
    'low',
    'policy makers',
    2022,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Visual Identity Refresh' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Visual Identity Refresh' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Visual Identity Refresh' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Visual Identity Refresh' LIMIT 1), 24);

-- Project 281: Coastal Harvest Seafood Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'print_collateral',
    'food_beverage',
    'Designed a suite of print materials for Coastal Harvest Seafood including brochures, flyers, and event signage. The elegant design featured stat highlight cards and testimonial blocks, maintaining brand consistency across all touchpoints for government officials.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Nunito', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Tableau']::TEXT[],
    'low',
    'government officials',
    2019,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Print Ad Series' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Print Ad Series' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Print Ad Series' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Print Ad Series' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Print Ad Series' LIMIT 1), 59);

-- Project 282: State of Oregon — DEQ Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Catalog Design',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'print_collateral',
    'government',
    'Produced print collateral for State of Oregon — DEQ''s Public Safety initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive playful design used testimonial blocks to communicate key messages to government officials.',
    'playful',
    'asymmetric',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Futura', 'Merriweather', 'Open Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Procreate', 'Adobe XD']::TEXT[],
    'premium',
    'government officials',
    2004,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Catalog Design' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Catalog Design' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Catalog Design' LIMIT 1), 6);

-- Project 283: Skyline Properties Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Created a cohesive visual identity for Skyline Properties rooted in their Commercial Spaces mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with families.',
    'data_driven',
    'freeform',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Archivo']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Photoshop']::TEXT[],
    'low',
    'families',
    2003,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Visual Identity Refresh' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Skyline Properties Visual Identity Refresh' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Skyline Properties Visual Identity Refresh' LIMIT 1), 14);

-- Project 284: Cornerstone Development Group Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Developed a complete brand identity system for Cornerstone Development Group including logo, color palette, typography, and usage guidelines. The retro direction was crafted to resonate with students and educators while differentiating Cornerstone Development Group in the real estate space. Delivered a comprehensive brand toolkit.',
    'retro',
    'freeform',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Archivo']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe XD', 'Procreate']::TEXT[],
    'mid',
    'students and educators',
    2019,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Visual Identity Refresh' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Visual Identity Refresh' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Visual Identity Refresh' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Visual Identity Refresh' LIMIT 1), 18);

-- Project 285: Education Annual Review 2019
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Education Annual Review 2019',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'annual_report',
    'education',
    'Designed Global Learners Initiative''s flagship annual report with a focus on storytelling through data. The report featured infographic sections and pull quotes across 56 pages, balancing detailed financials with human-interest narratives for prospective customers.',
    'organic',
    'asymmetric',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Proxima Nova']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Canva']::TEXT[],
    'mid',
    'prospective customers',
    2019,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Education Annual Review 2019' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Education Annual Review 2019' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Education Annual Review 2019' LIMIT 1), 13);

-- Project 286: Federal Transit Administration Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Federal Transit Administration Brand Identity System',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'branding_identity',
    'government',
    'Created a cohesive visual identity for Federal Transit Administration rooted in their Transit Planning mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with environmental advocates.',
    'elegant',
    'card_based',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop', 'D3.js', 'Figma']::TEXT[],
    'premium',
    'environmental advocates',
    2021,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Brand Identity System' LIMIT 1), 8);

-- Project 287: Silver Screen Distribution Year in Review 2019
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Year in Review 2019',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'annual_report',
    'entertainment',
    'Designed Silver Screen Distribution''s flagship annual report with a focus on storytelling through data. The report featured sidebar callouts and process flow diagrams across 40 pages, balancing detailed financials with human-interest narratives for community members.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Roboto', 'IBM Plex Sans']::TEXT[],
    ARRAY['Blender', 'Adobe Photoshop']::TEXT[],
    'high',
    'community members',
    2019,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Year in Review 2019' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Year in Review 2019' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Year in Review 2019' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Year in Review 2019' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Year in Review 2019' LIMIT 1), 19);

-- Project 288: Civic Engagement Publication Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Civic Engagement Publication Design',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'editorial_design',
    'government',
    'Created an editorial layout for State of Oregon — DEQ''s Civic Engagement content, blending longform storytelling with interactive filters and testimonial blocks. The minimalist design established a distinctive voice for reaching prospective customers.',
    'minimalist',
    'split_screen',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Georgia', 'Source Serif Pro', 'Space Grotesk']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop']::TEXT[],
    'mid',
    'prospective customers',
    2015,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 14);

-- Project 289: Cornerstone Development Group Print Ad Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Print Ad Series',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'print_collateral',
    'real_estate',
    'Designed a suite of print materials for Cornerstone Development Group including brochures, flyers, and event signage. The retro design featured testimonial blocks and stat highlight cards, maintaining brand consistency across all touchpoints for senior citizens.',
    'retro',
    'single_column',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Lora', 'Space Grotesk']::TEXT[],
    ARRAY['Tableau', 'Procreate', 'D3.js', 'Adobe Premiere']::TEXT[],
    'premium',
    'senior citizens',
    2016,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Print Ad Series' LIMIT 1), 55);

-- Project 290: Vanguard Municipal Finance Digital Experience
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Digital Experience',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'web_design',
    'finance',
    'Designed and prototyped a modern web experience for Vanguard Municipal Finance focused on Market Trends. The site featured dashboard widgets, charts and graphs, and seamless mobile responsiveness. User testing with families informed iterative design refinements.',
    'bold',
    'editorial',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Merriweather', 'Open Sans']::TEXT[],
    ARRAY['Tableau', 'Blender', 'Adobe Illustrator']::TEXT[],
    'low',
    'families',
    2025,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Digital Experience' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Digital Experience' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Digital Experience' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Digital Experience' LIMIT 1), 29);

-- Project 291: Real Estate Annual Review 2009
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Real Estate Annual Review 2009',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'annual_report',
    'real_estate',
    'Designed Cornerstone Development Group''s flagship annual report with a focus on storytelling through data. The report featured charts and graphs and data maps across 24 pages, balancing detailed financials with human-interest narratives for families.',
    'futuristic',
    'single_column',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Garamond', 'Merriweather', 'Fira Sans']::TEXT[],
    ARRAY['Tableau', 'Canva', 'Sketch', 'Adobe Photoshop']::TEXT[],
    'mid',
    'families',
    2009,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Real Estate Annual Review 2009' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Real Estate Annual Review 2009' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Real Estate Annual Review 2009' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Real Estate Annual Review 2009' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Real Estate Annual Review 2009' LIMIT 1), 45);

-- Project 292: Nonprofit Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nonprofit Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'The Literacy Project' LIMIT 1),
    'data_visualization',
    'nonprofit',
    'Built an interactive data visualization system for The Literacy Project to explore Housing Access metrics. The retro design featured process flow diagrams, stat highlight cards, and filterable views that empowered families to discover insights independently.',
    'retro',
    'modular',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Libre Baskerville', 'Avenir']::TEXT[],
    ARRAY['Adobe Premiere', 'D3.js']::TEXT[],
    'premium',
    'families',
    2022,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nonprofit Benchmark Dashboard' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Nonprofit Benchmark Dashboard' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Nonprofit Benchmark Dashboard' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Nonprofit Benchmark Dashboard' LIMIT 1), 5);

-- Project 293: Precision Dynamics Corp. Annual Report 2017
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Annual Report 2017',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Designed Precision Dynamics Corp.''s flagship annual report with a focus on storytelling through data. The report featured sidebar callouts and full-bleed imagery across 80 pages, balancing detailed financials with human-interest narratives for parents.',
    'editorial',
    'freeform',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Roboto', 'Helvetica Neue']::TEXT[],
    ARRAY['Tableau', 'Adobe Premiere', 'Canva', 'After Effects']::TEXT[],
    'premium',
    'parents',
    2017,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Annual Report 2017' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Annual Report 2017' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Annual Report 2017' LIMIT 1), 16);

-- Project 294: Investment Returns Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Investment Returns Data Explorer',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'data_visualization',
    'real_estate',
    'Built an interactive data visualization system for Skyline Properties to explore Investment Returns metrics. The bold design featured testimonial blocks, data maps, and filterable views that empowered community members to discover insights independently.',
    'bold',
    'asymmetric',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Futura', 'Montserrat']::TEXT[],
    ARRAY['Sketch', 'Adobe Illustrator']::TEXT[],
    'mid',
    'community members',
    2025,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Investment Returns Data Explorer' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Investment Returns Data Explorer' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Investment Returns Data Explorer' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Investment Returns Data Explorer' LIMIT 1), 11);

-- Project 295: Real Estate Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Real Estate Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'infographic',
    'real_estate',
    'Designed a visually compelling infographic for Cornerstone Development Group that distilled complex Market Analysis data into an accessible, shareable format. The piece featured charts and graphs and stat highlight cards, using a editorial aesthetic to engage retail consumers. Color-coded sections guided readers through key statistics and takeaways.',
    'editorial',
    'asymmetric',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Oswald', 'Merriweather', 'Open Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Webflow', 'Adobe Illustrator']::TEXT[],
    'premium',
    'retail consumers',
    2025,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Real Estate Impact Report Infographic' LIMIT 1), 19);

-- Project 296: Clearpath Diagnostics Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clearpath Diagnostics Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'presentation',
    'healthcare',
    'Created a polished pitch deck for Clearpath Diagnostics with 64 slides covering strategy, data, and vision. The editorial design balanced timeline visuals with clean typography to keep environmental advocates engaged throughout.',
    'editorial',
    'asymmetric',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Merriweather']::TEXT[],
    ARRAY['Adobe XD', 'Webflow']::TEXT[],
    'high',
    'environmental advocates',
    2013,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Board Meeting Deck' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Board Meeting Deck' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Board Meeting Deck' LIMIT 1), 23);

-- Project 297: Wavelength Music Festival Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Content Publication',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'editorial_design',
    'entertainment',
    'Designed a publication for Wavelength Music Festival focused on Season Launch, featuring a retro editorial style with comparison tables, timeline visuals, and thoughtful typography across 64 pages for students and educators.',
    'retro',
    'grid',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Raleway', 'Montserrat']::TEXT[],
    ARRAY['Adobe XD', 'Tableau', 'Adobe Premiere', 'After Effects']::TEXT[],
    'low',
    'students and educators',
    2009,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Content Publication' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Content Publication' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Content Publication' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Content Publication' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Content Publication' LIMIT 1), 52);

-- Project 298: Curriculum Innovation By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Curriculum Innovation By the Numbers',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'infographic',
    'education',
    'Designed a visually compelling infographic for STEM Futures Foundation that distilled complex Curriculum Innovation data into an accessible, shareable format. The piece featured stat highlight cards and sidebar callouts, using a data_driven aesthetic to engage retail consumers. Color-coded sections guided readers through key statistics and takeaways.',
    'data_driven',
    'asymmetric',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Work Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe InDesign', 'After Effects']::TEXT[],
    'high',
    'retail consumers',
    2010,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Curriculum Innovation By the Numbers' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Curriculum Innovation By the Numbers' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Curriculum Innovation By the Numbers' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Curriculum Innovation By the Numbers' LIMIT 1), 41);

-- Project 299: CoreSteel Industries Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'infographic',
    'manufacturing',
    'Designed a visually compelling infographic for CoreSteel Industries that distilled complex Supply Chain data into an accessible, shareable format. The piece featured infographic sections and custom illustrations, using a corporate aesthetic to engage government officials. Color-coded sections guided readers through key statistics and takeaways.',
    'corporate',
    'freeform',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Space Grotesk', 'Poppins']::TEXT[],
    ARRAY['Tableau', 'Figma', 'Adobe Illustrator']::TEXT[],
    'high',
    'government officials',
    2010,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Key Metrics Infographic' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Key Metrics Infographic' LIMIT 1), 4);

-- Project 300: SunBridge Solar Year in Review 2008
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SunBridge Solar Year in Review 2008',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'annual_report',
    'energy',
    'Designed SunBridge Solar''s flagship annual report with a focus on storytelling through data. The report featured infographic sections and custom illustrations across 48 pages, balancing detailed financials with human-interest narratives for industry analysts.',
    'futuristic',
    'split_screen',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Garamond']::TEXT[],
    ARRAY['Tableau', 'Adobe Photoshop', 'Sketch']::TEXT[],
    'high',
    'industry analysts',
    2008,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SunBridge Solar Year in Review 2008' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Year in Review 2008' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Year in Review 2008' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Year in Review 2008' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Year in Review 2008' LIMIT 1), 24);

-- Project 301: 2011 Impact Report — Trailhead Adventures
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2011 Impact Report — Trailhead Adventures',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'annual_report',
    'travel_hospitality',
    'Designed Trailhead Adventures''s flagship annual report with a focus on storytelling through data. The report featured charts and graphs and infographic sections across 48 pages, balancing detailed financials with human-interest narratives for internal team members.',
    'elegant',
    'editorial',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Roboto', 'Space Grotesk', 'Lora']::TEXT[],
    ARRAY['Canva', 'Adobe Photoshop', 'Adobe InDesign', 'Procreate']::TEXT[],
    'mid',
    'internal team members',
    2011,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = '2011 Impact Report — Trailhead Adventures' LIMIT 1), 38);

-- Project 302: Federal Transit Administration Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Federal Transit Administration Content Publication',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'editorial_design',
    'government',
    'Designed a publication for Federal Transit Administration focused on Public Health, featuring a playful editorial style with full-bleed imagery, sidebar callouts, and thoughtful typography across 64 pages for small business owners.',
    'playful',
    'single_column',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Nunito', 'Georgia', 'Open Sans']::TEXT[],
    ARRAY['Canva', 'Figma']::TEXT[],
    'premium',
    'small business owners',
    2011,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Content Publication' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Content Publication' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Content Publication' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Federal Transit Administration Content Publication' LIMIT 1), 5);

-- Project 303: Wavelength Music Festival Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'presentation',
    'entertainment',
    'Created a polished pitch deck for Wavelength Music Festival with 80 slides covering strategy, data, and vision. The futuristic design balanced process flow diagrams with clean typography to keep tech-savvy millennials engaged throughout.',
    'futuristic',
    'asymmetric',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Garamond', 'DM Sans', 'Georgia']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'mid',
    'tech-savvy millennials',
    2016,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Conference Presentation' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Conference Presentation' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Conference Presentation' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Conference Presentation' LIMIT 1), 30);

-- Project 304: BlueLine Wealth Advisors Stakeholder Report 2016
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Stakeholder Report 2016',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'annual_report',
    'finance',
    'Produced a comprehensive annual report for BlueLine Wealth Advisors covering financial performance, program impact, and strategic outlook. The futuristic design incorporated timeline visuals, process flow diagrams, and narrative photography to engage families. Delivered as a 64-page print and digital publication.',
    'futuristic',
    'card_based',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Poppins']::TEXT[],
    ARRAY['Adobe Illustrator', 'Canva', 'D3.js', 'Adobe Photoshop']::TEXT[],
    'high',
    'families',
    2016,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Stakeholder Report 2016' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Stakeholder Report 2016' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Stakeholder Report 2016' LIMIT 1), 38);

-- Project 305: Market Trends Awareness Campaign — Meridian Credit Union
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Market Trends Awareness Campaign — Meridian Credit Union',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'social_media',
    'finance',
    'Developed a social media content system for Meridian Credit Union spanning Instagram, LinkedIn, and Twitter. The bold visual approach used charts and graphs and sidebar callouts to boost engagement with policy makers. Included templates, content guidelines, and a 30-day launch calendar.',
    'bold',
    'card_based',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Avenir', 'Oswald', 'Montserrat']::TEXT[],
    ARRAY['Figma', 'Sketch']::TEXT[],
    'low',
    'policy makers',
    2011,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Meridian Credit Union' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Meridian Credit Union' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Meridian Credit Union' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Market Trends Awareness Campaign — Meridian Credit Union' LIMIT 1), 45);

-- Project 306: Atlas Outdoor Co. Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'print_collateral',
    'retail',
    'Designed a suite of print materials for Atlas Outdoor Co. including brochures, flyers, and event signage. The retro design featured comparison tables and charts and graphs, maintaining brand consistency across all touchpoints for retail consumers.',
    'retro',
    'freeform',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Montserrat', 'Inter']::TEXT[],
    ARRAY['Webflow', 'Adobe Premiere', 'After Effects']::TEXT[],
    'mid',
    'retail consumers',
    2014,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Brochure & Print Suite' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Brochure & Print Suite' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Brochure & Print Suite' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Brochure & Print Suite' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Brochure & Print Suite' LIMIT 1), 40);

-- Project 307: NovaCare Therapeutics Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'NovaCare Therapeutics Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'NovaCare Therapeutics' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Designed a suite of print materials for NovaCare Therapeutics including brochures, flyers, and event signage. The minimalist design featured icon systems and infographic sections, maintaining brand consistency across all touchpoints for retail consumers.',
    'minimalist',
    'freeform',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Avenir', 'Proxima Nova']::TEXT[],
    ARRAY['Adobe Premiere', 'After Effects']::TEXT[],
    'premium',
    'retail consumers',
    2010,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Brochure & Print Suite' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Brochure & Print Suite' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'NovaCare Therapeutics Brochure & Print Suite' LIMIT 1), 18);

-- Project 308: AI & Machine Learning Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'AI & Machine Learning Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Pivotal Data Systems' LIMIT 1),
    'data_visualization',
    'technology',
    'Designed a comprehensive data visualization suite for Pivotal Data Systems covering AI & Machine Learning analytics. The system included hero photography, real-time dashboards, and exportable reports, all styled in a bold visual language for students and educators.',
    'bold',
    'split_screen',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Poppins', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'Sketch', 'Adobe Photoshop']::TEXT[],
    'mid',
    'students and educators',
    2010,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Interactive Data Portal' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Interactive Data Portal' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Interactive Data Portal' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'AI & Machine Learning Interactive Data Portal' LIMIT 1), 30);

-- Project 309: Wavelength Music Festival Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'print_collateral',
    'entertainment',
    'Produced print collateral for Wavelength Music Festival''s Streaming Platform initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive futuristic design used full-bleed imagery to communicate key messages to tech-savvy millennials.',
    'futuristic',
    'card_based',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Georgia']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Premiere', 'Adobe Illustrator', 'D3.js']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2010,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brochure & Print Suite' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brochure & Print Suite' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brochure & Print Suite' LIMIT 1), 25);

-- Project 310: CoreSteel Industries Digital Experience
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Digital Experience',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'web_design',
    'manufacturing',
    'Led the full redesign of CoreSteel Industries''s web presence, creating a responsive, accessible site with a editorial visual language. Key features included comparison tables, full-bleed imagery, and an intuitive navigation system. The design prioritized performance and conversion for senior citizens.',
    'editorial',
    'single_column',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Avenir']::TEXT[],
    ARRAY['Adobe InDesign', 'D3.js', 'Sketch']::TEXT[],
    'low',
    'senior citizens',
    2015,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Experience' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Experience' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Experience' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Experience' LIMIT 1), 41);

-- Project 311: MedVista Health Systems Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Catalog Design',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Produced print collateral for MedVista Health Systems''s Clinical Trials initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive playful design used infographic sections to communicate key messages to prospective customers.',
    'playful',
    'single_column',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Avenir', 'Poppins', 'Inter']::TEXT[],
    ARRAY['After Effects', 'Adobe XD', 'Webflow', 'Tableau']::TEXT[],
    'mid',
    'prospective customers',
    2025,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Catalog Design' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Catalog Design' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Catalog Design' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Catalog Design' LIMIT 1), 20);

-- Project 312: Adventure Travel Awareness Campaign — Trailhead Adventures
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Adventure Travel Awareness Campaign — Trailhead Adventures',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'social_media',
    'travel_hospitality',
    'Developed a social media content system for Trailhead Adventures spanning Instagram, LinkedIn, and Twitter. The organic visual approach used process flow diagrams and sidebar callouts to boost engagement with young professionals. Included templates, content guidelines, and a 30-day launch calendar.',
    'organic',
    'editorial',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Georgia', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Premiere']::TEXT[],
    'mid',
    'young professionals',
    2017,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Adventure Travel Awareness Campaign — Trailhead Adventures' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Adventure Travel Awareness Campaign — Trailhead Adventures' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Adventure Travel Awareness Campaign — Trailhead Adventures' LIMIT 1), 14);

-- Project 313: SaaS Platform By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SaaS Platform By the Numbers',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'infographic',
    'technology',
    'Created a multi-section infographic breaking down SaaS Platform trends for Quantum Mesh Networks. The design leveraged data maps, testimonial blocks, and custom iconography to make dense data approachable for general public. Delivered in both digital and print-ready formats.',
    'bold',
    'freeform',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Work Sans', 'DM Sans', 'Proxima Nova']::TEXT[],
    ARRAY['Adobe InDesign', 'Tableau', 'Adobe Premiere', 'After Effects']::TEXT[],
    'premium',
    'general public',
    2007,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SaaS Platform By the Numbers' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'SaaS Platform By the Numbers' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'SaaS Platform By the Numbers' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'SaaS Platform By the Numbers' LIMIT 1), 5);

-- Project 314: Silver Screen Distribution Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'packaging',
    'entertainment',
    'Designed product packaging for Silver Screen Distribution that balanced shelf appeal with brand storytelling. The corporate design featured sidebar callouts, sustainable material choices, and clear product information hierarchy for policy makers.',
    'corporate',
    'grid',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Proxima Nova', 'Nunito']::TEXT[],
    ARRAY['D3.js', 'Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'premium',
    'policy makers',
    2011,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Packaging Redesign' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Packaging Redesign' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Packaging Redesign' LIMIT 1), 24);

-- Project 315: Cybersecurity Publication Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cybersecurity Publication Design',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'editorial_design',
    'technology',
    'Created an editorial layout for Nexon Cloud Solutions''s Cybersecurity content, blending longform storytelling with data maps and custom illustrations. The playful design established a distinctive voice for reaching policy makers.',
    'playful',
    'grid',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Roboto', 'Archivo']::TEXT[],
    ARRAY['Webflow', 'Procreate', 'Figma']::TEXT[],
    'premium',
    'policy makers',
    2013,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cybersecurity Publication Design' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Cybersecurity Publication Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Cybersecurity Publication Design' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cybersecurity Publication Design' LIMIT 1), 56);

-- Project 316: Thornton & Associates LLP Event Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP Event Materials',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'print_collateral',
    'legal',
    'Produced print collateral for Thornton & Associates LLP''s Practice Areas initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive editorial design used comparison tables to communicate key messages to general public.',
    'editorial',
    'freeform',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Lora', 'Futura']::TEXT[],
    ARRAY['Adobe Photoshop', 'D3.js', 'Adobe XD', 'Sketch']::TEXT[],
    'mid',
    'general public',
    2025,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Event Materials' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Event Materials' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Event Materials' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Event Materials' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP Event Materials' LIMIT 1), 32);

-- Project 317: Meridian Credit Union Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'social_media',
    'finance',
    'Created a multi-platform social campaign for Meridian Credit Union centered on Wealth Growth. The design system featured interactive filters, adaptable templates, and motion graphics optimized for each platform. Targeted nonprofit donors with platform-specific messaging strategies.',
    'corporate',
    'freeform',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Roboto', 'Raleway']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator']::TEXT[],
    'mid',
    'nonprofit donors',
    2016,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Social Media Campaign' LIMIT 1), 28);

-- Project 318: Meridian Credit Union Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Meridian Credit Union Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'presentation',
    'finance',
    'Created a polished pitch deck for Meridian Credit Union with 32 slides covering strategy, data, and vision. The corporate design balanced sidebar callouts with clean typography to keep students and educators engaged throughout.',
    'corporate',
    'card_based',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Archivo', 'Raleway', 'Futura']::TEXT[],
    ARRAY['Figma', 'Adobe InDesign']::TEXT[],
    'low',
    'students and educators',
    2006,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Conference Presentation' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Conference Presentation' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Conference Presentation' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Conference Presentation' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Meridian Credit Union Conference Presentation' LIMIT 1), 46);

-- Project 319: Pivotal Data Systems Sales Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pivotal Data Systems Sales Presentation',
    (SELECT id FROM clients WHERE name = 'Pivotal Data Systems' LIMIT 1),
    'presentation',
    'technology',
    'Designed a high-impact presentation deck for Pivotal Data Systems to communicate IoT Solutions insights to internal team members. The data_driven slide design featured pull quotes, comparison tables, and clear data storytelling across 40 slides.',
    'data_driven',
    'modular',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Source Serif Pro', 'Fira Sans']::TEXT[],
    ARRAY['Sketch', 'After Effects', 'Blender']::TEXT[],
    'low',
    'internal team members',
    2023,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Sales Presentation' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Sales Presentation' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Pivotal Data Systems Sales Presentation' LIMIT 1), 26);

-- Project 320: Vanguard Municipal Finance Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Brand Portal',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'web_design',
    'finance',
    'Led the full redesign of Vanguard Municipal Finance''s web presence, creating a responsive, accessible site with a data_driven visual language. Key features included testimonial blocks, charts and graphs, and an intuitive navigation system. The design prioritized performance and conversion for industry analysts.',
    'data_driven',
    'grid',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Fira Sans']::TEXT[],
    ARRAY['Tableau', 'Blender', 'Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'low',
    'industry analysts',
    2012,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Brand Portal' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Brand Portal' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Brand Portal' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Brand Portal' LIMIT 1), 34);

-- Project 321: 2004 Impact Report — Quantum Mesh Networks
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '2004 Impact Report — Quantum Mesh Networks',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'annual_report',
    'technology',
    'Designed Quantum Mesh Networks''s flagship annual report with a focus on storytelling through data. The report featured infographic sections and comparison tables across 32 pages, balancing detailed financials with human-interest narratives for families.',
    'retro',
    'editorial',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Avenir', 'Open Sans', 'Archivo']::TEXT[],
    ARRAY['Sketch', 'Webflow']::TEXT[],
    'high',
    'families',
    2004,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = '2004 Impact Report — Quantum Mesh Networks' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Quantum Mesh Networks' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Quantum Mesh Networks' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = '2004 Impact Report — Quantum Mesh Networks' LIMIT 1), 60);

-- Project 322: MedVista Health Systems Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Designed a publication for MedVista Health Systems focused on Preventive Care, featuring a organic editorial style with comparison tables, stat highlight cards, and thoughtful typography across 48 pages for families.',
    'organic',
    'freeform',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Nunito']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Illustrator', 'Blender']::TEXT[],
    'high',
    'families',
    2014,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Whitepaper Series' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Whitepaper Series' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Whitepaper Series' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Whitepaper Series' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Whitepaper Series' LIMIT 1), 36);

-- Project 323: Vanguard Municipal Finance KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'data_visualization',
    'finance',
    'Designed a comprehensive data visualization suite for Vanguard Municipal Finance covering Market Trends analytics. The system included interactive filters, real-time dashboards, and exportable reports, all styled in a organic visual language for small business owners.',
    'organic',
    'editorial',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Merriweather', 'DM Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'After Effects']::TEXT[],
    'mid',
    'small business owners',
    2014,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance KPI Visualization System' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance KPI Visualization System' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance KPI Visualization System' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance KPI Visualization System' LIMIT 1), 53);

-- Project 324: Brand Launch Keynote Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Brand Launch Keynote Deck',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'presentation',
    'retail',
    'Designed a high-impact presentation deck for Ember & Oak Home Goods to communicate Brand Launch insights to young professionals. The editorial slide design featured sidebar callouts, stat highlight cards, and clear data storytelling across 48 slides.',
    'editorial',
    'card_based',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Oswald', 'Avenir']::TEXT[],
    ARRAY['Figma', 'Tableau']::TEXT[],
    'mid',
    'young professionals',
    2006,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Brand Launch Keynote Deck' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Brand Launch Keynote Deck' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Brand Launch Keynote Deck' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Brand Launch Keynote Deck' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Brand Launch Keynote Deck' LIMIT 1), 34);

-- Project 325: Manufacturing Annual Review 2009
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Manufacturing Annual Review 2009',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'annual_report',
    'manufacturing',
    'Designed CoreSteel Industries''s flagship annual report with a focus on storytelling through data. The report featured testimonial blocks and charts and graphs across 32 pages, balancing detailed financials with human-interest narratives for parents.',
    'elegant',
    'single_column',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Garamond', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Photoshop', 'Adobe Illustrator', 'Webflow']::TEXT[],
    'premium',
    'parents',
    2009,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2009' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Manufacturing Annual Review 2009' LIMIT 1), 7);

-- Project 326: Maricopa County Public Health Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Maricopa County Public Health Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'presentation',
    'government',
    'Created a polished pitch deck for Maricopa County Public Health with 24 slides covering strategy, data, and vision. The editorial design balanced interactive filters with clean typography to keep general public engaged throughout.',
    'editorial',
    'modular',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Montserrat']::TEXT[],
    ARRAY['Adobe XD', 'Sketch', 'Webflow']::TEXT[],
    'mid',
    'general public',
    2010,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Conference Presentation' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Conference Presentation' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Conference Presentation' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Conference Presentation' LIMIT 1), 34);

-- Project 327: City of Portland — Parks Dept Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Brand Portal',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'web_design',
    'government',
    'Designed and prototyped a modern web experience for City of Portland — Parks Dept focused on Infrastructure. The site featured full-bleed imagery, process flow diagrams, and seamless mobile responsiveness. User testing with C-suite executives informed iterative design refinements.',
    'elegant',
    'split_screen',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'IBM Plex Sans']::TEXT[],
    ARRAY['Procreate', 'Adobe XD', 'Adobe Premiere', 'D3.js']::TEXT[],
    'high',
    'C-suite executives',
    2013,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brand Portal' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brand Portal' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Brand Portal' LIMIT 1), 26);

-- Project 328: STEM Futures Foundation KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'STEM Futures Foundation KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'data_visualization',
    'education',
    'Designed a comprehensive data visualization suite for STEM Futures Foundation covering Curriculum Innovation analytics. The system included full-bleed imagery, real-time dashboards, and exportable reports, all styled in a bold visual language for environmental advocates.',
    'bold',
    'asymmetric',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Lora', 'Merriweather']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Sketch']::TEXT[],
    'high',
    'environmental advocates',
    2012,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation KPI Visualization System' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation KPI Visualization System' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation KPI Visualization System' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'STEM Futures Foundation KPI Visualization System' LIMIT 1), 17);

-- Project 329: Cascade Legal Group Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'web_design',
    'legal',
    'Led the full redesign of Cascade Legal Group''s web presence, creating a responsive, accessible site with a elegant visual language. Key features included hero photography, process flow diagrams, and an intuitive navigation system. The design prioritized performance and conversion for environmental advocates.',
    'elegant',
    'grid',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Poppins', 'Source Serif Pro']::TEXT[],
    ARRAY['After Effects', 'Blender', 'Webflow', 'Adobe Premiere']::TEXT[],
    'low',
    'environmental advocates',
    2025,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Interactive Web Platform' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Interactive Web Platform' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Interactive Web Platform' LIMIT 1), 54);

-- Project 330: Clean Water Alliance Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clean Water Alliance Brand Identity System',
    (SELECT id FROM clients WHERE name = 'Clean Water Alliance' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Developed a complete brand identity system for Clean Water Alliance including logo, color palette, typography, and usage guidelines. The elegant direction was crafted to resonate with tech-savvy millennials while differentiating Clean Water Alliance in the nonprofit space. Delivered a comprehensive brand toolkit.',
    'elegant',
    'modular',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Raleway', 'Lora']::TEXT[],
    ARRAY['Webflow', 'Procreate', 'Figma']::TEXT[],
    'low',
    'tech-savvy millennials',
    2008,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Brand Identity System' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Brand Identity System' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Brand Identity System' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Brand Identity System' LIMIT 1), 25);

-- Project 331: Civic Engagement Publication Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Civic Engagement Publication Design',
    (SELECT id FROM clients WHERE name = 'Federal Transit Administration' LIMIT 1),
    'editorial_design',
    'government',
    'Designed a publication for Federal Transit Administration focused on Civic Engagement, featuring a elegant editorial style with hero photography, interactive filters, and thoughtful typography across 80 pages for community members.',
    'elegant',
    'freeform',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Archivo', 'Avenir']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe Premiere', 'Procreate', 'After Effects']::TEXT[],
    'low',
    'community members',
    2023,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Civic Engagement Publication Design' LIMIT 1), 49);

-- Project 332: Vanguard Municipal Finance Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Dashboard Design',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'data_visualization',
    'finance',
    'Built an interactive data visualization system for Vanguard Municipal Finance to explore Financial Literacy metrics. The playful design featured data maps, stat highlight cards, and filterable views that empowered tech-savvy millennials to discover insights independently.',
    'playful',
    'split_screen',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Poppins', 'Libre Baskerville']::TEXT[],
    ARRAY['D3.js', 'Adobe Photoshop', 'Adobe Illustrator', 'Adobe InDesign']::TEXT[],
    'mid',
    'tech-savvy millennials',
    2008,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Dashboard Design' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Dashboard Design' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Dashboard Design' LIMIT 1), 12);

-- Project 333: Sunrise Senior Living Annual Report 2010
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sunrise Senior Living Annual Report 2010',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'annual_report',
    'healthcare',
    'Designed Sunrise Senior Living''s flagship annual report with a focus on storytelling through data. The report featured stat highlight cards and data maps across 80 pages, balancing detailed financials with human-interest narratives for retail consumers.',
    'minimalist',
    'grid',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Archivo', 'Georgia']::TEXT[],
    ARRAY['Webflow', 'Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'mid',
    'retail consumers',
    2010,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Annual Report 2010' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Annual Report 2010' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Annual Report 2010' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Annual Report 2010' LIMIT 1), 14);

-- Project 334: Wavelength Music Festival Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'packaging',
    'entertainment',
    'Created a packaging system for Wavelength Music Festival''s Streaming Platform product line. The bold design used comparison tables and tactile finishes to create a premium unboxing experience aligned with parents expectations.',
    'bold',
    'grid',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Inter']::TEXT[],
    ARRAY['After Effects', 'Webflow']::TEXT[],
    'low',
    'parents',
    2006,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Retail Packaging Suite' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Retail Packaging Suite' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Retail Packaging Suite' LIMIT 1), 11);

-- Project 335: Clean Water Alliance Direct Mail Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clean Water Alliance Direct Mail Campaign',
    (SELECT id FROM clients WHERE name = 'Clean Water Alliance' LIMIT 1),
    'print_collateral',
    'nonprofit',
    'Produced print collateral for Clean Water Alliance''s Food Security initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive bold design used icon systems to communicate key messages to families.',
    'bold',
    'freeform',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Futura', 'Poppins', 'Avenir']::TEXT[],
    ARRAY['Adobe InDesign', 'Tableau', 'Procreate']::TEXT[],
    'low',
    'families',
    2014,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Direct Mail Campaign' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Direct Mail Campaign' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Direct Mail Campaign' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Direct Mail Campaign' LIMIT 1), 5);

-- Project 336: Atlas Outdoor Co. Website Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Website Redesign',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'web_design',
    'retail',
    'Designed and prototyped a modern web experience for Atlas Outdoor Co. focused on Store Experience. The site featured interactive filters, pull quotes, and seamless mobile responsiveness. User testing with young professionals informed iterative design refinements.',
    'futuristic',
    'split_screen',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Poppins', 'Oswald']::TEXT[],
    ARRAY['Adobe XD', 'Webflow', 'Canva']::TEXT[],
    'premium',
    'young professionals',
    2005,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Website Redesign' LIMIT 1), 54);

-- Project 337: State of Oregon — DEQ Year in Review 2025
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Year in Review 2025',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'annual_report',
    'government',
    'Produced a comprehensive annual report for State of Oregon — DEQ covering financial performance, program impact, and strategic outlook. The data_driven design incorporated full-bleed imagery, interactive filters, and narrative photography to engage C-suite executives. Delivered as a 40-page print and digital publication.',
    'data_driven',
    'card_based',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Archivo', 'Work Sans', 'Lora']::TEXT[],
    ARRAY['Figma', 'Adobe XD']::TEXT[],
    'mid',
    'C-suite executives',
    2025,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Year in Review 2025' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Year in Review 2025' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Year in Review 2025' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Year in Review 2025' LIMIT 1), 14);

-- Project 338: The State of Public Health — Visual Summary
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The State of Public Health — Visual Summary',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'infographic',
    'government',
    'Created a multi-section infographic breaking down Public Health trends for City of Portland — Parks Dept. The design leveraged charts and graphs, icon systems, and custom iconography to make dense data approachable for retail consumers. Delivered in both digital and print-ready formats.',
    'futuristic',
    'freeform',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Lora']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Illustrator']::TEXT[],
    'low',
    'retail consumers',
    2025,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The State of Public Health — Visual Summary' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'The State of Public Health — Visual Summary' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'The State of Public Health — Visual Summary' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'The State of Public Health — Visual Summary' LIMIT 1), 38);

-- Project 339: Habitat Renewal Coalition Financial & Impact Summary 2022
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Habitat Renewal Coalition Financial & Impact Summary 2022',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'annual_report',
    'nonprofit',
    'Produced a comprehensive annual report for Habitat Renewal Coalition covering financial performance, program impact, and strategic outlook. The playful design incorporated interactive filters, dashboard widgets, and narrative photography to engage C-suite executives. Delivered as a 40-page print and digital publication.',
    'playful',
    'grid',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Archivo', 'Proxima Nova', 'Raleway']::TEXT[],
    ARRAY['Blender', 'Sketch', 'Adobe Premiere', 'Adobe Photoshop']::TEXT[],
    'low',
    'C-suite executives',
    2022,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Financial & Impact Summary 2022' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Financial & Impact Summary 2022' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Financial & Impact Summary 2022' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Financial & Impact Summary 2022' LIMIT 1), 9);

-- Project 340: Quantum Mesh Networks Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quantum Mesh Networks Product Packaging',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'packaging',
    'technology',
    'Designed product packaging for Quantum Mesh Networks that balanced shelf appeal with brand storytelling. The data_driven design featured sidebar callouts, sustainable material choices, and clear product information hierarchy for families.',
    'data_driven',
    'asymmetric',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Raleway', 'Montserrat']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe XD']::TEXT[],
    'premium',
    'families',
    2018,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Product Packaging' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Product Packaging' LIMIT 1), 17);

-- Project 341: Global Learners Initiative Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'packaging',
    'education',
    'Designed product packaging for Global Learners Initiative that balanced shelf appeal with brand storytelling. The corporate design featured testimonial blocks, sustainable material choices, and clear product information hierarchy for policy makers.',
    'corporate',
    'grid',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Roboto']::TEXT[],
    ARRAY['Figma', 'Adobe XD', 'Sketch']::TEXT[],
    'mid',
    'policy makers',
    2011,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Retail Packaging Suite' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Retail Packaging Suite' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Retail Packaging Suite' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Retail Packaging Suite' LIMIT 1), 12);

-- Project 342: Clearpath Diagnostics Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clearpath Diagnostics Content Publication',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Designed a publication for Clearpath Diagnostics focused on Medical Research, featuring a futuristic editorial style with sidebar callouts, pull quotes, and thoughtful typography across 40 pages for healthcare professionals.',
    'futuristic',
    'split_screen',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Merriweather', 'PT Serif']::TEXT[],
    ARRAY['Tableau', 'Adobe InDesign', 'Adobe Premiere', 'Procreate']::TEXT[],
    'low',
    'healthcare professionals',
    2012,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Content Publication' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Content Publication' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Content Publication' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Content Publication' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Content Publication' LIMIT 1), 34);

-- Project 343: Risk Management Explained: An Infographic Guide
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Risk Management Explained: An Infographic Guide',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'infographic',
    'finance',
    'Created a multi-section infographic breaking down Risk Management trends for Vanguard Municipal Finance. The design leveraged timeline visuals, full-bleed imagery, and custom iconography to make dense data approachable for families. Delivered in both digital and print-ready formats.',
    'playful',
    'modular',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Raleway', 'Garamond']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Illustrator', 'Procreate']::TEXT[],
    'low',
    'families',
    2018,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Risk Management Explained: An Infographic Guide' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Risk Management Explained: An Infographic Guide' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Risk Management Explained: An Infographic Guide' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Risk Management Explained: An Infographic Guide' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Risk Management Explained: An Infographic Guide' LIMIT 1), 26);

-- Project 344: Azure Coast Resorts Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Content Publication',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'editorial_design',
    'travel_hospitality',
    'Designed a publication for Azure Coast Resorts focused on Cultural Heritage, featuring a playful editorial style with charts and graphs, data maps, and thoughtful typography across 40 pages for healthcare professionals.',
    'playful',
    'split_screen',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Raleway', 'Avenir', 'Playfair Display']::TEXT[],
    ARRAY['Tableau', 'Figma', 'Adobe Premiere', 'Adobe Photoshop']::TEXT[],
    'high',
    'healthcare professionals',
    2019,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Content Publication' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Content Publication' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Content Publication' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Content Publication' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Content Publication' LIMIT 1), 17);

-- Project 345: Skyline Properties Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'packaging',
    'real_estate',
    'Created a packaging system for Skyline Properties''s Community Design product line. The organic design used infographic sections and tactile finishes to create a premium unboxing experience aligned with industry analysts expectations.',
    'organic',
    'asymmetric',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Roboto', 'Space Grotesk', 'Futura']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Premiere', 'Procreate']::TEXT[],
    'low',
    'industry analysts',
    2008,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Packaging Redesign' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Skyline Properties Packaging Redesign' LIMIT 1), 23);

-- Project 346: Peak Nutrition Labs Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'infographic',
    'food_beverage',
    'Designed a visually compelling infographic for Peak Nutrition Labs that distilled complex Seasonal Menu data into an accessible, shareable format. The piece featured hero photography and stat highlight cards, using a data_driven aesthetic to engage general public. Color-coded sections guided readers through key statistics and takeaways.',
    'data_driven',
    'card_based',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Raleway', 'Helvetica Neue', 'Poppins']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'low',
    'general public',
    2014,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 14);

-- Project 347: Precision Dynamics Corp. Instagram Content Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Instagram Content Series',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'social_media',
    'manufacturing',
    'Created a multi-platform social campaign for Precision Dynamics Corp. centered on Safety Standards. The design system featured comparison tables, adaptable templates, and motion graphics optimized for each platform. Targeted industry analysts with platform-specific messaging strategies.',
    'playful',
    'single_column',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Inter', 'Archivo', 'PT Serif']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Illustrator', 'Adobe Premiere', 'Tableau']::TEXT[],
    'high',
    'industry analysts',
    2016,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Instagram Content Series' LIMIT 1), 44);

-- Project 348: Skyline Properties Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'web_design',
    'real_estate',
    'Designed and prototyped a modern web experience for Skyline Properties focused on Community Design. The site featured icon systems, dashboard widgets, and seamless mobile responsiveness. User testing with environmental advocates informed iterative design refinements.',
    'organic',
    'asymmetric',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Merriweather', 'IBM Plex Sans', 'Avenir']::TEXT[],
    ARRAY['Figma', 'Adobe XD', 'Procreate', 'Webflow']::TEXT[],
    'low',
    'environmental advocates',
    2009,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Interactive Web Platform' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Skyline Properties Interactive Web Platform' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Skyline Properties Interactive Web Platform' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Skyline Properties Interactive Web Platform' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Skyline Properties Interactive Web Platform' LIMIT 1), 51);

-- Project 349: BlueLine Wealth Advisors Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'web_design',
    'finance',
    'Led the full redesign of BlueLine Wealth Advisors''s web presence, creating a responsive, accessible site with a organic visual language. Key features included data maps, sidebar callouts, and an intuitive navigation system. The design prioritized performance and conversion for nonprofit donors.',
    'organic',
    'card_based',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'DM Sans', 'Proxima Nova']::TEXT[],
    ARRAY['Webflow', 'Adobe Illustrator', 'Procreate', 'Adobe Premiere']::TEXT[],
    'high',
    'nonprofit donors',
    2008,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Landing Page Suite' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Landing Page Suite' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Landing Page Suite' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Landing Page Suite' LIMIT 1), 26);

-- Project 350: Scholarship Program Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Scholarship Program Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'data_visualization',
    'education',
    'Designed a comprehensive data visualization suite for Lakewood School District covering Scholarship Program analytics. The system included hero photography, real-time dashboards, and exportable reports, all styled in a editorial visual language for internal team members.',
    'editorial',
    'card_based',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Inter', 'IBM Plex Sans', 'PT Serif']::TEXT[],
    ARRAY['Blender', 'Sketch']::TEXT[],
    'low',
    'internal team members',
    2009,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Scholarship Program Interactive Data Portal' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Scholarship Program Interactive Data Portal' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Scholarship Program Interactive Data Portal' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Scholarship Program Interactive Data Portal' LIMIT 1), 11);

-- Project 351: Trailhead Adventures Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'packaging',
    'travel_hospitality',
    'Created a packaging system for Trailhead Adventures''s Luxury Getaway product line. The data_driven design used timeline visuals and tactile finishes to create a premium unboxing experience aligned with environmental advocates expectations.',
    'data_driven',
    'freeform',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'PT Serif', 'Garamond']::TEXT[],
    ARRAY['Adobe InDesign', 'Tableau', 'After Effects']::TEXT[],
    'high',
    'environmental advocates',
    2008,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Retail Packaging Suite' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Retail Packaging Suite' LIMIT 1), 17);

-- Project 352: Wanderlust Travel Co. Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'social_media',
    'travel_hospitality',
    'Developed a social media content system for Wanderlust Travel Co. spanning Instagram, LinkedIn, and Twitter. The editorial visual approach used charts and graphs and full-bleed imagery to boost engagement with industry analysts. Included templates, content guidelines, and a 30-day launch calendar.',
    'editorial',
    'editorial',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Inter', 'Futura']::TEXT[],
    ARRAY['Blender', 'Adobe Illustrator', 'D3.js', 'After Effects']::TEXT[],
    'high',
    'industry analysts',
    2009,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Social Media Campaign' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Social Media Campaign' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Social Media Campaign' LIMIT 1), 20);

-- Project 353: Ironridge Manufacturing Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'social_media',
    'manufacturing',
    'Created a multi-platform social campaign for Ironridge Manufacturing centered on Quality Control. The design system featured data maps, adaptable templates, and motion graphics optimized for each platform. Targeted students and educators with platform-specific messaging strategies.',
    'minimalist',
    'modular',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Lora']::TEXT[],
    ARRAY['Sketch', 'Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'low',
    'students and educators',
    2007,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Social Content Toolkit' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Social Content Toolkit' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Social Content Toolkit' LIMIT 1), 23);

-- Project 354: Student Success Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Student Success Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Bright Horizons Academy' LIMIT 1),
    'presentation',
    'education',
    'Created a polished pitch deck for Bright Horizons Academy with 24 slides covering strategy, data, and vision. The futuristic design balanced charts and graphs with clean typography to keep families engaged throughout.',
    'futuristic',
    'freeform',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Space Grotesk']::TEXT[],
    ARRAY['Canva', 'D3.js', 'Procreate']::TEXT[],
    'premium',
    'families',
    2008,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Student Success Workshop Materials' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Student Success Workshop Materials' LIMIT 1), 10);

-- Project 355: Guest Experience Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Guest Experience Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'print_collateral',
    'travel_hospitality',
    'Produced print collateral for Summit Lodge & Spa''s Guest Experience initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive bold design used infographic sections to communicate key messages to young professionals.',
    'bold',
    'single_column',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Roboto', 'IBM Plex Sans']::TEXT[],
    ARRAY['Blender', 'Tableau', 'Sketch', 'Canva']::TEXT[],
    'low',
    'young professionals',
    2013,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Guest Experience Conference Collateral' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Guest Experience Conference Collateral' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Guest Experience Conference Collateral' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Guest Experience Conference Collateral' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Guest Experience Conference Collateral' LIMIT 1), 17);

-- Project 356: Sage & Thyme Restaurant Group Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'social_media',
    'food_beverage',
    'Developed a social media content system for Sage & Thyme Restaurant Group spanning Instagram, LinkedIn, and Twitter. The retro visual approach used full-bleed imagery and stat highlight cards to boost engagement with healthcare professionals. Included templates, content guidelines, and a 30-day launch calendar.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Raleway']::TEXT[],
    ARRAY['After Effects', 'Sketch', 'D3.js', 'Tableau']::TEXT[],
    'premium',
    'healthcare professionals',
    2016,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Social Content Toolkit' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Social Content Toolkit' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Social Content Toolkit' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Social Content Toolkit' LIMIT 1), 13);

-- Project 357: Ember & Oak Home Goods E-commerce Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods E-commerce Platform',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'web_design',
    'retail',
    'Designed and prototyped a modern web experience for Ember & Oak Home Goods focused on Product Line. The site featured stat highlight cards, custom illustrations, and seamless mobile responsiveness. User testing with investors and stakeholders informed iterative design refinements.',
    'retro',
    'asymmetric',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Archivo', 'Roboto']::TEXT[],
    ARRAY['Sketch', 'D3.js', 'Adobe Photoshop']::TEXT[],
    'low',
    'investors and stakeholders',
    2013,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods E-commerce Platform' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods E-commerce Platform' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods E-commerce Platform' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods E-commerce Platform' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods E-commerce Platform' LIMIT 1), 26);

-- Project 358: Wellbridge Community Health Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wellbridge Community Health Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Wellbridge Community Health' LIMIT 1),
    'social_media',
    'healthcare',
    'Created a multi-platform social campaign for Wellbridge Community Health centered on Preventive Care. The design system featured icon systems, adaptable templates, and motion graphics optimized for each platform. Targeted policy makers with platform-specific messaging strategies.',
    'futuristic',
    'asymmetric',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Inter']::TEXT[],
    ARRAY['Procreate', 'D3.js', 'Figma', 'Canva']::TEXT[],
    'low',
    'policy makers',
    2017,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Social Content Toolkit' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Social Content Toolkit' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Social Content Toolkit' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Social Content Toolkit' LIMIT 1), 32);

-- Project 359: Ironridge Manufacturing Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Catalog Design',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'print_collateral',
    'manufacturing',
    'Designed a suite of print materials for Ironridge Manufacturing including brochures, flyers, and event signage. The futuristic design featured charts and graphs and data maps, maintaining brand consistency across all touchpoints for tech-savvy millennials.',
    'futuristic',
    'asymmetric',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Montserrat', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe Illustrator', 'Figma', 'Adobe Photoshop', 'Procreate']::TEXT[],
    'high',
    'tech-savvy millennials',
    2018,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Catalog Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Catalog Design' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Catalog Design' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Catalog Design' LIMIT 1), 4);

-- Project 360: The State of Digital Banking — Visual Summary
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The State of Digital Banking — Visual Summary',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'infographic',
    'finance',
    'Created a multi-section infographic breaking down Digital Banking trends for Vanguard Municipal Finance. The design leveraged interactive filters, sidebar callouts, and custom iconography to make dense data approachable for families. Delivered in both digital and print-ready formats.',
    'elegant',
    'asymmetric',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Lora', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'D3.js']::TEXT[],
    'high',
    'families',
    2013,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The State of Digital Banking — Visual Summary' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'The State of Digital Banking — Visual Summary' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'The State of Digital Banking — Visual Summary' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'The State of Digital Banking — Visual Summary' LIMIT 1), 41);

-- Project 361: Pacific Northwest University Annual Report 2014
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Northwest University Annual Report 2014',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'annual_report',
    'education',
    'Designed Pacific Northwest University''s flagship annual report with a focus on storytelling through data. The report featured infographic sections and custom illustrations across 32 pages, balancing detailed financials with human-interest narratives for healthcare professionals.',
    'elegant',
    'modular',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Inter']::TEXT[],
    ARRAY['Adobe Photoshop', 'Canva', 'After Effects', 'Webflow']::TEXT[],
    'low',
    'healthcare professionals',
    2014,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Annual Report 2014' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Annual Report 2014' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Annual Report 2014' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Annual Report 2014' LIMIT 1), 5);

-- Project 362: Cornerstone Development Group Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Content Publication',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'editorial_design',
    'real_estate',
    'Created an editorial layout for Cornerstone Development Group''s Community Design content, blending longform storytelling with pull quotes and charts and graphs. The editorial design established a distinctive voice for reaching families.',
    'editorial',
    'single_column',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Lora', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe Illustrator']::TEXT[],
    'premium',
    'families',
    2009,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Content Publication' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Content Publication' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Content Publication' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Content Publication' LIMIT 1), 21);

-- Project 363: Arclight AI Investor Pitch Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Investor Pitch Deck',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'presentation',
    'technology',
    'Created a polished pitch deck for Arclight AI with 56 slides covering strategy, data, and vision. The editorial design balanced hero photography with clean typography to keep students and educators engaged throughout.',
    'editorial',
    'card_based',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Georgia', 'Nunito', 'Merriweather']::TEXT[],
    ARRAY['Adobe Photoshop', 'After Effects', 'Adobe InDesign']::TEXT[],
    'high',
    'students and educators',
    2004,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Investor Pitch Deck' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Arclight AI Investor Pitch Deck' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Arclight AI Investor Pitch Deck' LIMIT 1), 2);

-- Project 364: Healthcare Trends Infographic 2005
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Healthcare Trends Infographic 2005',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'infographic',
    'healthcare',
    'Created a multi-section infographic breaking down Mental Wellness trends for MedVista Health Systems. The design leveraged stat highlight cards, timeline visuals, and custom iconography to make dense data approachable for government officials. Delivered in both digital and print-ready formats.',
    'data_driven',
    'modular',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Open Sans', 'Georgia']::TEXT[],
    ARRAY['Sketch', 'Canva', 'Adobe Photoshop', 'Adobe InDesign']::TEXT[],
    'mid',
    'government officials',
    2005,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Healthcare Trends Infographic 2005' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Healthcare Trends Infographic 2005' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Healthcare Trends Infographic 2005' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Healthcare Trends Infographic 2005' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Healthcare Trends Infographic 2005' LIMIT 1), 1);

-- Project 365: Quantum Mesh Networks Website Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quantum Mesh Networks Website Redesign',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'web_design',
    'technology',
    'Led the full redesign of Quantum Mesh Networks''s web presence, creating a responsive, accessible site with a retro visual language. Key features included infographic sections, icon systems, and an intuitive navigation system. The design prioritized performance and conversion for senior citizens.',
    'retro',
    'split_screen',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Roboto', 'Poppins', 'Avenir']::TEXT[],
    ARRAY['D3.js', 'Adobe XD']::TEXT[],
    'mid',
    'senior citizens',
    2003,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Website Redesign' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Website Redesign' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Website Redesign' LIMIT 1), 8);

-- Project 366: Precision Dynamics Corp. Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'web_design',
    'manufacturing',
    'Designed and prototyped a modern web experience for Precision Dynamics Corp. focused on Industry 4.0. The site featured icon systems, full-bleed imagery, and seamless mobile responsiveness. User testing with environmental advocates informed iterative design refinements.',
    'bold',
    'asymmetric',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Raleway', 'IBM Plex Sans', 'Source Serif Pro']::TEXT[],
    ARRAY['Webflow', 'Adobe XD']::TEXT[],
    'high',
    'environmental advocates',
    2013,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Landing Page Suite' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Landing Page Suite' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Landing Page Suite' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Landing Page Suite' LIMIT 1), 5);

-- Project 367: Population Health Campaign Identity for MedVista Health Systems
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Population Health Campaign Identity for MedVista Health Systems',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'branding_identity',
    'healthcare',
    'Created a cohesive visual identity for MedVista Health Systems rooted in their Population Health mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with nonprofit donors.',
    'data_driven',
    'card_based',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Avenir', 'Archivo']::TEXT[],
    ARRAY['Blender', 'Adobe InDesign', 'Sketch']::TEXT[],
    'high',
    'nonprofit donors',
    2009,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Population Health Campaign Identity for MedVista Health Systems' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Population Health Campaign Identity for MedVista Health Systems' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Population Health Campaign Identity for MedVista Health Systems' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Population Health Campaign Identity for MedVista Health Systems' LIMIT 1), 44);

-- Project 368: Nonprofit Annual Review 2017
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nonprofit Annual Review 2017',
    (SELECT id FROM clients WHERE name = 'Urban Roots Food Bank' LIMIT 1),
    'annual_report',
    'nonprofit',
    'Produced a comprehensive annual report for Urban Roots Food Bank covering financial performance, program impact, and strategic outlook. The minimalist design incorporated charts and graphs, pull quotes, and narrative photography to engage retail consumers. Delivered as a 32-page print and digital publication.',
    'minimalist',
    'split_screen',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Work Sans']::TEXT[],
    ARRAY['Adobe Illustrator', 'Procreate', 'Sketch']::TEXT[],
    'mid',
    'retail consumers',
    2017,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nonprofit Annual Review 2017' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Nonprofit Annual Review 2017' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Nonprofit Annual Review 2017' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Nonprofit Annual Review 2017' LIMIT 1), 35);

-- Project 369: Wellbridge Community Health Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wellbridge Community Health Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Wellbridge Community Health' LIMIT 1),
    'social_media',
    'healthcare',
    'Created a multi-platform social campaign for Wellbridge Community Health centered on Clinical Trials. The design system featured pull quotes, adaptable templates, and motion graphics optimized for each platform. Targeted healthcare professionals with platform-specific messaging strategies.',
    'playful',
    'freeform',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Georgia', 'Merriweather']::TEXT[],
    ARRAY['D3.js', 'Adobe Illustrator', 'Sketch']::TEXT[],
    'high',
    'healthcare professionals',
    2019,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Digital Ad Campaign' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Digital Ad Campaign' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Digital Ad Campaign' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Wellbridge Community Health Digital Ad Campaign' LIMIT 1), 30);

-- Project 370: Cybersecurity Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cybersecurity Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'editorial_design',
    'technology',
    'Designed a publication for Arclight AI focused on Cybersecurity, featuring a futuristic editorial style with interactive filters, custom illustrations, and thoughtful typography across 56 pages for industry analysts.',
    'futuristic',
    'freeform',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Roboto', 'Garamond']::TEXT[],
    ARRAY['Canva', 'Blender', 'Adobe InDesign', 'After Effects']::TEXT[],
    'mid',
    'industry analysts',
    2024,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Cybersecurity Editorial Feature' LIMIT 1), 21);

-- Project 371: Safety Standards Microsite for Precision Dynamics Corp.
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Safety Standards Microsite for Precision Dynamics Corp.',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'web_design',
    'manufacturing',
    'Designed and prototyped a modern web experience for Precision Dynamics Corp. focused on Safety Standards. The site featured charts and graphs, pull quotes, and seamless mobile responsiveness. User testing with retail consumers informed iterative design refinements.',
    'data_driven',
    'modular',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Oswald', 'Libre Baskerville']::TEXT[],
    ARRAY['After Effects', 'Tableau']::TEXT[],
    'mid',
    'retail consumers',
    2021,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Safety Standards Microsite for Precision Dynamics Corp.' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Safety Standards Microsite for Precision Dynamics Corp.' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Safety Standards Microsite for Precision Dynamics Corp.' LIMIT 1), 2);

-- Project 372: Seasonal Menu Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Seasonal Menu Data Explorer',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'data_visualization',
    'food_beverage',
    'Built an interactive data visualization system for Fieldstone Brewing Co. to explore Seasonal Menu metrics. The retro design featured icon systems, full-bleed imagery, and filterable views that empowered parents to discover insights independently.',
    'retro',
    'grid',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Lora', 'Open Sans', 'Avenir']::TEXT[],
    ARRAY['Webflow', 'Adobe InDesign', 'Sketch', 'Tableau']::TEXT[],
    'low',
    'parents',
    2021,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Seasonal Menu Data Explorer' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Seasonal Menu Data Explorer' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Seasonal Menu Data Explorer' LIMIT 1), 10);

-- Project 373: GreenShift Renewables Annual Report 2018
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'GreenShift Renewables Annual Report 2018',
    (SELECT id FROM clients WHERE name = 'GreenShift Renewables' LIMIT 1),
    'annual_report',
    'energy',
    'Designed GreenShift Renewables''s flagship annual report with a focus on storytelling through data. The report featured hero photography and interactive filters across 80 pages, balancing detailed financials with human-interest narratives for nonprofit donors.',
    'corporate',
    'single_column',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Work Sans', 'Poppins']::TEXT[],
    ARRAY['Webflow', 'Blender']::TEXT[],
    'low',
    'nonprofit donors',
    2018,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Annual Report 2018' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'GreenShift Renewables Annual Report 2018' LIMIT 1), 7);

-- Project 374: Azure Coast Resorts Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'branding_identity',
    'travel_hospitality',
    'Developed a complete brand identity system for Azure Coast Resorts including logo, color palette, typography, and usage guidelines. The playful direction was crafted to resonate with policy makers while differentiating Azure Coast Resorts in the travel hospitality space. Delivered a comprehensive brand toolkit.',
    'playful',
    'single_column',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Proxima Nova', 'PT Serif']::TEXT[],
    ARRAY['Canva', 'After Effects']::TEXT[],
    'premium',
    'policy makers',
    2018,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Logo & Identity Package' LIMIT 1), 16);

-- Project 375: Volunteer Network By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Volunteer Network By the Numbers',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'infographic',
    'nonprofit',
    'Created a multi-section infographic breaking down Volunteer Network trends for Habitat Renewal Coalition. The design leveraged hero photography, testimonial blocks, and custom iconography to make dense data approachable for parents. Delivered in both digital and print-ready formats.',
    'playful',
    'freeform',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Helvetica Neue']::TEXT[],
    ARRAY['D3.js', 'Adobe XD', 'Canva', 'Adobe InDesign']::TEXT[],
    'mid',
    'parents',
    2014,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Volunteer Network By the Numbers' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Volunteer Network By the Numbers' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Volunteer Network By the Numbers' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'Volunteer Network By the Numbers' LIMIT 1), 23);

-- Project 376: Coastal Harvest Seafood Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Content Publication',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Designed a publication for Coastal Harvest Seafood focused on Seasonal Menu, featuring a futuristic editorial style with pull quotes, custom illustrations, and thoughtful typography across 64 pages for students and educators.',
    'futuristic',
    'asymmetric',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Avenir', 'Work Sans', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'Webflow']::TEXT[],
    'low',
    'students and educators',
    2003,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Content Publication' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Content Publication' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Content Publication' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Content Publication' LIMIT 1), 13);

-- Project 377: Peak Nutrition Labs Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'infographic',
    'food_beverage',
    'Designed a visually compelling infographic for Peak Nutrition Labs that distilled complex Nutrition Facts data into an accessible, shareable format. The piece featured timeline visuals and stat highlight cards, using a playful aesthetic to engage policy makers. Color-coded sections guided readers through key statistics and takeaways.',
    'playful',
    'freeform',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Source Serif Pro', 'Avenir']::TEXT[],
    ARRAY['Adobe Photoshop', 'Webflow', 'Adobe Premiere']::TEXT[],
    'low',
    'policy makers',
    2025,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Key Metrics Infographic' LIMIT 1), 11);

-- Project 378: Atlas Outdoor Co. Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'presentation',
    'retail',
    'Created a polished pitch deck for Atlas Outdoor Co. with 80 slides covering strategy, data, and vision. The data_driven design balanced dashboard widgets with clean typography to keep investors and stakeholders engaged throughout.',
    'data_driven',
    'asymmetric',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Futura', 'Archivo']::TEXT[],
    ARRAY['Procreate', 'Adobe Illustrator']::TEXT[],
    'high',
    'investors and stakeholders',
    2008,
    22
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Conference Presentation' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Conference Presentation' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Conference Presentation' LIMIT 1), 18);

-- Project 379: Sunrise Senior Living Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sunrise Senior Living Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Designed a publication for Sunrise Senior Living focused on Health Equity, featuring a editorial editorial style with icon systems, stat highlight cards, and thoughtful typography across 56 pages for small business owners.',
    'editorial',
    'freeform',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Roboto', 'Archivo', 'Garamond']::TEXT[],
    ARRAY['Webflow', 'Blender']::TEXT[],
    'low',
    'small business owners',
    2010,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 30);

-- Project 380: Voices for Justice Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Created a cohesive visual identity for Voices for Justice rooted in their Community Impact mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with government officials.',
    'retro',
    'grid',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Roboto']::TEXT[],
    ARRAY['D3.js', 'Adobe Premiere', 'Webflow']::TEXT[],
    'mid',
    'government officials',
    2009,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Logo & Identity Package' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Voices for Justice Logo & Identity Package' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Voices for Justice Logo & Identity Package' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Voices for Justice Logo & Identity Package' LIMIT 1), 16);

-- Project 381: Habitat Renewal Coalition Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Habitat Renewal Coalition Rebrand',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Developed a complete brand identity system for Habitat Renewal Coalition including logo, color palette, typography, and usage guidelines. The minimalist direction was crafted to resonate with C-suite executives while differentiating Habitat Renewal Coalition in the nonprofit space. Delivered a comprehensive brand toolkit.',
    'minimalist',
    'grid',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Oswald']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe InDesign', 'After Effects']::TEXT[],
    'low',
    'C-suite executives',
    2009,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Rebrand' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Rebrand' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Rebrand' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Rebrand' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Rebrand' LIMIT 1), 10);

-- Project 382: Lakewood School District Board Meeting Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Lakewood School District Board Meeting Deck',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'presentation',
    'education',
    'Designed a high-impact presentation deck for Lakewood School District to communicate Student Success insights to young professionals. The editorial slide design featured testimonial blocks, pull quotes, and clear data storytelling across 64 slides.',
    'editorial',
    'grid',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Space Grotesk', 'IBM Plex Sans']::TEXT[],
    ARRAY['Tableau', 'Adobe Photoshop', 'Sketch', 'Adobe InDesign']::TEXT[],
    'low',
    'young professionals',
    2010,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Lakewood School District Board Meeting Deck' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Lakewood School District Board Meeting Deck' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Lakewood School District Board Meeting Deck' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Lakewood School District Board Meeting Deck' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Lakewood School District Board Meeting Deck' LIMIT 1), 24);

-- Project 383: Ember & Oak Home Goods Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'packaging',
    'retail',
    'Designed product packaging for Ember & Oak Home Goods that balanced shelf appeal with brand storytelling. The elegant design featured pull quotes, sustainable material choices, and clear product information hierarchy for small business owners.',
    'elegant',
    'single_column',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Raleway', 'Roboto', 'Merriweather']::TEXT[],
    ARRAY['Webflow', 'Blender']::TEXT[],
    'high',
    'small business owners',
    2013,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Retail Packaging Suite' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Retail Packaging Suite' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Retail Packaging Suite' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Retail Packaging Suite' LIMIT 1), 56);

-- Project 384: Real Estate Trends Infographic 2012
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Real Estate Trends Infographic 2012',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'infographic',
    'real_estate',
    'Created a multi-section infographic breaking down Commercial Spaces trends for Skyline Properties. The design leveraged testimonial blocks, data maps, and custom iconography to make dense data approachable for retail consumers. Delivered in both digital and print-ready formats.',
    'elegant',
    'modular',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'Webflow']::TEXT[],
    'premium',
    'retail consumers',
    2012,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Real Estate Trends Infographic 2012' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Real Estate Trends Infographic 2012' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Real Estate Trends Infographic 2012' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Real Estate Trends Infographic 2012' LIMIT 1), 24);

-- Project 385: How Workforce Development Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Workforce Development Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'infographic',
    'manufacturing',
    'Designed a visually compelling infographic for CoreSteel Industries that distilled complex Workforce Development data into an accessible, shareable format. The piece featured hero photography and custom illustrations, using a retro aesthetic to engage tech-savvy millennials. Color-coded sections guided readers through key statistics and takeaways.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Poppins', 'Libre Baskerville', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe InDesign', 'Figma', 'Sketch']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2004,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'How Workforce Development Works — Visual Breakdown' LIMIT 1), 16);

-- Project 386: Peak Nutrition Labs Brochure & Print Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Brochure & Print Suite',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'print_collateral',
    'food_beverage',
    'Produced print collateral for Peak Nutrition Labs''s Farm to Table initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive elegant design used hero photography to communicate key messages to internal team members.',
    'elegant',
    'editorial',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Archivo', 'Merriweather']::TEXT[],
    ARRAY['Figma', 'D3.js', 'Adobe Illustrator']::TEXT[],
    'premium',
    'internal team members',
    2017,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Brochure & Print Suite' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Brochure & Print Suite' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Brochure & Print Suite' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Brochure & Print Suite' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Brochure & Print Suite' LIMIT 1), 5);

-- Project 387: Lakewood School District Stakeholder Report 2021
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Lakewood School District Stakeholder Report 2021',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'annual_report',
    'education',
    'Produced a comprehensive annual report for Lakewood School District covering financial performance, program impact, and strategic outlook. The minimalist design incorporated full-bleed imagery, custom illustrations, and narrative photography to engage general public. Delivered as a 56-page print and digital publication.',
    'minimalist',
    'editorial',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Inter', 'Avenir', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Figma', 'D3.js', 'Adobe Photoshop']::TEXT[],
    'premium',
    'general public',
    2021,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Lakewood School District Stakeholder Report 2021' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Lakewood School District Stakeholder Report 2021' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Lakewood School District Stakeholder Report 2021' LIMIT 1), 55), ((SELECT id FROM projects WHERE title = 'Lakewood School District Stakeholder Report 2021' LIMIT 1), 19);

-- Project 388: Risk Management Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Risk Management Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'presentation',
    'finance',
    'Designed a high-impact presentation deck for Meridian Credit Union to communicate Risk Management insights to industry analysts. The elegant slide design featured icon systems, dashboard widgets, and clear data storytelling across 56 slides.',
    'elegant',
    'editorial',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Futura', 'Inter']::TEXT[],
    ARRAY['Adobe XD', 'Figma']::TEXT[],
    'low',
    'industry analysts',
    2013,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Risk Management Workshop Materials' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Risk Management Workshop Materials' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Risk Management Workshop Materials' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Risk Management Workshop Materials' LIMIT 1), 49);

-- Project 389: Silver Screen Distribution Brand Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Silver Screen Distribution Brand Portal',
    (SELECT id FROM clients WHERE name = 'Silver Screen Distribution' LIMIT 1),
    'web_design',
    'entertainment',
    'Designed and prototyped a modern web experience for Silver Screen Distribution focused on Artist Spotlight. The site featured hero photography, process flow diagrams, and seamless mobile responsiveness. User testing with environmental advocates informed iterative design refinements.',
    'futuristic',
    'asymmetric',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Futura', 'Work Sans']::TEXT[],
    ARRAY['Blender', 'Webflow', 'Canva', 'Adobe XD']::TEXT[],
    'low',
    'environmental advocates',
    2010,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Portal' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Portal' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Portal' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Portal' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Silver Screen Distribution Brand Portal' LIMIT 1), 13);

-- Project 390: Riverwalk Boutique Year in Review 2023
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Riverwalk Boutique Year in Review 2023',
    (SELECT id FROM clients WHERE name = 'Riverwalk Boutique' LIMIT 1),
    'annual_report',
    'retail',
    'Designed Riverwalk Boutique''s flagship annual report with a focus on storytelling through data. The report featured comparison tables and icon systems across 80 pages, balancing detailed financials with human-interest narratives for industry analysts.',
    'retro',
    'asymmetric',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Archivo', 'Open Sans']::TEXT[],
    ARRAY['Tableau', 'D3.js', 'Webflow']::TEXT[],
    'high',
    'industry analysts',
    2023,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Year in Review 2023' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Year in Review 2023' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Year in Review 2023' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Riverwalk Boutique Year in Review 2023' LIMIT 1), 37);

-- Project 391: API Ecosystem Data Explorer
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'API Ecosystem Data Explorer',
    (SELECT id FROM clients WHERE name = 'TerraCode Labs' LIMIT 1),
    'data_visualization',
    'technology',
    'Designed a comprehensive data visualization suite for TerraCode Labs covering API Ecosystem analytics. The system included testimonial blocks, real-time dashboards, and exportable reports, all styled in a minimalist visual language for students and educators.',
    'minimalist',
    'editorial',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Inter', 'Proxima Nova', 'Poppins']::TEXT[],
    ARRAY['Adobe InDesign', 'Blender']::TEXT[],
    'low',
    'students and educators',
    2016,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'API Ecosystem Data Explorer' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'API Ecosystem Data Explorer' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'API Ecosystem Data Explorer' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'API Ecosystem Data Explorer' LIMIT 1), 32);

-- Project 392: How Firm Heritage Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Firm Heritage Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'infographic',
    'legal',
    'Designed a visually compelling infographic for Cascade Legal Group that distilled complex Firm Heritage data into an accessible, shareable format. The piece featured comparison tables and dashboard widgets, using a bold aesthetic to engage tech-savvy millennials. Color-coded sections guided readers through key statistics and takeaways.',
    'bold',
    'freeform',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Georgia', 'Poppins']::TEXT[],
    ARRAY['Procreate', 'D3.js', 'Blender', 'Adobe Illustrator']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2016,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'How Firm Heritage Works — Visual Breakdown' LIMIT 1), 11);

-- Project 393: Sunrise Senior Living Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sunrise Senior Living Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Created an editorial layout for Sunrise Senior Living''s Clinical Trials content, blending longform storytelling with process flow diagrams and timeline visuals. The editorial design established a distinctive voice for reaching young professionals.',
    'editorial',
    'card_based',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Nunito', 'Fira Sans']::TEXT[],
    ARRAY['D3.js', 'Webflow', 'Adobe XD']::TEXT[],
    'high',
    'young professionals',
    2013,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Magazine Layout' LIMIT 1), 23);

-- Project 394: Coastal Harvest Seafood Annual Report 2006
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Annual Report 2006',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'annual_report',
    'food_beverage',
    'Designed Coastal Harvest Seafood''s flagship annual report with a focus on storytelling through data. The report featured icon systems and infographic sections across 64 pages, balancing detailed financials with human-interest narratives for retail consumers.',
    'corporate',
    'modular',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Inter', 'Work Sans']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop']::TEXT[],
    'mid',
    'retail consumers',
    2006,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Annual Report 2006' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Annual Report 2006' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Annual Report 2006' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Annual Report 2006' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Annual Report 2006' LIMIT 1), 17);

-- Project 395: Summit Lodge & Spa Digital Experience
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Summit Lodge & Spa Digital Experience',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'web_design',
    'travel_hospitality',
    'Led the full redesign of Summit Lodge & Spa''s web presence, creating a responsive, accessible site with a elegant visual language. Key features included custom illustrations, stat highlight cards, and an intuitive navigation system. The design prioritized performance and conversion for senior citizens.',
    'elegant',
    'asymmetric',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Raleway', 'Source Serif Pro', 'Helvetica Neue']::TEXT[],
    ARRAY['Blender', 'Tableau', 'Adobe Illustrator', 'Adobe XD']::TEXT[],
    'high',
    'senior citizens',
    2005,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Digital Experience' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Digital Experience' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Digital Experience' LIMIT 1), 4);

-- Project 396: Summit Lodge & Spa Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Summit Lodge & Spa Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Summit Lodge & Spa' LIMIT 1),
    'branding_identity',
    'travel_hospitality',
    'Developed a complete brand identity system for Summit Lodge & Spa including logo, color palette, typography, and usage guidelines. The corporate direction was crafted to resonate with tech-savvy millennials while differentiating Summit Lodge & Spa in the travel hospitality space. Delivered a comprehensive brand toolkit.',
    'corporate',
    'modular',
    ARRAY['#003366', '#FFFFFF', '#0066CC', '#E8E8E8']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Georgia']::TEXT[],
    ARRAY['Adobe Photoshop', 'Figma', 'After Effects', 'Adobe Illustrator']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2007,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Visual Identity Refresh' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Visual Identity Refresh' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Visual Identity Refresh' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Summit Lodge & Spa Visual Identity Refresh' LIMIT 1), 20);

-- Project 397: Habitat Renewal Coalition Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Habitat Renewal Coalition Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Created a cohesive visual identity for Habitat Renewal Coalition rooted in their Environmental Justice mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with environmental advocates.',
    'elegant',
    'split_screen',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Montserrat']::TEXT[],
    ARRAY['After Effects', 'Canva', 'Adobe XD']::TEXT[],
    'premium',
    'environmental advocates',
    2023,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Logo & Identity Package' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Logo & Identity Package' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Logo & Identity Package' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Logo & Identity Package' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Habitat Renewal Coalition Logo & Identity Package' LIMIT 1), 26);

-- Project 398: Wavelength Music Festival Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wavelength Music Festival Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Wavelength Music Festival' LIMIT 1),
    'branding_identity',
    'entertainment',
    'Created a cohesive visual identity for Wavelength Music Festival rooted in their Festival Experience mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with environmental advocates.',
    'minimalist',
    'modular',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Nunito', 'Libre Baskerville', 'PT Serif']::TEXT[],
    ARRAY['After Effects', 'Webflow', 'Sketch']::TEXT[],
    'high',
    'environmental advocates',
    2019,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brand Guidelines & Toolkit' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brand Guidelines & Toolkit' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Wavelength Music Festival Brand Guidelines & Toolkit' LIMIT 1), 37);

-- Project 399: SunBridge Solar Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SunBridge Solar Brand Identity System',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'branding_identity',
    'energy',
    'Developed a complete brand identity system for SunBridge Solar including logo, color palette, typography, and usage guidelines. The bold direction was crafted to resonate with nonprofit donors while differentiating SunBridge Solar in the energy space. Delivered a comprehensive brand toolkit.',
    'bold',
    'freeform',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Oswald', 'Archivo']::TEXT[],
    ARRAY['Tableau', 'Figma']::TEXT[],
    'mid',
    'nonprofit donors',
    2022,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SunBridge Solar Brand Identity System' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Brand Identity System' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Brand Identity System' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Brand Identity System' LIMIT 1), 51);

-- Project 400: Healthcare Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Healthcare Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'infographic',
    'healthcare',
    'Created a multi-section infographic breaking down Mental Wellness trends for Clearpath Diagnostics. The design leveraged testimonial blocks, data maps, and custom iconography to make dense data approachable for tech-savvy millennials. Delivered in both digital and print-ready formats.',
    'minimalist',
    'asymmetric',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Raleway']::TEXT[],
    ARRAY['Adobe Illustrator', 'Procreate', 'After Effects', 'Tableau']::TEXT[],
    'premium',
    'tech-savvy millennials',
    2018,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Healthcare Impact Report Infographic' LIMIT 1), 31);

-- Project 401: Granite Peak Capital Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Granite Peak Capital Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'Granite Peak Capital' LIMIT 1),
    'editorial_design',
    'finance',
    'Created an editorial layout for Granite Peak Capital''s Digital Banking content, blending longform storytelling with data maps and process flow diagrams. The futuristic design established a distinctive voice for reaching community members.',
    'futuristic',
    'single_column',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Raleway', 'Helvetica Neue']::TEXT[],
    ARRAY['Canva', 'After Effects', 'Sketch', 'Procreate']::TEXT[],
    'high',
    'community members',
    2013,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Whitepaper Series' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Whitepaper Series' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Whitepaper Series' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Granite Peak Capital Whitepaper Series' LIMIT 1), 57);

-- Project 402: Cornerstone Development Group Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Brand Identity System',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Created a cohesive visual identity for Cornerstone Development Group rooted in their Investment Returns mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with policy makers.',
    'data_driven',
    'grid',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Lora', 'PT Serif']::TEXT[],
    ARRAY['Adobe Illustrator', 'Webflow', 'Blender', 'Adobe InDesign']::TEXT[],
    'premium',
    'policy makers',
    2010,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Identity System' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Identity System' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Identity System' LIMIT 1), 2);

-- Project 403: Volunteer Network Keynote Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Volunteer Network Keynote Deck',
    (SELECT id FROM clients WHERE name = 'Habitat Renewal Coalition' LIMIT 1),
    'presentation',
    'nonprofit',
    'Created a polished pitch deck for Habitat Renewal Coalition with 64 slides covering strategy, data, and vision. The elegant design balanced pull quotes with clean typography to keep C-suite executives engaged throughout.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Oswald', 'Archivo']::TEXT[],
    ARRAY['Blender', 'Canva', 'Adobe XD']::TEXT[],
    'mid',
    'C-suite executives',
    2004,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Volunteer Network Keynote Deck' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Volunteer Network Keynote Deck' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Volunteer Network Keynote Deck' LIMIT 1), 15), ((SELECT id FROM projects WHERE title = 'Volunteer Network Keynote Deck' LIMIT 1), 9);

-- Project 404: How Supply Chain Works — Visual Breakdown
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'How Supply Chain Works — Visual Breakdown',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'infographic',
    'manufacturing',
    'Created a multi-section infographic breaking down Supply Chain trends for Ironridge Manufacturing. The design leveraged process flow diagrams, stat highlight cards, and custom iconography to make dense data approachable for industry analysts. Delivered in both digital and print-ready formats.',
    'playful',
    'asymmetric',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Lora', 'Georgia', 'Archivo']::TEXT[],
    ARRAY['After Effects', 'Figma', 'Sketch']::TEXT[],
    'mid',
    'industry analysts',
    2009,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'How Supply Chain Works — Visual Breakdown' LIMIT 1), 25);

-- Project 405: Safety Standards Editorial Feature
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Safety Standards Editorial Feature',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Created an editorial layout for Precision Dynamics Corp.''s Safety Standards content, blending longform storytelling with data maps and charts and graphs. The retro design established a distinctive voice for reaching families.',
    'retro',
    'modular',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Inter', 'Space Grotesk', 'Nunito']::TEXT[],
    ARRAY['Adobe InDesign', 'Canva']::TEXT[],
    'premium',
    'families',
    2017,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Safety Standards Editorial Feature' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Safety Standards Editorial Feature' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Safety Standards Editorial Feature' LIMIT 1), 4);

-- Project 406: Fieldstone Brewing Co. Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Fieldstone Brewing Co. Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'web_design',
    'food_beverage',
    'Led the full redesign of Fieldstone Brewing Co.''s web presence, creating a responsive, accessible site with a bold visual language. Key features included stat highlight cards, custom illustrations, and an intuitive navigation system. The design prioritized performance and conversion for community members.',
    'bold',
    'freeform',
    ARRAY['#E63946', '#1D3557', '#F1FAEE', '#457B9D']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Futura', 'Oswald']::TEXT[],
    ARRAY['Sketch', 'Blender', 'Procreate']::TEXT[],
    'mid',
    'community members',
    2014,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Landing Page Suite' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Landing Page Suite' LIMIT 1), 20);

-- Project 407: Ember & Oak Home Goods Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'editorial_design',
    'retail',
    'Designed a publication for Ember & Oak Home Goods focused on Loyalty Program, featuring a data_driven editorial style with data maps, dashboard widgets, and thoughtful typography across 32 pages for investors and stakeholders.',
    'data_driven',
    'modular',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Lora', 'Poppins']::TEXT[],
    ARRAY['Webflow', 'Figma', 'Adobe XD']::TEXT[],
    'premium',
    'investors and stakeholders',
    2009,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Magazine Layout' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Magazine Layout' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Magazine Layout' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Magazine Layout' LIMIT 1), 20);

-- Project 408: Thornton & Associates LLP KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Thornton & Associates LLP KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Thornton & Associates LLP' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Thornton & Associates LLP covering Case Studies analytics. The system included interactive filters, real-time dashboards, and exportable reports, all styled in a retro visual language for community members.',
    'retro',
    'modular',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Archivo', 'Source Serif Pro', 'Work Sans']::TEXT[],
    ARRAY['Procreate', 'Sketch', 'Tableau', 'Adobe Illustrator']::TEXT[],
    'high',
    'community members',
    2019,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Thornton & Associates LLP KPI Visualization System' LIMIT 1), 49);

-- Project 409: Developer Tools By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Developer Tools By the Numbers',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'infographic',
    'technology',
    'Designed a visually compelling infographic for Nexon Cloud Solutions that distilled complex Developer Tools data into an accessible, shareable format. The piece featured infographic sections and stat highlight cards, using a corporate aesthetic to engage senior citizens. Color-coded sections guided readers through key statistics and takeaways.',
    'corporate',
    'split_screen',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Inter', 'Futura']::TEXT[],
    ARRAY['Figma', 'Tableau', 'Sketch']::TEXT[],
    'high',
    'senior citizens',
    2019,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Developer Tools By the Numbers' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Developer Tools By the Numbers' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Developer Tools By the Numbers' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Developer Tools By the Numbers' LIMIT 1), 55);

-- Project 410: Harbor View Realty Packaging Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Harbor View Realty Packaging Redesign',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'packaging',
    'real_estate',
    'Designed product packaging for Harbor View Realty that balanced shelf appeal with brand storytelling. The bold design featured hero photography, sustainable material choices, and clear product information hierarchy for families.',
    'bold',
    'grid',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Playfair Display', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Premiere', 'Figma', 'Adobe XD', 'Adobe Illustrator']::TEXT[],
    'high',
    'families',
    2003,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Harbor View Realty Packaging Redesign' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Packaging Redesign' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Packaging Redesign' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Harbor View Realty Packaging Redesign' LIMIT 1), 6);

-- Project 411: Public Health Explained: An Infographic Guide
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Public Health Explained: An Infographic Guide',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'infographic',
    'government',
    'Created a multi-section infographic breaking down Public Health trends for State of Oregon — DEQ. The design leveraged charts and graphs, comparison tables, and custom iconography to make dense data approachable for general public. Delivered in both digital and print-ready formats.',
    'bold',
    'single_column',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Fira Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'Tableau', 'Adobe Premiere']::TEXT[],
    'mid',
    'general public',
    2011,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Public Health Explained: An Infographic Guide' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Public Health Explained: An Infographic Guide' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Public Health Explained: An Infographic Guide' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Public Health Explained: An Infographic Guide' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Public Health Explained: An Infographic Guide' LIMIT 1), 2);

-- Project 412: Arclight AI Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Catalog Design',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'print_collateral',
    'technology',
    'Produced print collateral for Arclight AI''s API Ecosystem initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive data_driven design used custom illustrations to communicate key messages to healthcare professionals.',
    'data_driven',
    'grid',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Avenir', 'Helvetica Neue', 'Merriweather']::TEXT[],
    ARRAY['Procreate', 'Adobe Premiere', 'Adobe InDesign', 'Sketch']::TEXT[],
    'mid',
    'healthcare professionals',
    2003,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Catalog Design' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Arclight AI Catalog Design' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Arclight AI Catalog Design' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Arclight AI Catalog Design' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Arclight AI Catalog Design' LIMIT 1), 10);

-- Project 413: Industry Compliance Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry Compliance Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'data_visualization',
    'legal',
    'Designed a comprehensive data visualization suite for Cascade Legal Group covering Industry Compliance analytics. The system included stat highlight cards, real-time dashboards, and exportable reports, all styled in a elegant visual language for parents.',
    'elegant',
    'asymmetric',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Garamond']::TEXT[],
    ARRAY['Adobe InDesign', 'Blender', 'D3.js']::TEXT[],
    'premium',
    'parents',
    2014,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry Compliance Interactive Data Portal' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Industry Compliance Interactive Data Portal' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Industry Compliance Interactive Data Portal' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Industry Compliance Interactive Data Portal' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Industry Compliance Interactive Data Portal' LIMIT 1), 24);

-- Project 414: Pacific Grid Energy Website Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Grid Energy Website Redesign',
    (SELECT id FROM clients WHERE name = 'Pacific Grid Energy' LIMIT 1),
    'web_design',
    'energy',
    'Designed and prototyped a modern web experience for Pacific Grid Energy focused on Sustainability Report. The site featured infographic sections, timeline visuals, and seamless mobile responsiveness. User testing with policy makers informed iterative design refinements.',
    'organic',
    'editorial',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'IBM Plex Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'After Effects']::TEXT[],
    'premium',
    'policy makers',
    2021,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Pacific Grid Energy Website Redesign' LIMIT 1), 3);

-- Project 415: Sage & Thyme Restaurant Group Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Content Publication',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Designed a publication for Sage & Thyme Restaurant Group focused on Food Safety, featuring a futuristic editorial style with testimonial blocks, icon systems, and thoughtful typography across 32 pages for prospective customers.',
    'futuristic',
    'card_based',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Open Sans', 'Oswald']::TEXT[],
    ARRAY['Adobe Illustrator', 'After Effects', 'Procreate', 'Sketch']::TEXT[],
    'premium',
    'prospective customers',
    2010,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Content Publication' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Content Publication' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Content Publication' LIMIT 1), 15);

-- Project 416: Manufacturing Impact Report Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Manufacturing Impact Report Infographic',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'infographic',
    'manufacturing',
    'Designed a visually compelling infographic for Precision Dynamics Corp. that distilled complex Safety Standards data into an accessible, shareable format. The piece featured pull quotes and interactive filters, using a bold aesthetic to engage internal team members. Color-coded sections guided readers through key statistics and takeaways.',
    'bold',
    'modular',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Poppins']::TEXT[],
    ARRAY['Sketch', 'Adobe Illustrator', 'Adobe InDesign']::TEXT[],
    'mid',
    'internal team members',
    2014,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Manufacturing Impact Report Infographic' LIMIT 1), 48), ((SELECT id FROM projects WHERE title = 'Manufacturing Impact Report Infographic' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Manufacturing Impact Report Infographic' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Manufacturing Impact Report Infographic' LIMIT 1), 31);

-- Project 417: SunBridge Solar Sales Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'SunBridge Solar Sales Presentation',
    (SELECT id FROM clients WHERE name = 'SunBridge Solar' LIMIT 1),
    'presentation',
    'energy',
    'Created a polished pitch deck for SunBridge Solar with 56 slides covering strategy, data, and vision. The corporate design balanced interactive filters with clean typography to keep nonprofit donors engaged throughout.',
    'corporate',
    'split_screen',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Oswald']::TEXT[],
    ARRAY['Sketch', 'Tableau', 'Adobe Premiere']::TEXT[],
    'premium',
    'nonprofit donors',
    2017,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sales Presentation' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sales Presentation' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'SunBridge Solar Sales Presentation' LIMIT 1), 27);

-- Project 418: Workforce Development Campaign Identity for CoreSteel Industries
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Workforce Development Campaign Identity for CoreSteel Industries',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'branding_identity',
    'manufacturing',
    'Created a cohesive visual identity for CoreSteel Industries rooted in their Workforce Development mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with healthcare professionals.',
    'retro',
    'freeform',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Merriweather']::TEXT[],
    ARRAY['Adobe Photoshop', 'Sketch']::TEXT[],
    'high',
    'healthcare professionals',
    2019,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Workforce Development Campaign Identity for CoreSteel Industries' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Workforce Development Campaign Identity for CoreSteel Industries' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Workforce Development Campaign Identity for CoreSteel Industries' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Workforce Development Campaign Identity for CoreSteel Industries' LIMIT 1), 37);

-- Project 419: Nexon Cloud Solutions Sales Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Nexon Cloud Solutions Sales Presentation',
    (SELECT id FROM clients WHERE name = 'Nexon Cloud Solutions' LIMIT 1),
    'presentation',
    'technology',
    'Created a polished pitch deck for Nexon Cloud Solutions with 48 slides covering strategy, data, and vision. The editorial design balanced infographic sections with clean typography to keep C-suite executives engaged throughout.',
    'editorial',
    'asymmetric',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Garamond', 'Fira Sans']::TEXT[],
    ARRAY['Tableau', 'Canva', 'Figma']::TEXT[],
    'premium',
    'C-suite executives',
    2005,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Sales Presentation' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Sales Presentation' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Sales Presentation' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Nexon Cloud Solutions Sales Presentation' LIMIT 1), 27);

-- Project 420: Trailhead Adventures Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Product Packaging',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'packaging',
    'travel_hospitality',
    'Designed product packaging for Trailhead Adventures that balanced shelf appeal with brand storytelling. The retro design featured dashboard widgets, sustainable material choices, and clear product information hierarchy for young professionals.',
    'retro',
    'asymmetric',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Fira Sans', 'Futura']::TEXT[],
    ARRAY['Webflow', 'Canva', 'After Effects', 'Figma']::TEXT[],
    'mid',
    'young professionals',
    2016,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Product Packaging' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Product Packaging' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Product Packaging' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Product Packaging' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Product Packaging' LIMIT 1), 30);

-- Project 421: Arclight AI Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'social_media',
    'technology',
    'Developed a social media content system for Arclight AI spanning Instagram, LinkedIn, and Twitter. The retro visual approach used process flow diagrams and data maps to boost engagement with retail consumers. Included templates, content guidelines, and a 30-day launch calendar.',
    'retro',
    'card_based',
    ARRAY['#CC5A47', '#F4A460', '#4A6741', '#F5DEB3']::VARCHAR(7)[],
    ARRAY['Archivo', 'Georgia']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe InDesign', 'Adobe Illustrator']::TEXT[],
    'low',
    'retail consumers',
    2017,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Social Media Campaign' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Media Campaign' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Media Campaign' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Media Campaign' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Media Campaign' LIMIT 1), 7);

-- Project 422: Arclight AI Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'editorial_design',
    'technology',
    'Designed a publication for Arclight AI focused on IoT Solutions, featuring a bold editorial style with hero photography, comparison tables, and thoughtful typography across 64 pages for nonprofit donors.',
    'bold',
    'card_based',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Georgia', 'Helvetica Neue', 'Roboto']::TEXT[],
    ARRAY['Adobe Illustrator', 'Procreate', 'Adobe Photoshop']::TEXT[],
    'low',
    'nonprofit donors',
    2013,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Magazine Layout' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Arclight AI Magazine Layout' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Arclight AI Magazine Layout' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Arclight AI Magazine Layout' LIMIT 1), 28);

-- Project 423: Farm to Table Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Farm to Table Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'presentation',
    'food_beverage',
    'Created a polished pitch deck for Coastal Harvest Seafood with 32 slides covering strategy, data, and vision. The playful design balanced charts and graphs with clean typography to keep industry analysts engaged throughout.',
    'playful',
    'modular',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Raleway', 'Source Serif Pro', 'Futura']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Illustrator', 'Adobe Photoshop', 'Adobe Premiere']::TEXT[],
    'high',
    'industry analysts',
    2003,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Farm to Table Workshop Materials' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Farm to Table Workshop Materials' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Farm to Table Workshop Materials' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Farm to Table Workshop Materials' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Farm to Table Workshop Materials' LIMIT 1), 56);

-- Project 424: Cornerstone Development Group Retail Packaging Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Retail Packaging Suite',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'packaging',
    'real_estate',
    'Created a packaging system for Cornerstone Development Group''s Urban Development product line. The minimalist design used data maps and tactile finishes to create a premium unboxing experience aligned with internal team members expectations.',
    'minimalist',
    'freeform',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Avenir', 'Libre Baskerville']::TEXT[],
    ARRAY['After Effects', 'Figma', 'Tableau']::TEXT[],
    'high',
    'internal team members',
    2013,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Retail Packaging Suite' LIMIT 1), 4);

-- Project 425: Peak Nutrition Labs Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'presentation',
    'food_beverage',
    'Designed a high-impact presentation deck for Peak Nutrition Labs to communicate Seasonal Menu insights to nonprofit donors. The futuristic slide design featured icon systems, data maps, and clear data storytelling across 80 slides.',
    'futuristic',
    'grid',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Futura', 'Montserrat', 'Libre Baskerville']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Illustrator']::TEXT[],
    'high',
    'nonprofit donors',
    2020,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 45), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Conference Presentation' LIMIT 1), 28);

-- Project 426: Pacific Northwest University Investor Pitch Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Northwest University Investor Pitch Deck',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'presentation',
    'education',
    'Created a polished pitch deck for Pacific Northwest University with 48 slides covering strategy, data, and vision. The organic design balanced testimonial blocks with clean typography to keep tech-savvy millennials engaged throughout.',
    'organic',
    'split_screen',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Oswald', 'Source Serif Pro', 'Helvetica Neue']::TEXT[],
    ARRAY['Tableau', 'Adobe Illustrator']::TEXT[],
    'high',
    'tech-savvy millennials',
    2017,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Investor Pitch Deck' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Investor Pitch Deck' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Investor Pitch Deck' LIMIT 1), 25);

-- Project 427: Coastal Harvest Seafood Newsletter Redesign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Coastal Harvest Seafood Newsletter Redesign',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'editorial_design',
    'food_beverage',
    'Created an editorial layout for Coastal Harvest Seafood''s Product Launch content, blending longform storytelling with pull quotes and data maps. The futuristic design established a distinctive voice for reaching healthcare professionals.',
    'futuristic',
    'grid',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Archivo', 'Fira Sans', 'Merriweather']::TEXT[],
    ARRAY['Canva', 'Adobe XD']::TEXT[],
    'high',
    'healthcare professionals',
    2022,
    8
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Newsletter Redesign' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Coastal Harvest Seafood Newsletter Redesign' LIMIT 1), 6);

-- Project 428: Peak Nutrition Labs Analytics Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Analytics Dashboard',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'data_visualization',
    'food_beverage',
    'Designed a comprehensive data visualization suite for Peak Nutrition Labs covering Craft Brewing analytics. The system included custom illustrations, real-time dashboards, and exportable reports, all styled in a organic visual language for retail consumers.',
    'organic',
    'single_column',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Source Serif Pro', 'Georgia']::TEXT[],
    ARRAY['Figma', 'Adobe Premiere']::TEXT[],
    'premium',
    'retail consumers',
    2010,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Analytics Dashboard' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Analytics Dashboard' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Analytics Dashboard' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Analytics Dashboard' LIMIT 1), 14);

-- Project 429: Resort Amenities By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Resort Amenities By the Numbers',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'infographic',
    'travel_hospitality',
    'Created a multi-section infographic breaking down Resort Amenities trends for Trailhead Adventures. The design leveraged full-bleed imagery, stat highlight cards, and custom iconography to make dense data approachable for students and educators. Delivered in both digital and print-ready formats.',
    'elegant',
    'card_based',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Oswald', 'Garamond', 'PT Serif']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe InDesign']::TEXT[],
    'low',
    'students and educators',
    2014,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Resort Amenities By the Numbers' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Resort Amenities By the Numbers' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Resort Amenities By the Numbers' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Resort Amenities By the Numbers' LIMIT 1), 13);

-- Project 430: Precision Dynamics Corp. Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Precision Dynamics Corp. Rebrand',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'branding_identity',
    'manufacturing',
    'Created a cohesive visual identity for Precision Dynamics Corp. rooted in their Innovation Pipeline mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with community members.',
    'elegant',
    'freeform',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Oswald', 'Lora']::TEXT[],
    ARRAY['Blender', 'Sketch']::TEXT[],
    'high',
    'community members',
    2025,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Precision Dynamics Corp. Rebrand' LIMIT 1), 27);

-- Project 431: Azure Coast Resorts Investor Pitch Deck
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Azure Coast Resorts Investor Pitch Deck',
    (SELECT id FROM clients WHERE name = 'Azure Coast Resorts' LIMIT 1),
    'presentation',
    'travel_hospitality',
    'Created a polished pitch deck for Azure Coast Resorts with 56 slides covering strategy, data, and vision. The elegant design balanced comparison tables with clean typography to keep policy makers engaged throughout.',
    'elegant',
    'single_column',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Georgia', 'Fira Sans', 'Libre Baskerville']::TEXT[],
    ARRAY['D3.js', 'Adobe InDesign', 'Adobe XD']::TEXT[],
    'low',
    'policy makers',
    2009,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Azure Coast Resorts Investor Pitch Deck' LIMIT 1), 18);

-- Project 432: Clean Water Alliance Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clean Water Alliance Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Clean Water Alliance' LIMIT 1),
    'branding_identity',
    'nonprofit',
    'Developed a complete brand identity system for Clean Water Alliance including logo, color palette, typography, and usage guidelines. The corporate direction was crafted to resonate with small business owners while differentiating Clean Water Alliance in the nonprofit space. Delivered a comprehensive brand toolkit.',
    'corporate',
    'editorial',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Georgia', 'PT Serif']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe Premiere', 'Webflow', 'Adobe XD']::TEXT[],
    'high',
    'small business owners',
    2022,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Logo & Identity Package' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Logo & Identity Package' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Clean Water Alliance Logo & Identity Package' LIMIT 1), 55);

-- Project 433: Distance Education Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Distance Education Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'STEM Futures Foundation' LIMIT 1),
    'social_media',
    'education',
    'Developed a social media content system for STEM Futures Foundation spanning Instagram, LinkedIn, and Twitter. The playful visual approach used icon systems and charts and graphs to boost engagement with general public. Included templates, content guidelines, and a 30-day launch calendar.',
    'playful',
    'single_column',
    ARRAY['#F72585', '#7209B7', '#3A0CA3', '#4CC9F0']::VARCHAR(7)[],
    ARRAY['Roboto', 'Georgia', 'Merriweather']::TEXT[],
    ARRAY['Webflow', 'Adobe Illustrator', 'Adobe InDesign', 'Blender']::TEXT[],
    'mid',
    'general public',
    2025,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Distance Education Social Launch Kit' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Distance Education Social Launch Kit' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Distance Education Social Launch Kit' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Distance Education Social Launch Kit' LIMIT 1), 10);

-- Project 434: Finance Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Finance Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'data_visualization',
    'finance',
    'Designed a comprehensive data visualization suite for BlueLine Wealth Advisors covering Fintech Innovation analytics. The system included dashboard widgets, real-time dashboards, and exportable reports, all styled in a bold visual language for tech-savvy millennials.',
    'bold',
    'split_screen',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Georgia', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'D3.js', 'Tableau', 'Procreate']::TEXT[],
    'mid',
    'tech-savvy millennials',
    2006,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Finance Benchmark Dashboard' LIMIT 1), 26);

-- Project 435: Customer Experience Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Customer Experience Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'social_media',
    'retail',
    'Developed a social media content system for Atlas Outdoor Co. spanning Instagram, LinkedIn, and Twitter. The editorial visual approach used dashboard widgets and timeline visuals to boost engagement with senior citizens. Included templates, content guidelines, and a 30-day launch calendar.',
    'editorial',
    'modular',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Poppins', 'Roboto', 'Oswald']::TEXT[],
    ARRAY['Tableau', 'Sketch', 'Adobe Illustrator']::TEXT[],
    'premium',
    'senior citizens',
    2006,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Customer Experience Social Launch Kit' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Customer Experience Social Launch Kit' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Customer Experience Social Launch Kit' LIMIT 1), 13), ((SELECT id FROM projects WHERE title = 'Customer Experience Social Launch Kit' LIMIT 1), 51);

-- Project 436: Peak Nutrition Labs Rebrand
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Peak Nutrition Labs Rebrand',
    (SELECT id FROM clients WHERE name = 'Peak Nutrition Labs' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Created a cohesive visual identity for Peak Nutrition Labs rooted in their Nutrition Facts mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with families.',
    'data_driven',
    'editorial',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Fira Sans']::TEXT[],
    ARRAY['Tableau', 'D3.js', 'After Effects']::TEXT[],
    'high',
    'families',
    2008,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 53), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Peak Nutrition Labs Rebrand' LIMIT 1), 21);

-- Project 437: Sustainable Manufacturing Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sustainable Manufacturing Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Precision Dynamics Corp.' LIMIT 1),
    'presentation',
    'manufacturing',
    'Created a polished pitch deck for Precision Dynamics Corp. with 40 slides covering strategy, data, and vision. The minimalist design balanced sidebar callouts with clean typography to keep C-suite executives engaged throughout.',
    'minimalist',
    'card_based',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Avenir', 'Proxima Nova']::TEXT[],
    ARRAY['Sketch', 'Adobe XD', 'Figma']::TEXT[],
    'high',
    'C-suite executives',
    2023,
    5
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sustainable Manufacturing Workshop Materials' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Sustainable Manufacturing Workshop Materials' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Sustainable Manufacturing Workshop Materials' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Sustainable Manufacturing Workshop Materials' LIMIT 1), 13);

-- Project 438: Retail Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Retail Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'data_visualization',
    'retail',
    'Designed a comprehensive data visualization suite for Atlas Outdoor Co. covering Loyalty Program analytics. The system included dashboard widgets, real-time dashboards, and exportable reports, all styled in a data_driven visual language for community members.',
    'data_driven',
    'split_screen',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Montserrat', 'Helvetica Neue']::TEXT[],
    ARRAY['Sketch', 'Blender', 'Adobe XD']::TEXT[],
    'low',
    'community members',
    2024,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 12);

-- Project 439: Sage & Thyme Restaurant Group Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Created a cohesive visual identity for Sage & Thyme Restaurant Group rooted in their Organic Sourcing mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with C-suite executives.',
    'editorial',
    'asymmetric',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['IBM Plex Sans', 'Oswald', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe InDesign', 'Adobe XD', 'Canva']::TEXT[],
    'premium',
    'C-suite executives',
    2010,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Visual Identity Refresh' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Visual Identity Refresh' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Visual Identity Refresh' LIMIT 1), 11);

-- Project 440: City of Portland — Parks Dept Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'City of Portland — Parks Dept Conference Presentation',
    (SELECT id FROM clients WHERE name = 'City of Portland — Parks Dept' LIMIT 1),
    'presentation',
    'government',
    'Designed a high-impact presentation deck for City of Portland — Parks Dept to communicate Budget Transparency insights to general public. The organic slide design featured data maps, hero photography, and clear data storytelling across 56 slides.',
    'organic',
    'grid',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Garamond', 'Space Grotesk']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe Premiere', 'Webflow', 'D3.js']::TEXT[],
    'low',
    'general public',
    2019,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Conference Presentation' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Conference Presentation' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'City of Portland — Parks Dept Conference Presentation' LIMIT 1), 13);

-- Project 441: Wanderlust Travel Co. Instagram Content Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Wanderlust Travel Co. Instagram Content Series',
    (SELECT id FROM clients WHERE name = 'Wanderlust Travel Co.' LIMIT 1),
    'social_media',
    'travel_hospitality',
    'Developed a social media content system for Wanderlust Travel Co. spanning Instagram, LinkedIn, and Twitter. The organic visual approach used charts and graphs and infographic sections to boost engagement with policy makers. Included templates, content guidelines, and a 30-day launch calendar.',
    'organic',
    'split_screen',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Inter', 'Libre Baskerville', 'Garamond']::TEXT[],
    ARRAY['Figma', 'D3.js', 'After Effects']::TEXT[],
    'mid',
    'policy makers',
    2023,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Instagram Content Series' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Instagram Content Series' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Instagram Content Series' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Instagram Content Series' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Wanderlust Travel Co. Instagram Content Series' LIMIT 1), 5);

-- Project 442: Student Success Microsite for Global Learners Initiative
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Student Success Microsite for Global Learners Initiative',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'web_design',
    'education',
    'Led the full redesign of Global Learners Initiative''s web presence, creating a responsive, accessible site with a corporate visual language. Key features included interactive filters, comparison tables, and an intuitive navigation system. The design prioritized performance and conversion for young professionals.',
    'corporate',
    'modular',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Open Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Webflow', 'Sketch', 'Adobe InDesign']::TEXT[],
    'mid',
    'young professionals',
    2006,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 31), ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Student Success Microsite for Global Learners Initiative' LIMIT 1), 59);

-- Project 443: Skyline Properties Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'presentation',
    'real_estate',
    'Created a polished pitch deck for Skyline Properties with 48 slides covering strategy, data, and vision. The corporate design balanced full-bleed imagery with clean typography to keep parents engaged throughout.',
    'corporate',
    'single_column',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Poppins', 'Oswald']::TEXT[],
    ARRAY['Adobe Illustrator', 'Canva']::TEXT[],
    'premium',
    'parents',
    2021,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Conference Presentation' LIMIT 1), 38), ((SELECT id FROM projects WHERE title = 'Skyline Properties Conference Presentation' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'Skyline Properties Conference Presentation' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Skyline Properties Conference Presentation' LIMIT 1), 4);

-- Project 444: Telehealth Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Telehealth Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'presentation',
    'healthcare',
    'Created a polished pitch deck for Sunrise Senior Living with 24 slides covering strategy, data, and vision. The futuristic design balanced charts and graphs with clean typography to keep industry analysts engaged throughout.',
    'futuristic',
    'card_based',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Roboto']::TEXT[],
    ARRAY['Tableau', 'Procreate', 'After Effects', 'Canva']::TEXT[],
    'low',
    'industry analysts',
    2014,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Telehealth Workshop Materials' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Telehealth Workshop Materials' LIMIT 1), 14);

-- Project 445: IoT Solutions Interactive Data Portal
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'IoT Solutions Interactive Data Portal',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'data_visualization',
    'technology',
    'Built an interactive data visualization system for Arclight AI to explore IoT Solutions metrics. The minimalist design featured full-bleed imagery, dashboard widgets, and filterable views that empowered families to discover insights independently.',
    'minimalist',
    'grid',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Lora']::TEXT[],
    ARRAY['Procreate', 'Webflow', 'Tableau', 'Adobe InDesign']::TEXT[],
    'mid',
    'families',
    2024,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'IoT Solutions Interactive Data Portal' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'IoT Solutions Interactive Data Portal' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'IoT Solutions Interactive Data Portal' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'IoT Solutions Interactive Data Portal' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'IoT Solutions Interactive Data Portal' LIMIT 1), 20);

-- Project 446: Brand Launch By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Brand Launch By the Numbers',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'infographic',
    'retail',
    'Created a multi-section infographic breaking down Brand Launch trends for Atlas Outdoor Co.. The design leveraged dashboard widgets, stat highlight cards, and custom iconography to make dense data approachable for families. Delivered in both digital and print-ready formats.',
    'organic',
    'grid',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Roboto', 'Nunito']::TEXT[],
    ARRAY['Adobe Illustrator', 'Canva']::TEXT[],
    'mid',
    'families',
    2016,
    2
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Brand Launch By the Numbers' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Brand Launch By the Numbers' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Brand Launch By the Numbers' LIMIT 1), 56), ((SELECT id FROM projects WHERE title = 'Brand Launch By the Numbers' LIMIT 1), 20);

-- Project 447: Skyline Properties KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'data_visualization',
    'real_estate',
    'Built an interactive data visualization system for Skyline Properties to explore Urban Development metrics. The data_driven design featured pull quotes, comparison tables, and filterable views that empowered government officials to discover insights independently.',
    'data_driven',
    'single_column',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Libre Baskerville']::TEXT[],
    ARRAY['D3.js', 'Adobe Illustrator', 'Adobe Photoshop']::TEXT[],
    'mid',
    'government officials',
    2010,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties KPI Visualization System' LIMIT 1), 43), ((SELECT id FROM projects WHERE title = 'Skyline Properties KPI Visualization System' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Skyline Properties KPI Visualization System' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Skyline Properties KPI Visualization System' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Skyline Properties KPI Visualization System' LIMIT 1), 26);

-- Project 448: The State of Farm to Table — Visual Summary
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'The State of Farm to Table — Visual Summary',
    (SELECT id FROM clients WHERE name = 'Coastal Harvest Seafood' LIMIT 1),
    'infographic',
    'food_beverage',
    'Designed a visually compelling infographic for Coastal Harvest Seafood that distilled complex Farm to Table data into an accessible, shareable format. The piece featured testimonial blocks and pull quotes, using a futuristic aesthetic to engage government officials. Color-coded sections guided readers through key statistics and takeaways.',
    'futuristic',
    'grid',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Inter', 'Garamond', 'Work Sans']::TEXT[],
    ARRAY['Webflow', 'Adobe XD', 'Adobe Photoshop']::TEXT[],
    'mid',
    'government officials',
    2008,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'The State of Farm to Table — Visual Summary' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'The State of Farm to Table — Visual Summary' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'The State of Farm to Table — Visual Summary' LIMIT 1), 51), ((SELECT id FROM projects WHERE title = 'The State of Farm to Table — Visual Summary' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'The State of Farm to Table — Visual Summary' LIMIT 1), 8);

-- Project 449: Ironridge Manufacturing Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ironridge Manufacturing Product Packaging',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'packaging',
    'manufacturing',
    'Created a packaging system for Ironridge Manufacturing''s Industry 4.0 product line. The organic design used icon systems and tactile finishes to create a premium unboxing experience aligned with industry analysts expectations.',
    'organic',
    'asymmetric',
    ARRAY['#556B2F', '#FFF8DC', '#8B7355', '#2E4600']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Open Sans']::TEXT[],
    ARRAY['Webflow', 'Adobe Illustrator', 'Procreate']::TEXT[],
    'high',
    'industry analysts',
    2019,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Product Packaging' LIMIT 1), 59), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Product Packaging' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Product Packaging' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Ironridge Manufacturing Product Packaging' LIMIT 1), 9);

-- Project 450: Annual Supply Chain Snapshot
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Annual Supply Chain Snapshot',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'infographic',
    'manufacturing',
    'Designed a visually compelling infographic for CoreSteel Industries that distilled complex Supply Chain data into an accessible, shareable format. The piece featured process flow diagrams and sidebar callouts, using a corporate aesthetic to engage environmental advocates. Color-coded sections guided readers through key statistics and takeaways.',
    'corporate',
    'freeform',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Fira Sans']::TEXT[],
    ARRAY['Adobe XD', 'Adobe InDesign']::TEXT[],
    'mid',
    'environmental advocates',
    2021,
    17
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Annual Supply Chain Snapshot' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Annual Supply Chain Snapshot' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Annual Supply Chain Snapshot' LIMIT 1), 24);

-- Project 451: State of Oregon — DEQ Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'social_media',
    'government',
    'Developed a social media content system for State of Oregon — DEQ spanning Instagram, LinkedIn, and Twitter. The futuristic visual approach used comparison tables and pull quotes to boost engagement with C-suite executives. Included templates, content guidelines, and a 30-day launch calendar.',
    'futuristic',
    'card_based',
    ARRAY['#0A0A0A', '#00FF88', '#6C63FF', '#1E1E30']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Georgia', 'Futura']::TEXT[],
    ARRAY['Adobe Illustrator', 'Figma', 'After Effects', 'Adobe InDesign']::TEXT[],
    'premium',
    'C-suite executives',
    2017,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Media Campaign' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Media Campaign' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Media Campaign' LIMIT 1), 7);

-- Project 452: BlueLine Wealth Advisors Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'BlueLine Wealth Advisors Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'BlueLine Wealth Advisors' LIMIT 1),
    'branding_identity',
    'finance',
    'Created a cohesive visual identity for BlueLine Wealth Advisors rooted in their Retirement Planning mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with internal team members.',
    'elegant',
    'editorial',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Oswald', 'Space Grotesk', 'Inter']::TEXT[],
    ARRAY['Adobe Illustrator', 'Blender', 'Sketch', 'Procreate']::TEXT[],
    'premium',
    'internal team members',
    2006,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Visual Identity Refresh' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Visual Identity Refresh' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Visual Identity Refresh' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'BlueLine Wealth Advisors Visual Identity Refresh' LIMIT 1), 24);

-- Project 453: Transit Planning Social Launch Kit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Transit Planning Social Launch Kit',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'social_media',
    'government',
    'Created a multi-platform social campaign for Maricopa County Public Health centered on Transit Planning. The design system featured infographic sections, adaptable templates, and motion graphics optimized for each platform. Targeted government officials with platform-specific messaging strategies.',
    'bold',
    'split_screen',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Georgia', 'Futura']::TEXT[],
    ARRAY['Webflow', 'Adobe XD', 'Adobe Photoshop', 'Tableau']::TEXT[],
    'premium',
    'government officials',
    2021,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Transit Planning Social Launch Kit' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Transit Planning Social Launch Kit' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Transit Planning Social Launch Kit' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Transit Planning Social Launch Kit' LIMIT 1), 44);

-- Project 454: Maricopa County Public Health Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Maricopa County Public Health Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'social_media',
    'government',
    'Created a multi-platform social campaign for Maricopa County Public Health centered on Civic Engagement. The design system featured testimonial blocks, adaptable templates, and motion graphics optimized for each platform. Targeted policy makers with platform-specific messaging strategies.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Avenir', 'Raleway', 'Montserrat']::TEXT[],
    ARRAY['Canva', 'Blender', 'D3.js', 'Adobe Premiere']::TEXT[],
    'low',
    'policy makers',
    2006,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Social Content Toolkit' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health Social Content Toolkit' LIMIT 1), 10);

-- Project 455: Ember & Oak Home Goods Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Ember & Oak Home Goods Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'Ember & Oak Home Goods' LIMIT 1),
    'editorial_design',
    'retail',
    'Designed a publication for Ember & Oak Home Goods focused on Product Line, featuring a data_driven editorial style with charts and graphs, process flow diagrams, and thoughtful typography across 24 pages for internal team members.',
    'data_driven',
    'card_based',
    ARRAY['#1976D2', '#FFA726', '#66BB6A', '#EF5350']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'PT Serif']::TEXT[],
    ARRAY['Adobe Premiere', 'Procreate', 'After Effects', 'Tableau']::TEXT[],
    'premium',
    'internal team members',
    2025,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 16), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 44), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Ember & Oak Home Goods Whitepaper Series' LIMIT 1), 51);

-- Project 456: Annual Sustainability Snapshot
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Annual Sustainability Snapshot',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'infographic',
    'real_estate',
    'Designed a visually compelling infographic for Harbor View Realty that distilled complex Sustainability data into an accessible, shareable format. The piece featured icon systems and custom illustrations, using a retro aesthetic to engage nonprofit donors. Color-coded sections guided readers through key statistics and takeaways.',
    'retro',
    'split_screen',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Roboto', 'Space Grotesk', 'IBM Plex Sans']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Adobe Photoshop', 'Adobe XD']::TEXT[],
    'high',
    'nonprofit donors',
    2008,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 34), ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Annual Sustainability Snapshot' LIMIT 1), 59);

-- Project 457: Store Experience Microsite for FreshCart Grocers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Store Experience Microsite for FreshCart Grocers',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'web_design',
    'retail',
    'Designed and prototyped a modern web experience for FreshCart Grocers focused on Store Experience. The site featured testimonial blocks, interactive filters, and seamless mobile responsiveness. User testing with environmental advocates informed iterative design refinements.',
    'playful',
    'freeform',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Futura', 'Proxima Nova', 'Roboto']::TEXT[],
    ARRAY['Adobe Illustrator', 'Webflow']::TEXT[],
    'low',
    'environmental advocates',
    2006,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Store Experience Microsite for FreshCart Grocers' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Store Experience Microsite for FreshCart Grocers' LIMIT 1), 22), ((SELECT id FROM projects WHERE title = 'Store Experience Microsite for FreshCart Grocers' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'Store Experience Microsite for FreshCart Grocers' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Store Experience Microsite for FreshCart Grocers' LIMIT 1), 55);

-- Project 458: Skyline Properties Key Metrics Infographic
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Skyline Properties Key Metrics Infographic',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'infographic',
    'real_estate',
    'Created a multi-section infographic breaking down Luxury Living trends for Skyline Properties. The design leveraged infographic sections, interactive filters, and custom iconography to make dense data approachable for government officials. Delivered in both digital and print-ready formats.',
    'corporate',
    'editorial',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Lora', 'Inter']::TEXT[],
    ARRAY['Adobe Photoshop', 'Figma', 'D3.js']::TEXT[],
    'high',
    'government officials',
    2003,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Skyline Properties Key Metrics Infographic' LIMIT 1), 41);

-- Project 459: CoreSteel Industries Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'social_media',
    'manufacturing',
    'Created a multi-platform social campaign for CoreSteel Industries centered on Industry 4.0. The design system featured infographic sections, adaptable templates, and motion graphics optimized for each platform. Targeted healthcare professionals with platform-specific messaging strategies.',
    'futuristic',
    'freeform',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Open Sans', 'PT Serif']::TEXT[],
    ARRAY['D3.js', 'Adobe InDesign', 'Adobe Illustrator', 'Blender']::TEXT[],
    'high',
    'healthcare professionals',
    2010,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Digital Ad Campaign' LIMIT 1), 12);

-- Project 460: Cornerstone Development Group Whitepaper Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Whitepaper Series',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'editorial_design',
    'real_estate',
    'Designed a publication for Cornerstone Development Group focused on Market Analysis, featuring a futuristic editorial style with hero photography, dashboard widgets, and thoughtful typography across 64 pages for small business owners.',
    'futuristic',
    'asymmetric',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Roboto', 'Avenir']::TEXT[],
    ARRAY['Adobe Illustrator', 'Adobe Premiere', 'Sketch']::TEXT[],
    'mid',
    'small business owners',
    2003,
    18
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Whitepaper Series' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Whitepaper Series' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Whitepaper Series' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Whitepaper Series' LIMIT 1), 22);

-- Project 461: Fieldstone Brewing Co. Product Packaging
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Fieldstone Brewing Co. Product Packaging',
    (SELECT id FROM clients WHERE name = 'Fieldstone Brewing Co.' LIMIT 1),
    'packaging',
    'food_beverage',
    'Designed product packaging for Fieldstone Brewing Co. that balanced shelf appeal with brand storytelling. The futuristic design featured timeline visuals, sustainable material choices, and clear product information hierarchy for policy makers.',
    'futuristic',
    'editorial',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'Nunito']::TEXT[],
    ARRAY['Adobe InDesign', 'Adobe Premiere', 'Adobe Photoshop', 'Procreate']::TEXT[],
    'high',
    'policy makers',
    2003,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 40), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Fieldstone Brewing Co. Product Packaging' LIMIT 1), 30);

-- Project 462: Arclight AI Year in Review 2025
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Year in Review 2025',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'annual_report',
    'technology',
    'Designed Arclight AI''s flagship annual report with a focus on storytelling through data. The report featured process flow diagrams and hero photography across 24 pages, balancing detailed financials with human-interest narratives for healthcare professionals.',
    'elegant',
    'freeform',
    ARRAY['#1A1A2E', '#F5F0EB', '#B8860B', '#D4C5A9']::VARCHAR(7)[],
    ARRAY['Merriweather', 'Open Sans', 'IBM Plex Sans']::TEXT[],
    ARRAY['Tableau', 'Adobe Illustrator', 'Adobe XD', 'Canva']::TEXT[],
    'mid',
    'healthcare professionals',
    2025,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Year in Review 2025' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Arclight AI Year in Review 2025' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Arclight AI Year in Review 2025' LIMIT 1), 9);

-- Project 463: Sunrise Senior Living Event Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sunrise Senior Living Event Materials',
    (SELECT id FROM clients WHERE name = 'Sunrise Senior Living' LIMIT 1),
    'print_collateral',
    'healthcare',
    'Designed a suite of print materials for Sunrise Senior Living including brochures, flyers, and event signage. The futuristic design featured full-bleed imagery and icon systems, maintaining brand consistency across all touchpoints for families.',
    'futuristic',
    'modular',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Poppins', 'Archivo', 'Merriweather']::TEXT[],
    ARRAY['Adobe Illustrator', 'Tableau', 'Adobe InDesign']::TEXT[],
    'low',
    'families',
    2021,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Event Materials' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Event Materials' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Sunrise Senior Living Event Materials' LIMIT 1), 31);

-- Project 464: CoreSteel Industries Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'social_media',
    'manufacturing',
    'Developed a social media content system for CoreSteel Industries spanning Instagram, LinkedIn, and Twitter. The elegant visual approach used dashboard widgets and custom illustrations to boost engagement with students and educators. Included templates, content guidelines, and a 30-day launch calendar.',
    'elegant',
    'asymmetric',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Futura', 'Space Grotesk']::TEXT[],
    ARRAY['Tableau', 'Blender', 'After Effects']::TEXT[],
    'high',
    'students and educators',
    2024,
    6
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Social Content Toolkit' LIMIT 1), 46), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Social Content Toolkit' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Social Content Toolkit' LIMIT 1), 6), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Social Content Toolkit' LIMIT 1), 34);

-- Project 465: CoreSteel Industries Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'CoreSteel Industries Content Publication',
    (SELECT id FROM clients WHERE name = 'CoreSteel Industries' LIMIT 1),
    'editorial_design',
    'manufacturing',
    'Created an editorial layout for CoreSteel Industries''s Workforce Development content, blending longform storytelling with interactive filters and stat highlight cards. The bold design established a distinctive voice for reaching environmental advocates.',
    'bold',
    'asymmetric',
    ARRAY['#FF5733', '#1A1A2E', '#FFD700', '#C70039']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Lora', 'Source Serif Pro']::TEXT[],
    ARRAY['Sketch', 'Tableau']::TEXT[],
    'high',
    'environmental advocates',
    2019,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Content Publication' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Content Publication' LIMIT 1), 54), ((SELECT id FROM projects WHERE title = 'CoreSteel Industries Content Publication' LIMIT 1), 23);

-- Project 466: Voices for Justice KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'data_visualization',
    'nonprofit',
    'Designed a comprehensive data visualization suite for Voices for Justice covering Food Security analytics. The system included custom illustrations, real-time dashboards, and exportable reports, all styled in a elegant visual language for senior citizens.',
    'elegant',
    'grid',
    ARRAY['#2C3E50', '#ECF0F1', '#C9A96E', '#8E7043']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'DM Sans']::TEXT[],
    ARRAY['Adobe Photoshop', 'Adobe XD', 'Blender']::TEXT[],
    'low',
    'senior citizens',
    2009,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Voices for Justice KPI Visualization System' LIMIT 1), 9);

-- Project 467: TerraCode Labs Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'TerraCode Labs Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'TerraCode Labs' LIMIT 1),
    'branding_identity',
    'technology',
    'Developed a complete brand identity system for TerraCode Labs including logo, color palette, typography, and usage guidelines. The retro direction was crafted to resonate with general public while differentiating TerraCode Labs in the technology space. Delivered a comprehensive brand toolkit.',
    'retro',
    'asymmetric',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Inter']::TEXT[],
    ARRAY['Tableau', 'Adobe XD']::TEXT[],
    'mid',
    'general public',
    2018,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'TerraCode Labs Logo & Identity Package' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Logo & Identity Package' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Logo & Identity Package' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'TerraCode Labs Logo & Identity Package' LIMIT 1), 60);

-- Project 468: Bright Horizons Academy Instagram Content Series
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Bright Horizons Academy Instagram Content Series',
    (SELECT id FROM clients WHERE name = 'Bright Horizons Academy' LIMIT 1),
    'social_media',
    'education',
    'Developed a social media content system for Bright Horizons Academy spanning Instagram, LinkedIn, and Twitter. The futuristic visual approach used comparison tables and sidebar callouts to boost engagement with prospective customers. Included templates, content guidelines, and a 30-day launch calendar.',
    'futuristic',
    'grid',
    ARRAY['#121212', '#00D4FF', '#FF3CAC', '#0F0F1A']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Proxima Nova']::TEXT[],
    ARRAY['Figma', 'Adobe Premiere', 'Canva']::TEXT[],
    'premium',
    'prospective customers',
    2016,
    13
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Bright Horizons Academy Instagram Content Series' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Bright Horizons Academy Instagram Content Series' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Bright Horizons Academy Instagram Content Series' LIMIT 1), 32);

-- Project 469: Arclight AI Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'social_media',
    'technology',
    'Created a multi-platform social campaign for Arclight AI centered on AI & Machine Learning. The design system featured custom illustrations, adaptable templates, and motion graphics optimized for each platform. Targeted students and educators with platform-specific messaging strategies.',
    'futuristic',
    'modular',
    ARRAY['#0D0D0D', '#00F0FF', '#7B2FBE', '#1A1A2E']::VARCHAR(7)[],
    ARRAY['Archivo', 'Work Sans']::TEXT[],
    ARRAY['Adobe InDesign', 'Blender']::TEXT[],
    'high',
    'students and educators',
    2012,
    19
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Social Content Toolkit' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Content Toolkit' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Arclight AI Social Content Toolkit' LIMIT 1), 33);

-- Project 470: Global Learners Initiative Sales Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Global Learners Initiative Sales Presentation',
    (SELECT id FROM clients WHERE name = 'Global Learners Initiative' LIMIT 1),
    'presentation',
    'education',
    'Created a polished pitch deck for Global Learners Initiative with 32 slides covering strategy, data, and vision. The data_driven design balanced timeline visuals with clean typography to keep parents engaged throughout.',
    'data_driven',
    'freeform',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Playfair Display', 'Garamond', 'Inter']::TEXT[],
    ARRAY['Adobe XD', 'Sketch']::TEXT[],
    'premium',
    'parents',
    2007,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Sales Presentation' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Sales Presentation' LIMIT 1), 20), ((SELECT id FROM projects WHERE title = 'Global Learners Initiative Sales Presentation' LIMIT 1), 7);

-- Project 471: Retail Benchmark Dashboard
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Retail Benchmark Dashboard',
    (SELECT id FROM clients WHERE name = 'FreshCart Grocers' LIMIT 1),
    'data_visualization',
    'retail',
    'Built an interactive data visualization system for FreshCart Grocers to explore Brand Launch metrics. The minimalist design featured charts and graphs, icon systems, and filterable views that empowered young professionals to discover insights independently.',
    'minimalist',
    'split_screen',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Avenir']::TEXT[],
    ARRAY['After Effects', 'Blender']::TEXT[],
    'low',
    'young professionals',
    2010,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Retail Benchmark Dashboard' LIMIT 1), 6);

-- Project 472: MedVista Health Systems Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Content Publication',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Created an editorial layout for MedVista Health Systems''s Telehealth content, blending longform storytelling with infographic sections and icon systems. The minimalist design established a distinctive voice for reaching C-suite executives.',
    'minimalist',
    'card_based',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Avenir', 'Futura']::TEXT[],
    ARRAY['Canva', 'Adobe Premiere', 'Adobe Photoshop']::TEXT[],
    'low',
    'C-suite executives',
    2010,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Content Publication' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Content Publication' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Content Publication' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Content Publication' LIMIT 1), 24);

-- Project 473: State of Oregon — DEQ Social Content Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'State of Oregon — DEQ Social Content Toolkit',
    (SELECT id FROM clients WHERE name = 'State of Oregon — DEQ' LIMIT 1),
    'social_media',
    'government',
    'Created a multi-platform social campaign for State of Oregon — DEQ centered on Public Safety. The design system featured interactive filters, adaptable templates, and motion graphics optimized for each platform. Targeted internal team members with platform-specific messaging strategies.',
    'playful',
    'freeform',
    ARRAY['#FDCB6E', '#6C5CE7', '#00CEC9', '#FD79A8']::VARCHAR(7)[],
    ARRAY['Libre Baskerville', 'Lora']::TEXT[],
    ARRAY['Adobe XD', 'Adobe Photoshop', 'After Effects', 'Adobe Premiere']::TEXT[],
    'low',
    'internal team members',
    2016,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Content Toolkit' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Content Toolkit' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Content Toolkit' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Content Toolkit' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'State of Oregon — DEQ Social Content Toolkit' LIMIT 1), 6);

-- Project 474: Sage & Thyme Restaurant Group Logo & Identity Package
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Sage & Thyme Restaurant Group Logo & Identity Package',
    (SELECT id FROM clients WHERE name = 'Sage & Thyme Restaurant Group' LIMIT 1),
    'branding_identity',
    'food_beverage',
    'Developed a complete brand identity system for Sage & Thyme Restaurant Group including logo, color palette, typography, and usage guidelines. The data_driven direction was crafted to resonate with investors and stakeholders while differentiating Sage & Thyme Restaurant Group in the food beverage space. Delivered a comprehensive brand toolkit.',
    'data_driven',
    'freeform',
    ARRAY['#2196F3', '#FF9800', '#4CAF50', '#F44336']::VARCHAR(7)[],
    ARRAY['Montserrat', 'Archivo', 'Helvetica Neue']::TEXT[],
    ARRAY['Sketch', 'Procreate', 'D3.js']::TEXT[],
    'premium',
    'investors and stakeholders',
    2020,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Sage & Thyme Restaurant Group Logo & Identity Package' LIMIT 1), 46);

-- Project 475: Voices for Justice Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Voices for Justice Content Publication',
    (SELECT id FROM clients WHERE name = 'Voices for Justice' LIMIT 1),
    'editorial_design',
    'nonprofit',
    'Designed a publication for Voices for Justice focused on Program Outcomes, featuring a playful editorial style with process flow diagrams, testimonial blocks, and thoughtful typography across 24 pages for government officials.',
    'playful',
    'card_based',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Futura', 'Oswald']::TEXT[],
    ARRAY['Blender', 'Adobe Premiere', 'Tableau', 'Figma']::TEXT[],
    'mid',
    'government officials',
    2007,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Voices for Justice Content Publication' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Voices for Justice Content Publication' LIMIT 1), 1), ((SELECT id FROM projects WHERE title = 'Voices for Justice Content Publication' LIMIT 1), 21);

-- Project 476: Cascade Legal Group Landing Page Suite
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Landing Page Suite',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'web_design',
    'legal',
    'Designed and prototyped a modern web experience for Cascade Legal Group focused on Thought Leadership. The site featured process flow diagrams, hero photography, and seamless mobile responsiveness. User testing with prospective customers informed iterative design refinements.',
    'corporate',
    'modular',
    ARRAY['#0B1D51', '#F7FAFC', '#3182CE', '#A0AEC0']::VARCHAR(7)[],
    ARRAY['DM Sans', 'Montserrat']::TEXT[],
    ARRAY['Adobe InDesign', 'Webflow', 'Procreate', 'After Effects']::TEXT[],
    'low',
    'prospective customers',
    2014,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 47), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Landing Page Suite' LIMIT 1), 12);

-- Project 477: Cornerstone Development Group Conference Presentation
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Conference Presentation',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'presentation',
    'real_estate',
    'Designed a high-impact presentation deck for Cornerstone Development Group to communicate Investment Returns insights to policy makers. The organic slide design featured data maps, infographic sections, and clear data storytelling across 56 slides.',
    'organic',
    'editorial',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Inter', 'Work Sans', 'Avenir']::TEXT[],
    ARRAY['Adobe XD', 'Webflow', 'Adobe Illustrator', 'Procreate']::TEXT[],
    'low',
    'policy makers',
    2021,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Conference Presentation' LIMIT 1), 50), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Conference Presentation' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Conference Presentation' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Conference Presentation' LIMIT 1), 11);

-- Project 478: Clearpath Diagnostics Magazine Layout
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Clearpath Diagnostics Magazine Layout',
    (SELECT id FROM clients WHERE name = 'Clearpath Diagnostics' LIMIT 1),
    'editorial_design',
    'healthcare',
    'Created an editorial layout for Clearpath Diagnostics''s Mental Wellness content, blending longform storytelling with hero photography and pull quotes. The data_driven design established a distinctive voice for reaching parents.',
    'data_driven',
    'card_based',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Poppins', 'Playfair Display', 'Helvetica Neue']::TEXT[],
    ARRAY['Adobe Premiere', 'Sketch']::TEXT[],
    'mid',
    'parents',
    2014,
    9
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Magazine Layout' LIMIT 1), 39), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Magazine Layout' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Magazine Layout' LIMIT 1), 17), ((SELECT id FROM projects WHERE title = 'Clearpath Diagnostics Magazine Layout' LIMIT 1), 26);

-- Project 479: Cascade Legal Group Content Publication
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Content Publication',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'editorial_design',
    'legal',
    'Created an editorial layout for Cascade Legal Group''s Firm Heritage content, blending longform storytelling with interactive filters and full-bleed imagery. The minimalist design established a distinctive voice for reaching general public.',
    'minimalist',
    'modular',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Libre Baskerville', 'Space Grotesk']::TEXT[],
    ARRAY['Procreate', 'Blender', 'After Effects']::TEXT[],
    'premium',
    'general public',
    2009,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 12), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Content Publication' LIMIT 1), 35);

-- Project 480: Quality Control Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quality Control Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'print_collateral',
    'manufacturing',
    'Designed a suite of print materials for Ironridge Manufacturing including brochures, flyers, and event signage. The editorial design featured data maps and charts and graphs, maintaining brand consistency across all touchpoints for families.',
    'editorial',
    'asymmetric',
    ARRAY['#1A1A1A', '#FFFFFF', '#C0392B', '#7F8C8D']::VARCHAR(7)[],
    ARRAY['Garamond', 'PT Serif']::TEXT[],
    ARRAY['Procreate', 'Adobe Illustrator']::TEXT[],
    'low',
    'families',
    2007,
    4
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quality Control Conference Collateral' LIMIT 1), 10), ((SELECT id FROM projects WHERE title = 'Quality Control Conference Collateral' LIMIT 1), 18), ((SELECT id FROM projects WHERE title = 'Quality Control Conference Collateral' LIMIT 1), 41), ((SELECT id FROM projects WHERE title = 'Quality Control Conference Collateral' LIMIT 1), 58), ((SELECT id FROM projects WHERE title = 'Quality Control Conference Collateral' LIMIT 1), 14);

-- Project 481: Pacific Northwest University Stakeholder Report 2003
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Northwest University Stakeholder Report 2003',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'annual_report',
    'education',
    'Produced a comprehensive annual report for Pacific Northwest University covering financial performance, program impact, and strategic outlook. The playful design incorporated infographic sections, icon systems, and narrative photography to engage general public. Delivered as a 48-page print and digital publication.',
    'playful',
    'asymmetric',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Space Grotesk', 'Helvetica Neue', 'Fira Sans']::TEXT[],
    ARRAY['Canva', 'Adobe Photoshop']::TEXT[],
    'low',
    'general public',
    2003,
    14
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Stakeholder Report 2003' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Stakeholder Report 2003' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Stakeholder Report 2003' LIMIT 1), 12);

-- Project 482: Distance Education Awareness Campaign — Pacific Northwest University
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Distance Education Awareness Campaign — Pacific Northwest University',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'social_media',
    'education',
    'Created a multi-platform social campaign for Pacific Northwest University centered on Distance Education. The design system featured stat highlight cards, adaptable templates, and motion graphics optimized for each platform. Targeted senior citizens with platform-specific messaging strategies.',
    'playful',
    'single_column',
    ARRAY['#FF6B6B', '#4ECDC4', '#FFE66D', '#95E1D3']::VARCHAR(7)[],
    ARRAY['Helvetica Neue', 'Garamond', 'DM Sans']::TEXT[],
    ARRAY['After Effects', 'Blender', 'Tableau', 'Sketch']::TEXT[],
    'low',
    'senior citizens',
    2025,
    3
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Distance Education Awareness Campaign — Pacific Northwest University' LIMIT 1), 4), ((SELECT id FROM projects WHERE title = 'Distance Education Awareness Campaign — Pacific Northwest University' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Distance Education Awareness Campaign — Pacific Northwest University' LIMIT 1), 35), ((SELECT id FROM projects WHERE title = 'Distance Education Awareness Campaign — Pacific Northwest University' LIMIT 1), 12);

-- Project 483: Market Analysis Conference Collateral
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Market Analysis Conference Collateral',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'print_collateral',
    'real_estate',
    'Produced print collateral for Cornerstone Development Group''s Market Analysis initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive minimalist design used dashboard widgets to communicate key messages to healthcare professionals.',
    'minimalist',
    'card_based',
    ARRAY['#F8F9FA', '#212529', '#ADB5BD', '#495057']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Avenir', 'Futura']::TEXT[],
    ARRAY['Adobe Illustrator', 'D3.js', 'Sketch', 'Adobe XD']::TEXT[],
    'low',
    'healthcare professionals',
    2024,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Market Analysis Conference Collateral' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Market Analysis Conference Collateral' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Market Analysis Conference Collateral' LIMIT 1), 5), ((SELECT id FROM projects WHERE title = 'Market Analysis Conference Collateral' LIMIT 1), 13);

-- Project 484: Maricopa County Public Health KPI Visualization System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Maricopa County Public Health KPI Visualization System',
    (SELECT id FROM clients WHERE name = 'Maricopa County Public Health' LIMIT 1),
    'data_visualization',
    'government',
    'Built an interactive data visualization system for Maricopa County Public Health to explore Census Data metrics. The organic design featured testimonial blocks, timeline visuals, and filterable views that empowered young professionals to discover insights independently.',
    'organic',
    'freeform',
    ARRAY['#3D5A3E', '#F0E4D4', '#A67B3D', '#1E3620']::VARCHAR(7)[],
    ARRAY['Inter', 'Lora', 'PT Serif']::TEXT[],
    ARRAY['After Effects', 'Tableau', 'Adobe InDesign']::TEXT[],
    'premium',
    'young professionals',
    2017,
    15
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health KPI Visualization System' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Maricopa County Public Health KPI Visualization System' LIMIT 1), 19);

-- Project 485: Cornerstone Development Group Interactive Web Platform
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Interactive Web Platform',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'web_design',
    'real_estate',
    'Led the full redesign of Cornerstone Development Group''s web presence, creating a responsive, accessible site with a elegant visual language. Key features included timeline visuals, pull quotes, and an intuitive navigation system. The design prioritized performance and conversion for tech-savvy millennials.',
    'elegant',
    'freeform',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Merriweather', 'Work Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Canva', 'After Effects', 'Webflow']::TEXT[],
    'mid',
    'tech-savvy millennials',
    2003,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Interactive Web Platform' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Interactive Web Platform' LIMIT 1), 27), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Interactive Web Platform' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Interactive Web Platform' LIMIT 1), 33);

-- Project 486: Community Design By the Numbers
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Community Design By the Numbers',
    (SELECT id FROM clients WHERE name = 'Harbor View Realty' LIMIT 1),
    'infographic',
    'real_estate',
    'Created a multi-section infographic breaking down Community Design trends for Harbor View Realty. The design leveraged comparison tables, timeline visuals, and custom iconography to make dense data approachable for retail consumers. Delivered in both digital and print-ready formats.',
    'elegant',
    'editorial',
    ARRAY['#2D2D2D', '#F8F4EF', '#A67C52', '#E8DDD3']::VARCHAR(7)[],
    ARRAY['Fira Sans', 'DM Sans']::TEXT[],
    ARRAY['Adobe Premiere', 'Adobe XD', 'Webflow']::TEXT[],
    'high',
    'retail consumers',
    2023,
    10
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Community Design By the Numbers' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Community Design By the Numbers' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Community Design By the Numbers' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'Community Design By the Numbers' LIMIT 1), 22);

-- Project 487: Industry 4.0 Awareness Campaign — Ironridge Manufacturing
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Industry 4.0 Awareness Campaign — Ironridge Manufacturing',
    (SELECT id FROM clients WHERE name = 'Ironridge Manufacturing' LIMIT 1),
    'social_media',
    'manufacturing',
    'Developed a social media content system for Ironridge Manufacturing spanning Instagram, LinkedIn, and Twitter. The editorial visual approach used process flow diagrams and stat highlight cards to boost engagement with policy makers. Included templates, content guidelines, and a 30-day launch calendar.',
    'editorial',
    'freeform',
    ARRAY['#2C2C2C', '#F9F9F9', '#D63031', '#636E72']::VARCHAR(7)[],
    ARRAY['Open Sans', 'Work Sans']::TEXT[],
    ARRAY['Canva', 'Figma', 'Adobe XD', 'Blender']::TEXT[],
    'high',
    'policy makers',
    2025,
    7
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 32), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 2), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 25), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 52), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Industry 4.0 Awareness Campaign — Ironridge Manufacturing' LIMIT 1), 9);

-- Project 488: Cornerstone Development Group Brand Guidelines & Toolkit
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cornerstone Development Group Brand Guidelines & Toolkit',
    (SELECT id FROM clients WHERE name = 'Cornerstone Development Group' LIMIT 1),
    'branding_identity',
    'real_estate',
    'Developed a complete brand identity system for Cornerstone Development Group including logo, color palette, typography, and usage guidelines. The corporate direction was crafted to resonate with community members while differentiating Cornerstone Development Group in the real estate space. Delivered a comprehensive brand toolkit.',
    'corporate',
    'grid',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Futura', 'Archivo', 'Merriweather']::TEXT[],
    ARRAY['Adobe Photoshop', 'D3.js', 'Procreate', 'Adobe Illustrator']::TEXT[],
    'high',
    'community members',
    2014,
    20
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Guidelines & Toolkit' LIMIT 1), 37), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Guidelines & Toolkit' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Guidelines & Toolkit' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Cornerstone Development Group Brand Guidelines & Toolkit' LIMIT 1), 28);

-- Project 489: Quantum Mesh Networks Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Quantum Mesh Networks Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'Quantum Mesh Networks' LIMIT 1),
    'social_media',
    'technology',
    'Created a multi-platform social campaign for Quantum Mesh Networks centered on Cybersecurity. The design system featured hero photography, adaptable templates, and motion graphics optimized for each platform. Targeted internal team members with platform-specific messaging strategies.',
    'minimalist',
    'grid',
    ARRAY['#FAFAFA', '#1A1A1A', '#E0E0E0', '#666666']::VARCHAR(7)[],
    ARRAY['Futura', 'Source Serif Pro']::TEXT[],
    ARRAY['Adobe Illustrator', 'Sketch', 'Canva']::TEXT[],
    'premium',
    'internal team members',
    2005,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Digital Ad Campaign' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'Quantum Mesh Networks Digital Ad Campaign' LIMIT 1), 10);

-- Project 490: Trailhead Adventures Catalog Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Trailhead Adventures Catalog Design',
    (SELECT id FROM clients WHERE name = 'Trailhead Adventures' LIMIT 1),
    'print_collateral',
    'travel_hospitality',
    'Designed a suite of print materials for Trailhead Adventures including brochures, flyers, and event signage. The editorial design featured sidebar callouts and icon systems, maintaining brand consistency across all touchpoints for industry analysts.',
    'editorial',
    'split_screen',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Poppins', 'Space Grotesk', 'Futura']::TEXT[],
    ARRAY['Tableau', 'Sketch']::TEXT[],
    'high',
    'industry analysts',
    2007,
    11
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Catalog Design' LIMIT 1), 23), ((SELECT id FROM projects WHERE title = 'Trailhead Adventures Catalog Design' LIMIT 1), 12);

-- Project 491: Arclight AI Financial & Impact Summary 2005
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Arclight AI Financial & Impact Summary 2005',
    (SELECT id FROM clients WHERE name = 'Arclight AI' LIMIT 1),
    'annual_report',
    'technology',
    'Produced a comprehensive annual report for Arclight AI covering financial performance, program impact, and strategic outlook. The editorial design incorporated testimonial blocks, full-bleed imagery, and narrative photography to engage healthcare professionals. Delivered as a 56-page print and digital publication.',
    'editorial',
    'editorial',
    ARRAY['#222222', '#FEFEFE', '#E74C3C', '#95A5A6']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Libre Baskerville']::TEXT[],
    ARRAY['Figma', 'Blender', 'After Effects', 'Tableau']::TEXT[],
    'mid',
    'healthcare professionals',
    2005,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Arclight AI Financial & Impact Summary 2005' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Arclight AI Financial & Impact Summary 2005' LIMIT 1), 23);

-- Project 492: Pacific Northwest University Brand Identity System
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Pacific Northwest University Brand Identity System',
    (SELECT id FROM clients WHERE name = 'Pacific Northwest University' LIMIT 1),
    'branding_identity',
    'education',
    'Created a cohesive visual identity for Pacific Northwest University rooted in their Lifelong Learning mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with general public.',
    'minimalist',
    'grid',
    ARRAY['#FFFFFF', '#000000', '#F5F5F5', '#333333']::VARCHAR(7)[],
    ARRAY['Lora', 'Fira Sans']::TEXT[],
    ARRAY['Adobe XD', 'After Effects', 'Tableau']::TEXT[],
    'low',
    'general public',
    2023,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Brand Identity System' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Brand Identity System' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Pacific Northwest University Brand Identity System' LIMIT 1), 17);

-- Project 493: Lakewood School District Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Lakewood School District Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Lakewood School District' LIMIT 1),
    'branding_identity',
    'education',
    'Created a cohesive visual identity for Lakewood School District rooted in their Scholarship Program mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with parents.',
    'data_driven',
    'split_screen',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Lora', 'Archivo']::TEXT[],
    ARRAY['Tableau', 'Adobe Premiere']::TEXT[],
    'low',
    'parents',
    2014,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Lakewood School District Visual Identity Refresh' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'Lakewood School District Visual Identity Refresh' LIMIT 1), 36), ((SELECT id FROM projects WHERE title = 'Lakewood School District Visual Identity Refresh' LIMIT 1), 14), ((SELECT id FROM projects WHERE title = 'Lakewood School District Visual Identity Refresh' LIMIT 1), 28);

-- Project 494: Vanguard Municipal Finance Social Media Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Vanguard Municipal Finance Social Media Campaign',
    (SELECT id FROM clients WHERE name = 'Vanguard Municipal Finance' LIMIT 1),
    'social_media',
    'finance',
    'Developed a social media content system for Vanguard Municipal Finance spanning Instagram, LinkedIn, and Twitter. The organic visual approach used icon systems and interactive filters to boost engagement with families. Included templates, content guidelines, and a 30-day launch calendar.',
    'organic',
    'grid',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['PT Serif', 'Montserrat', 'Georgia']::TEXT[],
    ARRAY['Adobe Photoshop', 'Procreate']::TEXT[],
    'premium',
    'families',
    2022,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Social Media Campaign' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Social Media Campaign' LIMIT 1), 49), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Social Media Campaign' LIMIT 1), 8), ((SELECT id FROM projects WHERE title = 'Vanguard Municipal Finance Social Media Campaign' LIMIT 1), 6);

-- Project 495: Lifelong Learning Microsite for Bright Horizons Academy
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Lifelong Learning Microsite for Bright Horizons Academy',
    (SELECT id FROM clients WHERE name = 'Bright Horizons Academy' LIMIT 1),
    'web_design',
    'education',
    'Led the full redesign of Bright Horizons Academy''s web presence, creating a responsive, accessible site with a retro visual language. Key features included data maps, icon systems, and an intuitive navigation system. The design prioritized performance and conversion for nonprofit donors.',
    'retro',
    'single_column',
    ARRAY['#D35400', '#F39C12', '#2C3E50', '#ECF0F1']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Archivo', 'Futura']::TEXT[],
    ARRAY['Procreate', 'Tableau', 'Adobe Photoshop']::TEXT[],
    'premium',
    'nonprofit donors',
    2015,
    24
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Lifelong Learning Microsite for Bright Horizons Academy' LIMIT 1), 60), ((SELECT id FROM projects WHERE title = 'Lifelong Learning Microsite for Bright Horizons Academy' LIMIT 1), 29), ((SELECT id FROM projects WHERE title = 'Lifelong Learning Microsite for Bright Horizons Academy' LIMIT 1), 10);

-- Project 496: Luxury Living Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Luxury Living Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Skyline Properties' LIMIT 1),
    'presentation',
    'real_estate',
    'Created a polished pitch deck for Skyline Properties with 48 slides covering strategy, data, and vision. The data_driven design balanced icon systems with clean typography to keep industry analysts engaged throughout.',
    'data_driven',
    'editorial',
    ARRAY['#3498DB', '#E67E22', '#27AE60', '#E74C3C']::VARCHAR(7)[],
    ARRAY['Raleway', 'Nunito']::TEXT[],
    ARRAY['Figma', 'Sketch', 'Webflow', 'Adobe Illustrator']::TEXT[],
    'low',
    'industry analysts',
    2004,
    12
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Luxury Living Workshop Materials' LIMIT 1), 30), ((SELECT id FROM projects WHERE title = 'Luxury Living Workshop Materials' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Luxury Living Workshop Materials' LIMIT 1), 2);

-- Project 497: Cascade Legal Group Visual Identity Refresh
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Cascade Legal Group Visual Identity Refresh',
    (SELECT id FROM clients WHERE name = 'Cascade Legal Group' LIMIT 1),
    'branding_identity',
    'legal',
    'Developed a complete brand identity system for Cascade Legal Group including logo, color palette, typography, and usage guidelines. The organic direction was crafted to resonate with young professionals while differentiating Cascade Legal Group in the legal space. Delivered a comprehensive brand toolkit.',
    'organic',
    'modular',
    ARRAY['#4A7C59', '#F5E6CC', '#8B6914', '#2C5530']::VARCHAR(7)[],
    ARRAY['Avenir', 'Libre Baskerville', 'Inter']::TEXT[],
    ARRAY['Canva', 'After Effects']::TEXT[],
    'high',
    'young professionals',
    2003,
    23
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 42), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 28), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 11), ((SELECT id FROM projects WHERE title = 'Cascade Legal Group Visual Identity Refresh' LIMIT 1), 57);

-- Project 498: MedVista Health Systems Digital Ad Campaign
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'MedVista Health Systems Digital Ad Campaign',
    (SELECT id FROM clients WHERE name = 'MedVista Health Systems' LIMIT 1),
    'social_media',
    'healthcare',
    'Created a multi-platform social campaign for MedVista Health Systems centered on Health Equity. The design system featured data maps, adaptable templates, and motion graphics optimized for each platform. Targeted environmental advocates with platform-specific messaging strategies.',
    'corporate',
    'single_column',
    ARRAY['#1B2A4A', '#F4F4F4', '#2C5282', '#CBD5E0']::VARCHAR(7)[],
    ARRAY['Proxima Nova', 'Georgia']::TEXT[],
    ARRAY['Sketch', 'Adobe XD']::TEXT[],
    'premium',
    'environmental advocates',
    2003,
    21
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Digital Ad Campaign' LIMIT 1), 57), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Digital Ad Campaign' LIMIT 1), 3), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Digital Ad Campaign' LIMIT 1), 9), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Digital Ad Campaign' LIMIT 1), 21), ((SELECT id FROM projects WHERE title = 'MedVista Health Systems Digital Ad Campaign' LIMIT 1), 26);

-- Project 499: Atlas Outdoor Co. Dashboard Design
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Atlas Outdoor Co. Dashboard Design',
    (SELECT id FROM clients WHERE name = 'Atlas Outdoor Co.' LIMIT 1),
    'data_visualization',
    'retail',
    'Built an interactive data visualization system for Atlas Outdoor Co. to explore Product Line metrics. The retro design featured timeline visuals, dashboard widgets, and filterable views that empowered industry analysts to discover insights independently.',
    'retro',
    'modular',
    ARRAY['#8B4513', '#DAA520', '#2F4F4F', '#FAEBD7']::VARCHAR(7)[],
    ARRAY['Lora', 'Space Grotesk', 'IBM Plex Sans']::TEXT[],
    ARRAY['Canva', 'Webflow', 'Blender', 'Tableau']::TEXT[],
    'mid',
    'industry analysts',
    2024,
    16
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 26), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 24), ((SELECT id FROM projects WHERE title = 'Atlas Outdoor Co. Dashboard Design' LIMIT 1), 10);

-- Project 500: Financial Literacy Workshop Materials
INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    'Financial Literacy Workshop Materials',
    (SELECT id FROM clients WHERE name = 'Meridian Credit Union' LIMIT 1),
    'presentation',
    'finance',
    'Created a polished pitch deck for Meridian Credit Union with 32 slides covering strategy, data, and vision. The bold design balanced testimonial blocks with clean typography to keep government officials engaged throughout.',
    'bold',
    'grid',
    ARRAY['#FF006E', '#3A86FF', '#FFBE0B', '#8338EC']::VARCHAR(7)[],
    ARRAY['Work Sans', 'Montserrat', 'Space Grotesk']::TEXT[],
    ARRAY['Webflow', 'Procreate', 'Adobe XD', 'Blender']::TEXT[],
    'low',
    'government officials',
    2021,
    1
);
INSERT INTO project_tags (project_id, tag_id) VALUES ((SELECT id FROM projects WHERE title = 'Financial Literacy Workshop Materials' LIMIT 1), 7), ((SELECT id FROM projects WHERE title = 'Financial Literacy Workshop Materials' LIMIT 1), 33), ((SELECT id FROM projects WHERE title = 'Financial Literacy Workshop Materials' LIMIT 1), 19), ((SELECT id FROM projects WHERE title = 'Financial Literacy Workshop Materials' LIMIT 1), 12);
