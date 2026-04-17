import { useState, useEffect } from 'react';
import api from '../api/clients';

interface Designer {
  id: string;
  email: string;
  full_name: string;
  role: string;
  is_active: boolean;
}

function UploadPage() {
  const [designers, setDesigners] = useState<Designer[]>([]);
  const [selectedDesigner, setSelectedDesigner] = useState('');
  const [title, setTitle] = useState('');
  const [briefText, setBriefText] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');

  useEffect(() => {
    api.get('/designers/').then((res) => {
      setDesigners(res.data);
    });
  }, []);

  const handleSubmit = async () => {
    if (!selectedDesigner || !briefText) {
      setError('Please select a designer and enter a brief.');
      return;
    }
    setIsLoading(true);
    setError('');
    try {
      const briefRes = await api.post('/briefs/', {
        designer_id: selectedDesigner,
        title: title || 'Untitled Brief',
        raw_text: briefText,
      });
      const resultRes = await api.post(`/briefs/${briefRes.data.id}/process`);
      console.log('Agent results:', resultRes.data);
      alert('Brief processed! Check the console for results.');
    } catch (err) {
      setError('Something went wrong. Please try again.');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div style={{
      minHeight: '100vh',
      backgroundColor: '#FAF7F2',
      fontFamily: 'Georgia, serif',
    }}>
      <header style={{
        padding: '2rem 3rem',
        borderBottom: '1px solid #E8E0D4',
      }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 600, color: '#2C2420', margin: 0 }}>
          Design Reference Agent
        </h1>
        <p style={{ color: '#8C7E6E', margin: '0.25rem 0 0', fontSize: '0.9rem' }}>
          Upload a brief. Get matched with past projects.
        </p>
      </header>

      <main style={{ maxWidth: '640px', margin: '3rem auto', padding: '0 2rem' }}>
        <h2 style={{ fontSize: '1.8rem', color: '#2C2420', marginBottom: '2rem' }}>
          New Brief
        </h2>

        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Designer</label>
        <select
          value={selectedDesigner}
          onChange={(e) => setSelectedDesigner(e.target.value)}
          style={{
            width: '100%', padding: '0.75rem 1rem', marginBottom: '1.5rem',
            border: '1px solid #D4C9BA', borderRadius: '6px', backgroundColor: '#fff',
            fontSize: '1rem', fontFamily: 'Georgia, serif', color: '#2C2420',
          }}
        >
          <option value="">Select a designer...</option>
          {designers.map((d) => (
            <option key={d.id} value={d.id}>
              {d.full_name} — {d.role.replace('_', ' ')}
            </option>
          ))}
        </select>

        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Brief Title (optional)</label>
        <input
          type="text"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder="e.g. Healthcare Annual Report 2025"
          style={{
            width: '100%', padding: '0.75rem 1rem', marginBottom: '1.5rem',
            border: '1px solid #D4C9BA', borderRadius: '6px', backgroundColor: '#fff',
            fontSize: '1rem', fontFamily: 'Georgia, serif', color: '#2C2420',
            boxSizing: 'border-box' as const,
          }}
        />

        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Brief</label>
        <textarea
          value={briefText}
          onChange={(e) => setBriefText(e.target.value)}
          placeholder="Paste your design brief here..."
          rows={8}
          style={{
            width: '100%', padding: '0.75rem 1rem', marginBottom: '1.5rem',
            border: '1px solid #D4C9BA', borderRadius: '6px', backgroundColor: '#fff',
            fontSize: '1rem', fontFamily: 'Georgia, serif', color: '#2C2420',
            resize: 'vertical' as const, lineHeight: 1.6, boxSizing: 'border-box' as const,
          }}
        />

        {error && <p style={{ color: '#C0392B', fontSize: '0.9rem', marginBottom: '1rem' }}>{error}</p>}

        <button
          onClick={handleSubmit}
          disabled={isLoading}
          style={{
            width: '100%', padding: '0.9rem',
            backgroundColor: isLoading ? '#B8AFA3' : '#2C2420',
            color: '#FAF7F2', border: 'none', borderRadius: '6px',
            fontSize: '1rem', fontWeight: 500,
            cursor: isLoading ? 'not-allowed' : 'pointer',
          }}
        >
          {isLoading ? 'Analyzing brief...' : 'Analyze Brief'}
        </button>
      </main>
    </div>
  );
}

export default UploadPage;