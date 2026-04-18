interface TemplatePreviewProps {
  projectType: string;
  layoutStyle: string;
  colorPalette: string[];
  fonts: string[];
  visualTone: string;
  title: string;
}

function TemplatePreview({ projectType, layoutStyle, colorPalette, fonts, visualTone, title }: TemplatePreviewProps) {
  const primary = colorPalette[0] || '#2C2420';
  const secondary = colorPalette[1] || '#FAF7F2';
  const accent = colorPalette[2] || '#8C7E6E';
  const subtle = colorPalette[3] || '#E8E0D4';
  const headingFont = fonts[0] || 'Georgia';
  const bodyFont = fonts[1] || fonts[0] || 'Georgia';

  // Load Google Fonts dynamically
  const fontLink = fonts.map(f => f.replace(/ /g, '+')).join('&family=');
  const fontUrl = `https://fonts.googleapis.com/css2?family=${fontLink}&display=swap`;

  const renderAnnualReport = () => (
    <div style={{ backgroundColor: secondary, minHeight: '600px' }}>
      {/* Cover page */}
      <div style={{
        backgroundColor: primary, padding: '3rem 2rem', color: secondary,
        textAlign: 'center',
      }}>
        <p style={{ fontFamily: bodyFont, fontSize: '0.75rem', letterSpacing: '0.1em', textTransform: 'uppercase', opacity: 0.7 }}>
          Annual Report 2025
        </p>
        <h2 style={{ fontFamily: headingFont, fontSize: '2rem', margin: '0.5rem 0' }}>{title}</h2>
        <div style={{ width: '40px', height: '2px', backgroundColor: accent, margin: '1rem auto' }} />
      </div>

      {/* Metrics row */}
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '1px', backgroundColor: subtle }}>
        {['Total Impact', 'Communities Served', 'Year-over-Year Growth'].map((label, i) => (
          <div key={i} style={{ backgroundColor: secondary, padding: '1.5rem', textAlign: 'center' }}>
            <p style={{ fontFamily: headingFont, fontSize: '1.8rem', color: primary, margin: 0 }}>
              {['12,400', '340', '+27%'][i]}
            </p>
            <p style={{ fontFamily: bodyFont, fontSize: '0.75rem', color: accent, marginTop: '0.25rem', textTransform: 'uppercase', letterSpacing: '0.05em' }}>
              {label}
            </p>
          </div>
        ))}
      </div>

      {/* Content sections */}
      <div style={{ padding: '2rem' }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '2rem', marginBottom: '2rem' }}>
          <div>
            <h3 style={{ fontFamily: headingFont, color: primary, fontSize: '1.1rem', marginBottom: '0.5rem' }}>
              Executive Summary
            </h3>
            <div style={{ backgroundColor: subtle, height: '8px', width: '100%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '90%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '95%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '60%', borderRadius: '4px' }} />
          </div>
          <div style={{ backgroundColor: subtle, borderRadius: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', minHeight: '120px' }}>
            <span style={{ fontFamily: bodyFont, color: accent, fontSize: '0.8rem' }}>Data Visualization</span>
          </div>
        </div>

        {/* Pull quote */}
        <div style={{
          borderLeft: `3px solid ${accent}`, padding: '1rem 1.5rem', margin: '1.5rem 0',
          backgroundColor: `${subtle}44`,
        }}>
          <p style={{ fontFamily: headingFont, fontSize: '1.1rem', color: primary, fontStyle: 'italic', margin: 0, lineHeight: 1.5 }}>
            "Placeholder for an impact quote or key finding from the report."
          </p>
        </div>

        {/* Two column content */}
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '2rem' }}>
          <div>
            <h3 style={{ fontFamily: headingFont, color: primary, fontSize: '1.1rem', marginBottom: '0.5rem' }}>
              Program Outcomes
            </h3>
            <div style={{ backgroundColor: subtle, height: '8px', width: '100%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '85%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '92%', borderRadius: '4px' }} />
          </div>
          <div>
            <h3 style={{ fontFamily: headingFont, color: primary, fontSize: '1.1rem', marginBottom: '0.5rem' }}>
              Financial Overview
            </h3>
            <div style={{ backgroundColor: subtle, height: '8px', width: '95%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '88%', borderRadius: '4px', marginBottom: '0.4rem' }} />
            <div style={{ backgroundColor: subtle, height: '8px', width: '76%', borderRadius: '4px' }} />
          </div>
        </div>
      </div>
    </div>
  );

  const renderInfographic = () => (
    <div style={{ backgroundColor: secondary, minHeight: '600px' }}>
      <div style={{ backgroundColor: primary, padding: '2rem', color: secondary, textAlign: 'center' }}>
        <h2 style={{ fontFamily: headingFont, fontSize: '1.5rem', margin: 0 }}>{title}</h2>
        <p style={{ fontFamily: bodyFont, fontSize: '0.8rem', opacity: 0.7, marginTop: '0.5rem' }}>
          A visual breakdown
        </p>
      </div>

      <div style={{ padding: '2rem' }}>
        {/* Stats row */}
        <div style={{ display: 'flex', justifyContent: 'space-around', marginBottom: '2rem' }}>
          {['78%', '2.4M', '$340K'].map((stat, i) => (
            <div key={i} style={{ textAlign: 'center' }}>
              <div style={{
                width: '64px', height: '64px', borderRadius: '50%', backgroundColor: accent,
                display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 0.5rem',
              }}>
                <span style={{ fontFamily: headingFont, color: secondary, fontSize: '1rem', fontWeight: 'bold' }}>{stat}</span>
              </div>
              <p style={{ fontFamily: bodyFont, fontSize: '0.7rem', color: primary, textTransform: 'uppercase' }}>
                {['Metric One', 'Metric Two', 'Metric Three'][i]}
              </p>
            </div>
          ))}
        </div>

        {/* Process flow */}
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '0.5rem', marginBottom: '2rem' }}>
          {['Step 1', 'Step 2', 'Step 3', 'Step 4'].map((step, i) => (
            <div key={i} style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
              <div style={{
                backgroundColor: i === 0 ? primary : subtle, color: i === 0 ? secondary : primary,
                padding: '0.5rem 1rem', borderRadius: '6px', fontFamily: bodyFont, fontSize: '0.75rem',
              }}>
                {step}
              </div>
              {i < 3 && <span style={{ color: accent }}>→</span>}
            </div>
          ))}
        </div>

        {/* Comparison bars */}
        <div style={{ marginBottom: '1.5rem' }}>
          {['Category A', 'Category B', 'Category C'].map((cat, i) => (
            <div key={i} style={{ marginBottom: '0.75rem' }}>
              <p style={{ fontFamily: bodyFont, fontSize: '0.75rem', color: primary, marginBottom: '0.25rem' }}>{cat}</p>
              <div style={{ backgroundColor: subtle, height: '20px', borderRadius: '4px', overflow: 'hidden' }}>
                <div style={{
                  backgroundColor: accent, height: '100%', borderRadius: '4px',
                  width: ['75%', '60%', '90%'][i],
                }} />
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );

  const renderWebDesign = () => (
    <div style={{ backgroundColor: secondary, minHeight: '600px' }}>
      {/* Nav bar */}
      <div style={{
        backgroundColor: primary, padding: '0.75rem 2rem', display: 'flex',
        justifyContent: 'space-between', alignItems: 'center', color: secondary,
      }}>
        <span style={{ fontFamily: headingFont, fontSize: '1rem', fontWeight: 'bold' }}>Logo</span>
        <div style={{ display: 'flex', gap: '1.5rem' }}>
          {['Home', 'About', 'Services', 'Contact'].map((item) => (
            <span key={item} style={{ fontFamily: bodyFont, fontSize: '0.75rem', opacity: 0.8 }}>{item}</span>
          ))}
        </div>
      </div>

      {/* Hero section */}
      <div style={{
        backgroundColor: subtle, padding: '3rem 2rem', textAlign: 'center',
      }}>
        <h2 style={{ fontFamily: headingFont, color: primary, fontSize: '1.8rem', margin: '0 0 0.5rem' }}>
          Hero Headline
        </h2>
        <p style={{ fontFamily: bodyFont, color: accent, fontSize: '0.9rem', marginBottom: '1.5rem' }}>
          Supporting text that describes the value proposition
        </p>
        <div style={{
          display: 'inline-block', backgroundColor: accent, color: secondary,
          padding: '0.6rem 1.5rem', borderRadius: '6px', fontFamily: bodyFont, fontSize: '0.85rem',
        }}>
          Call to Action
        </div>
      </div>

      {/* Card grid */}
      <div style={{ padding: '2rem', display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '1rem' }}>
        {['Feature One', 'Feature Two', 'Feature Three'].map((feature, i) => (
          <div key={i} style={{
            border: `1px solid ${subtle}`, borderRadius: '8px', padding: '1.5rem', textAlign: 'center',
          }}>
            <div style={{
              width: '40px', height: '40px', backgroundColor: accent, borderRadius: '8px',
              margin: '0 auto 0.75rem', opacity: 0.6,
            }} />
            <h4 style={{ fontFamily: headingFont, color: primary, fontSize: '0.9rem', margin: '0 0 0.25rem' }}>
              {feature}
            </h4>
            <div style={{ backgroundColor: subtle, height: '6px', width: '80%', margin: '0.3rem auto', borderRadius: '3px' }} />
            <div style={{ backgroundColor: subtle, height: '6px', width: '60%', margin: '0.3rem auto', borderRadius: '3px' }} />
          </div>
        ))}
      </div>
    </div>
  );

  const renderDefault = () => (
    <div style={{ backgroundColor: secondary, minHeight: '600px', padding: '2rem' }}>
      <div style={{ backgroundColor: primary, padding: '2rem', color: secondary, borderRadius: '8px', marginBottom: '1.5rem' }}>
        <h2 style={{ fontFamily: headingFont, fontSize: '1.5rem', margin: 0 }}>{title}</h2>
        <p style={{ fontFamily: bodyFont, fontSize: '0.8rem', opacity: 0.7, marginTop: '0.5rem' }}>
          {projectType.replace(/_/g, ' ')} · {visualTone}
        </p>
      </div>
      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: '1.5rem' }}>
        <div>
          <div style={{ backgroundColor: subtle, height: '8px', width: '100%', borderRadius: '4px', marginBottom: '0.5rem' }} />
          <div style={{ backgroundColor: subtle, height: '8px', width: '90%', borderRadius: '4px', marginBottom: '0.5rem' }} />
          <div style={{ backgroundColor: subtle, height: '8px', width: '95%', borderRadius: '4px', marginBottom: '0.5rem' }} />
          <div style={{ backgroundColor: subtle, height: '8px', width: '70%', borderRadius: '4px' }} />
        </div>
        <div style={{
          backgroundColor: subtle, borderRadius: '8px', display: 'flex',
          alignItems: 'center', justifyContent: 'center', minHeight: '100px',
        }}>
          <span style={{ fontFamily: bodyFont, color: accent, fontSize: '0.75rem' }}>Image</span>
        </div>
      </div>
    </div>
  );

  const renderTemplate = () => {
    switch (projectType) {
      case 'annual_report': return renderAnnualReport();
      case 'infographic': return renderInfographic();
      case 'web_design': return renderWebDesign();
      case 'data_visualization': return renderInfographic();
      default: return renderDefault();
    }
  };

  return (
    <div>
      <link href={fontUrl} rel="stylesheet" />
      <div style={{
        border: `1px solid ${subtle}`, borderRadius: '8px', overflow: 'hidden',
        boxShadow: '0 2px 12px rgba(0,0,0,0.08)',
      }}>
        {renderTemplate()}
      </div>
      <p style={{
        textAlign: 'center', fontSize: '0.75rem', color: '#8C7E6E',
        marginTop: '0.75rem', fontFamily: 'Georgia, serif',
      }}>
        Live preview using {fonts.join(' + ')} · {visualTone} tone · {layoutStyle.replace(/_/g, ' ')} layout
      </p>
    </div>
  );
}

export default TemplatePreview;