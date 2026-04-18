import { useState } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import api from '../api/clients';
import TemplatePreview from '../components/templatepreview';

interface Tag {
  id: number;
  name: string;
  category: string;
}

interface Project {
  id: string;
  title: string;
  project_type: string;
  industry: string;
  description: string;
  visual_tone: string;
  layout_style: string;
  color_palette: string[];
  fonts_used: string[];
  tools_used: string[];
  budget_tier: string | null;
  target_audience: string | null;
  year_completed: number;
  duration_weeks: number | null;
  tags: Tag[];
}

interface Recommendation {
  id: string;
  project: Project;
  rank: number;
  similarity_score: number;
  reasoning: string;
  matched_on: string[];
}

interface AgentResult {
  brief_id: string;
  recommendations: Recommendation[];
  agent_reasoning: Record<string, any>[] | null;
}

function ResultsPage() {
  const location = useLocation();
  const navigate = useNavigate();
  const data = location.state as AgentResult | null;
  const [isRegenerating, setIsRegenerating] = useState(false);
  const [currentData, setCurrentData] = useState<AgentResult | null>(data);
  const [expandedCard, setExpandedCard] = useState<string | null>(null);

  if (!currentData) {
    return (
      <div style={{
        minHeight: '100vh', backgroundColor: '#FAF7F2',
        fontFamily: 'Georgia, serif', padding: '4rem 2rem', textAlign: 'center',
      }}>
        <h2 style={{ color: '#2C2420' }}>No results found</h2>
        <p style={{ color: '#8C7E6E' }}>Submit a brief first.</p>
        <button
          onClick={() => navigate('/')}
          style={{
            padding: '0.75rem 2rem', backgroundColor: '#2C2420', color: '#FAF7F2',
            border: 'none', borderRadius: '6px', cursor: 'pointer', marginTop: '1rem',
          }}
        >
          Go Back
        </button>
      </div>
    );
  }

  const handleRegenerate = async () => {
    setIsRegenerating(true);
    try {
      const res = await api.post(`/briefs/${currentData.brief_id}/process`);
      setCurrentData(res.data);
    } catch (err) {
      console.error('Regeneration failed:', err);
    } finally {
      setIsRegenerating(false);
    }
  };

  const recommendations = currentData.recommendations.slice(0, 5);

  return (
    <div style={{
      minHeight: '100vh', backgroundColor: '#FAF7F2', fontFamily: 'Georgia, serif',
    }}>
      <header style={{
        padding: '2rem 3rem', borderBottom: '1px solid #E8E0D4',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
      }}>
        <div>
          <h1 style={{ fontSize: '1.5rem', fontWeight: 600, color: '#2C2420', margin: 0 }}>
            Design Reference Agent
          </h1>
          <p style={{ color: '#8C7E6E', margin: '0.25rem 0 0', fontSize: '0.9rem' }}>
            {recommendations.length} recommendations
          </p>
        </div>
        <div style={{ display: 'flex', gap: '0.75rem' }}>
          <button
            onClick={handleRegenerate}
            disabled={isRegenerating}
            style={{
              padding: '0.5rem 1.5rem', backgroundColor: '#5C4F42', color: '#FAF7F2',
              border: 'none', borderRadius: '6px', cursor: isRegenerating ? 'not-allowed' : 'pointer',
              fontFamily: 'Georgia, serif', opacity: isRegenerating ? 0.6 : 1,
            }}
          >
            {isRegenerating ? 'Regenerating...' : 'Regenerate'}
          </button>
          <button
            onClick={() => navigate('/')}
            style={{
              padding: '0.5rem 1.5rem', backgroundColor: 'transparent', color: '#2C2420',
              border: '1px solid #D4C9BA', borderRadius: '6px', cursor: 'pointer',
              fontFamily: 'Georgia, serif',
            }}
          >
            New Brief
          </button>
        </div>
      </header>

      {currentData.agent_reasoning && (
        <div style={{ maxWidth: '900px', margin: '2rem auto', padding: '0 2rem' }}>
          <h3 style={{
            color: '#5C4F42', fontSize: '0.85rem', textTransform: 'uppercase',
            letterSpacing: '0.05em',
          }}>Agent Reasoning</h3>
          <div style={{
            backgroundColor: '#F0EBE3', borderRadius: '8px', padding: '1rem 1.5rem',
          }}>
            {currentData.agent_reasoning.map((step, i) => (
              <p key={i} style={{ color: '#5C4F42', fontSize: '0.9rem', margin: '0.5rem 0', lineHeight: 1.5 }}>
                <strong>{step.step}:</strong> {step.output}
              </p>
            ))}
          </div>
        </div>
      )}

      <main style={{ maxWidth: '900px', margin: '2rem auto', padding: '0 2rem 4rem' }}>
        {recommendations.map((rec) => (
          <div key={rec.id} style={{
            backgroundColor: '#FFFFFF', borderRadius: '10px', padding: '2rem',
            marginBottom: '2rem', border: '1px solid #E8E0D4',
          }}>
            <div style={{
              display: 'flex', justifyContent: 'space-between',
              alignItems: 'center', marginBottom: '1rem',
            }}>
              <span style={{
                backgroundColor: '#2C2420', color: '#FAF7F2', padding: '0.25rem 0.75rem',
                borderRadius: '4px', fontSize: '0.8rem',
              }}>
                Rank #{rec.rank}
              </span>
              <span style={{ color: '#8C7E6E', fontSize: '0.85rem' }}>
                Match: {Math.round(rec.similarity_score * 100)}%
              </span>
            </div>

            <h3 style={{ color: '#2C2420', fontSize: '1.3rem', margin: '0 0 0.5rem' }}>
              {rec.project.title}
            </h3>
            <p style={{ color: '#8C7E6E', fontSize: '0.85rem', margin: '0 0 1rem' }}>
              {rec.project.project_type.replace(/_/g, ' ')} · {rec.project.industry.replace(/_/g, ' ')} · {rec.project.year_completed}
            </p>

            <p style={{ color: '#5C4F42', lineHeight: 1.6, fontSize: '0.95rem', margin: '0 0 1.5rem' }}>
              {rec.reasoning}
            </p>

            <div style={{ marginBottom: '1.5rem' }}>
              <p style={{
                color: '#5C4F42', fontSize: '0.75rem', textTransform: 'uppercase',
                letterSpacing: '0.05em', marginBottom: '0.5rem',
              }}>Color Palette</p>
              <div style={{ display: 'flex', gap: '0.5rem' }}>
                {rec.project.color_palette.map((color, i) => (
                  <div key={i} style={{ textAlign: 'center' }}>
                    <div
                      style={{
                        width: '48px', height: '48px', backgroundColor: color,
                        borderRadius: '6px', border: '1px solid #E8E0D4', cursor: 'pointer',
                      }}
                      onClick={() => navigator.clipboard.writeText(color)}
                      title={`Click to copy ${color}`}
                    />
                    <span style={{ fontSize: '0.7rem', color: '#8C7E6E', marginTop: '0.25rem', display: 'block' }}>
                      {color}
                    </span>
                  </div>
                ))}
              </div>
            </div>

            <div style={{ display: 'flex', gap: '3rem', marginBottom: '1.5rem' }}>
              <div>
                <p style={{
                  color: '#5C4F42', fontSize: '0.75rem', textTransform: 'uppercase',
                  letterSpacing: '0.05em', marginBottom: '0.25rem',
                }}>Fonts</p>
                <p style={{ color: '#2C2420', fontSize: '0.9rem', margin: 0 }}>
                  {rec.project.fonts_used.join(', ')}
                </p>
              </div>
              <div>
                <p style={{
                  color: '#5C4F42', fontSize: '0.75rem', textTransform: 'uppercase',
                  letterSpacing: '0.05em', marginBottom: '0.25rem',
                }}>Tools</p>
                <p style={{ color: '#2C2420', fontSize: '0.9rem', margin: 0 }}>
                  {rec.project.tools_used.join(', ')}
                </p>
              </div>
            </div>

            <div style={{ display: 'flex', gap: '0.4rem', marginBottom: '1rem' }}>
              {rec.matched_on.map((match, i) => (
                <span key={i} style={{
                  backgroundColor: '#2C2420', color: '#FAF7F2', padding: '0.2rem 0.6rem',
                  borderRadius: '4px', fontSize: '0.7rem',
                }}>
                  {match.replace(/_/g, ' ')}
                </span>
              ))}
            </div>

            <div style={{ display: 'flex', flexWrap: 'wrap', gap: '0.4rem' }}>
              {rec.project.tags.map((tag) => (
                <span key={tag.id} style={{
                  backgroundColor: '#F0EBE3', color: '#5C4F42', padding: '0.2rem 0.6rem',
                  borderRadius: '4px', fontSize: '0.75rem',
                }}>
                  {tag.name.replace(/_/g, ' ')}
                </span>
              ))}
            </div>

            {/* Action buttons */}
            <div style={{ display: 'flex', gap: '0.75rem', marginTop: '1rem' }}>
              <button
                onClick={() => setExpandedCard(expandedCard === rec.id ? null : rec.id)}
                style={{
                  flex: 1, padding: '0.6rem 1.5rem',
                  backgroundColor: expandedCard === rec.id ? '#5C4F42' : 'transparent',
                  color: expandedCard === rec.id ? '#FAF7F2' : '#2C2420',
                  border: '1px solid #D4C9BA', borderRadius: '6px', cursor: 'pointer',
                  fontFamily: 'Georgia, serif', fontSize: '0.85rem',
                }}
              >
                {expandedCard === rec.id ? 'Hide Template Preview' : 'Preview Template'}
              </button>
              <button
                onClick={() => window.open('https://www.figma.com/files/recents-and-sharing/recently-viewed', '_blank')}
                style={{
                  flex: 1, padding: '0.6rem 1.5rem',
                  backgroundColor: '#0D99FF', color: '#FFFFFF',
                  border: 'none', borderRadius: '6px', cursor: 'pointer',
                  fontFamily: 'Georgia, serif', fontSize: '0.85rem',
                  fontWeight: 500,
                }}
              >
                Start Designing in Figma
              </button>
            </div>

            {expandedCard === rec.id && (
              <div style={{ marginTop: '1.5rem' }}>
                <TemplatePreview
                  projectType={rec.project.project_type}
                  layoutStyle={rec.project.layout_style}
                  colorPalette={rec.project.color_palette}
                  fonts={rec.project.fonts_used}
                  visualTone={rec.project.visual_tone}
                  title={rec.project.title}
                />
              </div>
            )}
          </div>
        ))}
      </main>
    </div>
  );
}

export default ResultsPage;