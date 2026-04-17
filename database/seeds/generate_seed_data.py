"""
Generate 500 realistic synthetic project records for the Design Reference Agent.
Outputs: 003_seed_projects.sql
"""

import random
import json

random.seed(42)  # reproducible output

# ── Lookup data ──────────────────────────────────────────────

PROJECT_TYPES = [
    'infographic', 'annual_report', 'web_design', 'branding_identity',
    'social_media', 'print_collateral', 'presentation', 'data_visualization',
    'packaging', 'editorial_design'
]

INDUSTRIES = [
    'healthcare', 'finance', 'technology', 'education', 'nonprofit',
    'retail', 'government', 'real_estate', 'energy', 'food_beverage',
    'entertainment', 'legal', 'manufacturing', 'travel_hospitality'
]

TONES = [
    'minimalist', 'bold', 'playful', 'corporate', 'elegant',
    'retro', 'futuristic', 'organic', 'editorial', 'data_driven'
]

LAYOUTS = [
    'grid', 'asymmetric', 'editorial', 'single_column',
    'modular', 'freeform', 'card_based', 'split_screen'
]

BUDGETS = ['low', 'mid', 'high', 'premium']

TOOLS = [
    'Figma', 'Adobe Illustrator', 'Adobe InDesign', 'Adobe Photoshop',
    'Sketch', 'Adobe XD', 'After Effects', 'Canva', 'Blender',
    'D3.js', 'Tableau', 'Adobe Premiere', 'Procreate', 'Webflow'
]

FONTS = [
    'Inter', 'Playfair Display', 'Roboto', 'Montserrat', 'Lora',
    'Poppins', 'Merriweather', 'Open Sans', 'Raleway', 'DM Sans',
    'Space Grotesk', 'IBM Plex Sans', 'Libre Baskerville', 'Nunito',
    'Source Serif Pro', 'Work Sans', 'Fira Sans', 'Archivo',
    'Garamond', 'Futura', 'Helvetica Neue', 'Avenir', 'Proxima Nova',
    'Georgia', 'Oswald', 'PT Serif'
]

AUDIENCES = [
    'C-suite executives', 'general public', 'healthcare professionals',
    'students and educators', 'young professionals', 'families',
    'investors and stakeholders', 'government officials',
    'community members', 'tech-savvy millennials', 'senior citizens',
    'small business owners', 'nonprofit donors', 'industry analysts',
    'internal team members', 'prospective customers', 'parents',
    'environmental advocates', 'policy makers', 'retail consumers'
]

# Color palettes grouped by tone
PALETTES_BY_TONE = {
    'minimalist':  [['#FFFFFF','#000000','#F5F5F5','#333333'], ['#FAFAFA','#1A1A1A','#E0E0E0','#666666'], ['#F8F9FA','#212529','#ADB5BD','#495057']],
    'bold':        [['#FF5733','#1A1A2E','#FFD700','#C70039'], ['#E63946','#1D3557','#F1FAEE','#457B9D'], ['#FF006E','#3A86FF','#FFBE0B','#8338EC']],
    'playful':     [['#FF6B6B','#4ECDC4','#FFE66D','#95E1D3'], ['#F72585','#7209B7','#3A0CA3','#4CC9F0'], ['#FDCB6E','#6C5CE7','#00CEC9','#FD79A8']],
    'corporate':   [['#003366','#FFFFFF','#0066CC','#E8E8E8'], ['#1B2A4A','#F4F4F4','#2C5282','#CBD5E0'], ['#0B1D51','#F7FAFC','#3182CE','#A0AEC0']],
    'elegant':     [['#2C3E50','#ECF0F1','#C9A96E','#8E7043'], ['#1A1A2E','#F5F0EB','#B8860B','#D4C5A9'], ['#2D2D2D','#F8F4EF','#A67C52','#E8DDD3']],
    'retro':       [['#D35400','#F39C12','#2C3E50','#ECF0F1'], ['#CC5A47','#F4A460','#4A6741','#F5DEB3'], ['#8B4513','#DAA520','#2F4F4F','#FAEBD7']],
    'futuristic':  [['#0D0D0D','#00F0FF','#7B2FBE','#1A1A2E'], ['#0A0A0A','#00FF88','#6C63FF','#1E1E30'], ['#121212','#00D4FF','#FF3CAC','#0F0F1A']],
    'organic':     [['#4A7C59','#F5E6CC','#8B6914','#2C5530'], ['#3D5A3E','#F0E4D4','#A67B3D','#1E3620'], ['#556B2F','#FFF8DC','#8B7355','#2E4600']],
    'editorial':   [['#1A1A1A','#FFFFFF','#C0392B','#7F8C8D'], ['#222222','#FEFEFE','#E74C3C','#95A5A6'], ['#2C2C2C','#F9F9F9','#D63031','#636E72']],
    'data_driven': [['#2196F3','#FF9800','#4CAF50','#F44336'], ['#3498DB','#E67E22','#27AE60','#E74C3C'], ['#1976D2','#FFA726','#66BB6A','#EF5350']],
}

# Project title templates by type
TITLE_TEMPLATES = {
    'infographic': [
        '{industry} Impact Report Infographic',
        '{topic} By the Numbers',
        'The State of {topic} — Visual Summary',
        '{client} Key Metrics Infographic',
        '{topic} Explained: An Infographic Guide',
        'Annual {topic} Snapshot',
        '{industry} Trends Infographic {year}',
        'How {topic} Works — Visual Breakdown',
    ],
    'annual_report': [
        '{client} Annual Report {year}',
        '{client} Year in Review {year}',
        '{year} Impact Report — {client}',
        '{client} Financial & Impact Summary {year}',
        '{industry} Annual Review {year}',
        '{client} Stakeholder Report {year}',
    ],
    'web_design': [
        '{client} Website Redesign',
        '{client} Digital Experience',
        '{client} Landing Page Suite',
        '{client} E-commerce Platform',
        '{topic} Microsite for {client}',
        '{client} Brand Portal',
        '{client} Interactive Web Platform',
    ],
    'branding_identity': [
        '{client} Brand Identity System',
        '{client} Visual Identity Refresh',
        '{client} Brand Guidelines & Toolkit',
        '{client} Logo & Identity Package',
        '{client} Rebrand',
        '{topic} Campaign Identity for {client}',
    ],
    'social_media': [
        '{client} Social Media Campaign',
        '{topic} Awareness Campaign — {client}',
        '{client} Instagram Content Series',
        '{client} Social Content Toolkit',
        '{topic} Social Launch Kit',
        '{client} Digital Ad Campaign',
    ],
    'print_collateral': [
        '{client} Brochure & Print Suite',
        '{client} Event Materials',
        '{topic} Conference Collateral',
        '{client} Direct Mail Campaign',
        '{client} Print Ad Series',
        '{client} Catalog Design',
    ],
    'presentation': [
        '{client} Investor Pitch Deck',
        '{client} Sales Presentation',
        '{topic} Keynote Deck',
        '{client} Board Meeting Deck',
        '{client} Conference Presentation',
        '{topic} Workshop Materials',
    ],
    'data_visualization': [
        '{client} Dashboard Design',
        '{topic} Data Explorer',
        '{client} Analytics Dashboard',
        '{topic} Interactive Data Portal',
        '{industry} Benchmark Dashboard',
        '{client} KPI Visualization System',
    ],
    'packaging': [
        '{client} Product Packaging',
        '{client} Packaging Redesign',
        '{topic} Limited Edition Packaging',
        '{client} Retail Packaging Suite',
        '{client} Sustainable Packaging Design',
    ],
    'editorial_design': [
        '{client} Magazine Layout',
        '{topic} Publication Design',
        '{client} Newsletter Redesign',
        '{client} Whitepaper Series',
        '{topic} Editorial Feature',
        '{client} Content Publication',
    ],
}

TOPICS_BY_INDUSTRY = {
    'healthcare':         ['Patient Outcomes', 'Telehealth', 'Clinical Trials', 'Population Health', 'Mental Wellness', 'Preventive Care', 'Health Equity', 'Medical Research'],
    'finance':            ['Market Trends', 'ESG Investing', 'Financial Literacy', 'Retirement Planning', 'Digital Banking', 'Risk Management', 'Wealth Growth', 'Fintech Innovation'],
    'technology':         ['Cloud Computing', 'AI & Machine Learning', 'Cybersecurity', 'SaaS Platform', 'Developer Tools', 'Digital Transformation', 'IoT Solutions', 'API Ecosystem'],
    'education':          ['Student Success', 'STEM Learning', 'Distance Education', 'Curriculum Innovation', 'Campus Life', 'Scholarship Program', 'EdTech', 'Lifelong Learning'],
    'nonprofit':          ['Community Impact', 'Donor Engagement', 'Food Security', 'Housing Access', 'Youth Development', 'Environmental Justice', 'Volunteer Network', 'Program Outcomes'],
    'retail':             ['Customer Experience', 'Seasonal Collection', 'Brand Launch', 'Loyalty Program', 'Store Experience', 'Product Line', 'Holiday Campaign', 'Sustainability'],
    'government':         ['Public Safety', 'Infrastructure', 'Census Data', 'Civic Engagement', 'Transit Planning', 'Environmental Policy', 'Budget Transparency', 'Public Health'],
    'real_estate':        ['Market Analysis', 'Property Portfolio', 'Urban Development', 'Luxury Living', 'Commercial Spaces', 'Sustainability', 'Community Design', 'Investment Returns'],
    'energy':             ['Renewable Transition', 'Grid Modernization', 'Solar Adoption', 'Carbon Reduction', 'Energy Efficiency', 'Clean Tech', 'Sustainability Report', 'Wind Energy'],
    'food_beverage':      ['Farm to Table', 'Craft Brewing', 'Nutrition Facts', 'Seasonal Menu', 'Organic Sourcing', 'Food Safety', 'Restaurant Experience', 'Product Launch'],
    'entertainment':      ['Festival Experience', 'Streaming Platform', 'Film Production', 'Music Discovery', 'Live Events', 'Content Creation', 'Artist Spotlight', 'Season Launch'],
    'legal':              ['Client Services', 'Legal Tech', 'Case Studies', 'Practice Areas', 'Pro Bono Work', 'Industry Compliance', 'Firm Heritage', 'Thought Leadership'],
    'manufacturing':      ['Supply Chain', 'Quality Control', 'Safety Standards', 'Production Efficiency', 'Sustainable Manufacturing', 'Industry 4.0', 'Workforce Development', 'Innovation Pipeline'],
    'travel_hospitality': ['Destination Guide', 'Guest Experience', 'Eco Tourism', 'Luxury Getaway', 'Adventure Travel', 'Cultural Heritage', 'Resort Amenities', 'Booking Platform'],
}

# Map industry to client names (index into the seed order)
CLIENT_NAMES_BY_INDUSTRY = {
    'healthcare':         ['MedVista Health Systems', 'Clearpath Diagnostics', 'Sunrise Senior Living', 'NovaCare Therapeutics', 'Wellbridge Community Health'],
    'finance':            ['Granite Peak Capital', 'BlueLine Wealth Advisors', 'Meridian Credit Union', 'Vanguard Municipal Finance'],
    'technology':         ['Nexon Cloud Solutions', 'Pivotal Data Systems', 'Arclight AI', 'Quantum Mesh Networks', 'TerraCode Labs'],
    'education':          ['Lakewood School District', 'Pacific Northwest University', 'Bright Horizons Academy', 'STEM Futures Foundation', 'Global Learners Initiative'],
    'nonprofit':          ['Clean Water Alliance', 'Urban Roots Food Bank', 'Voices for Justice', 'The Literacy Project', 'Habitat Renewal Coalition'],
    'retail':             ['Ember & Oak Home Goods', 'Riverwalk Boutique', 'FreshCart Grocers', 'Atlas Outdoor Co.'],
    'government':         ['City of Portland — Parks Dept', 'State of Oregon — DEQ', 'Federal Transit Administration', 'Maricopa County Public Health'],
    'real_estate':        ['Skyline Properties', 'Cornerstone Development Group', 'Harbor View Realty'],
    'energy':             ['SunBridge Solar', 'Pacific Grid Energy', 'GreenShift Renewables'],
    'food_beverage':      ['Fieldstone Brewing Co.', 'Coastal Harvest Seafood', 'Sage & Thyme Restaurant Group', 'Peak Nutrition Labs'],
    'entertainment':      ['Ember Studios', 'Wavelength Music Festival', 'Silver Screen Distribution'],
    'legal':              ['Thornton & Associates LLP', 'Cascade Legal Group'],
    'manufacturing':      ['Ironridge Manufacturing', 'Precision Dynamics Corp.', 'CoreSteel Industries'],
    'travel_hospitality': ['Wanderlust Travel Co.', 'Summit Lodge & Spa', 'Azure Coast Resorts', 'Trailhead Adventures'],
}

DESCRIPTION_TEMPLATES = {
    'infographic': [
        'Designed a visually compelling infographic for {client} that distilled complex {topic} data into an accessible, shareable format. The piece featured {element1} and {element2}, using a {tone} aesthetic to engage {audience}. Color-coded sections guided readers through key statistics and takeaways.',
        'Created a multi-section infographic breaking down {topic} trends for {client}. The design leveraged {element1}, {element2}, and custom iconography to make dense data approachable for {audience}. Delivered in both digital and print-ready formats.',
    ],
    'annual_report': [
        'Produced a comprehensive annual report for {client} covering financial performance, program impact, and strategic outlook. The {tone} design incorporated {element1}, {element2}, and narrative photography to engage {audience}. Delivered as a {page_count}-page print and digital publication.',
        'Designed {client}\'s flagship annual report with a focus on storytelling through data. The report featured {element1} and {element2} across {page_count} pages, balancing detailed financials with human-interest narratives for {audience}.',
    ],
    'web_design': [
        'Led the full redesign of {client}\'s web presence, creating a responsive, accessible site with a {tone} visual language. Key features included {element1}, {element2}, and an intuitive navigation system. The design prioritized performance and conversion for {audience}.',
        'Designed and prototyped a modern web experience for {client} focused on {topic}. The site featured {element1}, {element2}, and seamless mobile responsiveness. User testing with {audience} informed iterative design refinements.',
    ],
    'branding_identity': [
        'Developed a complete brand identity system for {client} including logo, color palette, typography, and usage guidelines. The {tone} direction was crafted to resonate with {audience} while differentiating {client} in the {industry} space. Delivered a comprehensive brand toolkit.',
        'Created a cohesive visual identity for {client} rooted in their {topic} mission. The system included logo variations, brand colors, typography pairings, and application templates, all designed to build trust with {audience}.',
    ],
    'social_media': [
        'Developed a social media content system for {client} spanning Instagram, LinkedIn, and Twitter. The {tone} visual approach used {element1} and {element2} to boost engagement with {audience}. Included templates, content guidelines, and a 30-day launch calendar.',
        'Created a multi-platform social campaign for {client} centered on {topic}. The design system featured {element1}, adaptable templates, and motion graphics optimized for each platform. Targeted {audience} with platform-specific messaging strategies.',
    ],
    'print_collateral': [
        'Designed a suite of print materials for {client} including brochures, flyers, and event signage. The {tone} design featured {element1} and {element2}, maintaining brand consistency across all touchpoints for {audience}.',
        'Produced print collateral for {client}\'s {topic} initiative, including tri-fold brochures, posters, and direct mail pieces. The cohesive {tone} design used {element1} to communicate key messages to {audience}.',
    ],
    'presentation': [
        'Designed a high-impact presentation deck for {client} to communicate {topic} insights to {audience}. The {tone} slide design featured {element1}, {element2}, and clear data storytelling across {page_count} slides.',
        'Created a polished pitch deck for {client} with {page_count} slides covering strategy, data, and vision. The {tone} design balanced {element1} with clean typography to keep {audience} engaged throughout.',
    ],
    'data_visualization': [
        'Built an interactive data visualization system for {client} to explore {topic} metrics. The {tone} design featured {element1}, {element2}, and filterable views that empowered {audience} to discover insights independently.',
        'Designed a comprehensive data visualization suite for {client} covering {topic} analytics. The system included {element1}, real-time dashboards, and exportable reports, all styled in a {tone} visual language for {audience}.',
    ],
    'packaging': [
        'Designed product packaging for {client} that balanced shelf appeal with brand storytelling. The {tone} design featured {element1}, sustainable material choices, and clear product information hierarchy for {audience}.',
        'Created a packaging system for {client}\'s {topic} product line. The {tone} design used {element1} and tactile finishes to create a premium unboxing experience aligned with {audience} expectations.',
    ],
    'editorial_design': [
        'Designed a publication for {client} focused on {topic}, featuring a {tone} editorial style with {element1}, {element2}, and thoughtful typography across {page_count} pages for {audience}.',
        'Created an editorial layout for {client}\'s {topic} content, blending longform storytelling with {element1} and {element2}. The {tone} design established a distinctive voice for reaching {audience}.',
    ],
}

ELEMENTS = [
    'charts and graphs', 'custom illustrations', 'data maps', 'process flow diagrams',
    'comparison tables', 'timeline visuals', 'stat highlight cards', 'pull quotes',
    'hero photography', 'icon systems', 'sidebar callouts', 'full-bleed imagery',
    'testimonial blocks', 'interactive filters', 'dashboard widgets', 'infographic sections'
]

TAG_IDS_BY_CATEGORY = {
    'style': list(range(1, 16)),
    'technique': list(range(16, 31)),
    'theme': list(range(31, 46)),
    'element': list(range(46, 61)),
}

# ── Generation logic ─────────────────────────────────────────

def escape_sql(s):
    return s.replace("'", "''")

def random_hex_color():
    return '#{:06X}'.format(random.randint(0, 0xFFFFFF))

def generate_project(idx):
    industry = random.choice(INDUSTRIES)
    project_type = random.choice(PROJECT_TYPES)
    tone = random.choice(TONES)
    layout = random.choice(LAYOUTS)
    budget = random.choice(BUDGETS)
    year = random.randint(2003, 2025)
    duration = random.randint(1, 24)
    client = random.choice(CLIENT_NAMES_BY_INDUSTRY[industry])
    topic = random.choice(TOPICS_BY_INDUSTRY[industry])
    audience = random.choice(AUDIENCES)
    
    # Title
    templates = TITLE_TEMPLATES[project_type]
    title = random.choice(templates).format(
        client=client, industry=industry.replace('_', ' ').title(),
        topic=topic, year=year
    )
    
    # Color palette
    if tone in PALETTES_BY_TONE:
        palette = random.choice(PALETTES_BY_TONE[tone])
    else:
        palette = [random_hex_color() for _ in range(4)]
    
    # Fonts (2-3)
    fonts = random.sample(FONTS, random.randint(2, 3))
    
    # Tools (2-4)
    tools = random.sample(TOOLS, random.randint(2, 4))
    
    # Elements for description
    elements = random.sample(ELEMENTS, 2)
    
    # Description
    desc_templates = DESCRIPTION_TEMPLATES[project_type]
    description = random.choice(desc_templates).format(
        client=client, topic=topic, tone=tone,
        audience=audience, industry=industry.replace('_', ' '),
        element1=elements[0], element2=elements[1],
        page_count=random.choice([24, 32, 40, 48, 56, 64, 80])
    )
    
    # Tags: pick 3-6 from different categories
    tag_ids = []
    for cat in ['style', 'technique', 'theme', 'element']:
        n = random.randint(1, 2) if cat in ['style', 'technique'] else random.randint(0, 1)
        tag_ids.extend(random.sample(TAG_IDS_BY_CATEGORY[cat], n))
    random.shuffle(tag_ids)
    
    return {
        'title': title,
        'client': client,
        'project_type': project_type,
        'industry': industry,
        'description': description,
        'visual_tone': tone,
        'layout_style': layout,
        'color_palette': palette,
        'fonts_used': fonts,
        'tools_used': tools,
        'budget_tier': budget,
        'target_audience': audience,
        'year_completed': year,
        'duration_weeks': duration,
        'tag_ids': tag_ids,
    }

# ── Generate SQL output ──────────────────────────────────────

projects = [generate_project(i) for i in range(500)]

lines = []
lines.append("-- ============================================================")
lines.append("-- Design Reference Agent — Seed Data (auto-generated)")
lines.append("-- File: 003_seed_projects.sql")
lines.append("-- Purpose: 500 synthetic projects with tag associations")
lines.append("-- ============================================================\n")

# We need client IDs. Since we're using UUIDs, we'll reference by name using subqueries.
for i, p in enumerate(projects):
    lines.append(f"-- Project {i+1}: {p['title']}")
    lines.append(f"""INSERT INTO projects (
    title, client_id, project_type, industry, description,
    visual_tone, layout_style, color_palette, fonts_used, tools_used,
    budget_tier, target_audience, year_completed, duration_weeks
) VALUES (
    '{escape_sql(p['title'])}',
    (SELECT id FROM clients WHERE name = '{escape_sql(p['client'])}' LIMIT 1),
    '{p['project_type']}',
    '{p['industry']}',
    '{escape_sql(p['description'])}',
    '{p['visual_tone']}',
    '{p['layout_style']}',
    ARRAY{p['color_palette']}::VARCHAR(7)[],
    ARRAY{p['fonts_used']}::TEXT[],
    ARRAY{p['tools_used']}::TEXT[],
    '{p['budget_tier']}',
    '{escape_sql(p['target_audience'])}',
    {p['year_completed']},
    {p['duration_weeks']}
);""")
    
    # Tag associations — reference last inserted project
    if p['tag_ids']:
        tag_values = ", ".join(
            f"((SELECT id FROM projects WHERE title = '{escape_sql(p['title'])}' LIMIT 1), {tid})"
            for tid in p['tag_ids']
        )
        lines.append(f"INSERT INTO project_tags (project_id, tag_id) VALUES {tag_values};\n")
    else:
        lines.append("")

# Write output
output_path = "/home/claude/design-reference-agent/database/seeds/003_seed_projects.sql"
with open(output_path, 'w') as f:
    f.write('\n'.join(lines))

print(f"Generated {len(projects)} projects → {output_path}")
print(f"File size: {len('\\n'.join(lines)) / 1024:.1f} KB")
