import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import api from '../api/clients';

interface Designer {
  id: string;
  email: string;
  full_name: string;
  role: string;
  is_active: boolean;
}

function UploadPage() {
  const navigate = useNavigate();
  const [designers, setDesigners] = useState<Designer[]>([]);
  const [selectedDesigner, setSelectedDesigner] = useState('');
  const [briefType, setBriefType] = useState('');
  const [file, setFile] = useState<File | null>(null);
  const [notes, setNotes] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');

  const briefTypes = [
    'Annual Report',
    'Infographic',
    'Website Redesign',
    'Brand Identity',
    'Social Media Campaign',
    'Print Collateral',
    'Pitch Deck / Presentation',
    'Data Dashboard',
    'Packaging Design',
    'Editorial / Publication',
    'Other',
  ];

  useEffect(() => {
    api.get('/designers/').then((res) => {
      setDesigners(res.data);
    });
  }, []);

  const handleSubmit = async () => {
    if (!selectedDesigner || !briefType) {
      setError('Please select a designer and brief type.');
      return;
    }
    if (!file && !notes) {
      setError('Please upload a brief or add a description.');
      return;
    }

    setIsLoading(true);
    setError('');

    try {
      let briefId = '';

      if (file && (file.name.endsWith('.pdf') || file.name.endsWith('.docx'))) {
        // Upload the file — backend uses Gemini to extract text
        const formData = new FormData();
        formData.append('designer_id', selectedDesigner);
        formData.append('title', briefType);
        formData.append('file', file);

        const uploadRes = await api.post('/briefs/upload', formData, {
          headers: { 'Content-Type': 'multipart/form-data' },
        });

        // If there are notes, create a new brief combining PDF text + notes
        if (notes) {
          const combinedText = uploadRes.data.raw_text + '\n\nDesigner notes: ' + notes;
          const briefRes = await api.post('/briefs/', {
            designer_id: selectedDesigner,
            title: briefType,
            raw_text: combinedText,
          });
          briefId = briefRes.data.id;
        } else {
          briefId = uploadRes.data.id;
        }
      } else {
        // Text-only brief
        let briefText = '';
        if (file && file.name.endsWith('.txt')) {
          briefText = await file.text();
        }
        const combinedText = [briefText, 'Brief type: ' + briefType, notes].filter(Boolean).join('\n\n');

        const briefRes = await api.post('/briefs/', {
          designer_id: selectedDesigner,
          title: briefType,
          raw_text: combinedText,
        });
        briefId = briefRes.data.id;
      }

      const resultRes = await api.post('/briefs/' + briefId + '/process');
      navigate('/results', { state: resultRes.data });
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
      fontFamily: 'Arial, sans-serif',
    }}>
      <header style={{
        padding: '2rem 3rem',
        borderBottom: '1px solid #E8E0D4',
      }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 600, color: '#2C2420', margin: 0 }}>
          Design Reference Agent
        </h1>
    
      </header>

      <main style={{ maxWidth: '640px', margin: '3rem auto', padding: '0 2rem' }}>
        <h2 style={{ fontSize: '1.8rem', color: '#2C2420', marginBottom: '2rem' }}>
          New Brief
        </h2>

        {/* Designer dropdown */}
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
            fontSize: '1rem', fontFamily: 'Arial, sans-serif', color: '#2C2420',
          }}
        >
          <option value="">Select a designer...</option>
          {designers.map((d) => (
            <option key={d.id} value={d.id}>
              {d.full_name} — {d.role.replace('_', ' ')}
            </option>
          ))}
        </select>

        {/* Brief type dropdown */}
        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Brief Type</label>
        <select
          value={briefType}
          onChange={(e) => setBriefType(e.target.value)}
          style={{
            width: '100%', padding: '0.75rem 1rem', marginBottom: '1.5rem',
            border: '1px solid #D4C9BA', borderRadius: '6px', backgroundColor: '#fff',
            fontSize: '1rem', fontFamily: 'Arial, sans-serif', color: '#2C2420',
          }}
        >
          <option value="">Select brief type...</option>
          {briefTypes.map((type) => (
            <option key={type} value={type}>{type}</option>
          ))}
        </select>

        {/* File upload */}
        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Upload Brief</label>
        <div
          style={{
            border: '2px dashed #D4C9BA', borderRadius: '8px', padding: '2rem',
            textAlign: 'center', marginBottom: '1.5rem', backgroundColor: '#FDFCFA',
            cursor: 'pointer',
          }}
          onClick={() => document.getElementById('file-input')?.click()}
        >
          <input
            id="file-input"
            type="file"
            accept=".pdf,.docx,.txt"
            style={{ display: 'none' }}
            onChange={(e) => setFile(e.target.files?.[0] || null)}
          />
          {file ? (
            <div>
              <p style={{ color: '#2C2420', fontSize: '0.95rem', margin: 0 }}>{file.name}</p>
              <p style={{ color: '#8C7E6E', fontSize: '0.8rem', marginTop: '0.25rem' }}>
                {(file.size / 1024).toFixed(1)} KB
              </p>
              <button
                onClick={(e) => { e.stopPropagation(); setFile(null); }}
                style={{
                  marginTop: '0.5rem', padding: '0.3rem 1rem', backgroundColor: 'transparent',
                  color: '#C0392B', border: '1px solid #C0392B', borderRadius: '4px',
                  cursor: 'pointer', fontSize: '0.8rem',
                }}
              >
                Remove
              </button>
            </div>
          ) : (
            <div>
              <p style={{ color: '#5C4F42', fontSize: '0.95rem', margin: 0 }}>
                Click to upload or drag and drop
              </p>
              <p style={{ color: '#8C7E6E', fontSize: '0.8rem', marginTop: '0.25rem' }}>
                PDF, DOCX, or TXT
              </p>
            </div>
          )}
        </div>

        {/* Optional notes */}
        <label style={{
          display: 'block', marginBottom: '0.5rem', color: '#5C4F42',
          fontSize: '0.85rem', textTransform: 'uppercase' as const, letterSpacing: '0.05em',
        }}>Additional Notes (optional)</label>
        <textarea
          value={notes}
          onChange={(e) => setNotes(e.target.value)}
          placeholder="Any specific direction for the agent, e.g. 'focus on data visualization aspect' or 'looking for something warm and approachable'"
          rows={3}
          style={{
            width: '100%', padding: '0.75rem 1rem', marginBottom: '1.5rem',
            border: '1px solid #D4C9BA', borderRadius: '6px', backgroundColor: '#fff',
            fontSize: '1rem', fontFamily: 'Arial, sans-serif', color: '#2C2420',
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