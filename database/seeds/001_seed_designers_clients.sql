-- ============================================================
-- Design Reference Agent — Seed Data
-- File: 001_seed_designers_clients.sql
-- Purpose: Populate designers and clients tables
-- ============================================================

-- ----------------------------------------
-- DESIGNERS (15 team members)
-- ----------------------------------------
INSERT INTO designers (email, full_name, role) VALUES
('maya.chen@studioverity.com',       'Maya Chen',            'creative_director'),
('james.okonkwo@studioverity.com',   'James Okonkwo',       'art_director'),
('sofia.martinez@studioverity.com',  'Sofia Martinez',       'senior_designer'),
('liam.patel@studioverity.com',      'Liam Patel',          'senior_designer'),
('aisha.rahman@studioverity.com',    'Aisha Rahman',        'senior_designer'),
('noah.kim@studioverity.com',        'Noah Kim',            'mid_designer'),
('elena.volkov@studioverity.com',    'Elena Volkov',        'mid_designer'),
('carlos.reyes@studioverity.com',    'Carlos Reyes',        'mid_designer'),
('priya.sharma@studioverity.com',    'Priya Sharma',        'mid_designer'),
('david.nguyen@studioverity.com',    'David Nguyen',        'mid_designer'),
('sarah.johnson@studioverity.com',   'Sarah Johnson',       'junior_designer'),
('omar.hassan@studioverity.com',     'Omar Hassan',         'junior_designer'),
('lily.tanaka@studioverity.com',     'Lily Tanaka',         'junior_designer'),
('marcus.wright@studioverity.com',   'Marcus Wright',       'junior_designer'),
('anna.kowalski@studioverity.com',   'Anna Kowalski',       'junior_designer');

-- ----------------------------------------
-- CLIENTS (60 clients across industries)
-- ----------------------------------------
INSERT INTO clients (name, industry, website) VALUES
-- Healthcare
('MedVista Health Systems',       'healthcare',         'https://medvista.example.com'),
('Clearpath Diagnostics',         'healthcare',         'https://clearpath.example.com'),
('Sunrise Senior Living',         'healthcare',         'https://sunrisesl.example.com'),
('NovaCare Therapeutics',         'healthcare',         'https://novacare.example.com'),
('Wellbridge Community Health',   'healthcare',         'https://wellbridge.example.com'),

-- Finance
('Granite Peak Capital',          'finance',            'https://granitepeak.example.com'),
('BlueLine Wealth Advisors',      'finance',            'https://blueline.example.com'),
('Meridian Credit Union',         'finance',            'https://meridiancu.example.com'),
('Vanguard Municipal Finance',    'finance',            'https://vmf.example.com'),

-- Technology
('Nexon Cloud Solutions',         'technology',         'https://nexoncloud.example.com'),
('Pivotal Data Systems',          'technology',         'https://pivotalds.example.com'),
('Arclight AI',                   'technology',         'https://arclightai.example.com'),
('Quantum Mesh Networks',         'technology',         'https://quantummesh.example.com'),
('TerraCode Labs',                'technology',         'https://terracode.example.com'),

-- Education
('Lakewood School District',      'education',          'https://lakewoodsd.example.com'),
('Pacific Northwest University',  'education',          'https://pnu.example.com'),
('Bright Horizons Academy',       'education',          'https://brighthorizons.example.com'),
('STEM Futures Foundation',       'education',          'https://stemfutures.example.com'),
('Global Learners Initiative',    'education',          'https://globallearners.example.com'),

-- Nonprofit
('Clean Water Alliance',          'nonprofit',          'https://cleanwateralliance.example.com'),
('Urban Roots Food Bank',         'nonprofit',          'https://urbanroots.example.com'),
('Voices for Justice',            'nonprofit',          'https://voicesforjustice.example.com'),
('The Literacy Project',          'nonprofit',          'https://literacyproject.example.com'),
('Habitat Renewal Coalition',     'nonprofit',          'https://habitatrenewal.example.com'),

-- Retail
('Ember & Oak Home Goods',        'retail',             'https://emberandoak.example.com'),
('Riverwalk Boutique',            'retail',             'https://riverwalk.example.com'),
('FreshCart Grocers',              'retail',             'https://freshcart.example.com'),
('Atlas Outdoor Co.',              'retail',             'https://atlasoutdoor.example.com'),

-- Government
('City of Portland — Parks Dept', 'government',         'https://portlandparks.example.com'),
('State of Oregon — DEQ',         'government',         'https://odeq.example.com'),
('Federal Transit Administration','government',         'https://fta.example.com'),
('Maricopa County Public Health', 'government',         'https://maricopahealth.example.com'),

-- Real Estate
('Skyline Properties',            'real_estate',        'https://skylineprop.example.com'),
('Cornerstone Development Group', 'real_estate',        'https://cornerstonedev.example.com'),
('Harbor View Realty',             'real_estate',        'https://harborview.example.com'),

-- Energy
('SunBridge Solar',               'energy',             'https://sunbridgesolar.example.com'),
('Pacific Grid Energy',           'energy',             'https://pacificgrid.example.com'),
('GreenShift Renewables',         'energy',             'https://greenshift.example.com'),

-- Food & Beverage
('Fieldstone Brewing Co.',        'food_beverage',      'https://fieldstonebrew.example.com'),
('Coastal Harvest Seafood',       'food_beverage',      'https://coastalharvest.example.com'),
('Sage & Thyme Restaurant Group', 'food_beverage',      'https://sageandthyme.example.com'),
('Peak Nutrition Labs',           'food_beverage',      'https://peaknutrition.example.com'),

-- Entertainment
('Ember Studios',                 'entertainment',      'https://emberstudios.example.com'),
('Wavelength Music Festival',     'entertainment',      'https://wavelengthfest.example.com'),
('Silver Screen Distribution',    'entertainment',      'https://silverscreen.example.com'),

-- Legal
('Thornton & Associates LLP',     'legal',              'https://thorntonlaw.example.com'),
('Cascade Legal Group',            'legal',              'https://cascadelegal.example.com'),

-- Manufacturing
('Ironridge Manufacturing',        'manufacturing',      'https://ironridge.example.com'),
('Precision Dynamics Corp.',       'manufacturing',      'https://precisiondynamics.example.com'),
('CoreSteel Industries',           'manufacturing',      'https://coresteel.example.com'),

-- Travel & Hospitality
('Wanderlust Travel Co.',          'travel_hospitality', 'https://wanderlustco.example.com'),
('Summit Lodge & Spa',             'travel_hospitality', 'https://summitlodge.example.com'),
('Azure Coast Resorts',            'travel_hospitality', 'https://azurecoast.example.com'),
('Trailhead Adventures',           'travel_hospitality', 'https://trailhead.example.com');
