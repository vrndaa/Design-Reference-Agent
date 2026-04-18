import { BrowserRouter, Routes, Route } from 'react-router-dom';
import UploadPage from './pages/uploadpage';
import ResultsPage from './pages/resultspage';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<UploadPage />} />
        <Route path="/results" element={<ResultsPage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;