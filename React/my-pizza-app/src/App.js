import './App.css';
import { BrowserRouter } from 'react-router-dom';
import TopBar from './components/TopBar';

function App() {
  return (
    <BrowserRouter>
      <TopBar></TopBar>
    </BrowserRouter>
  );
}

export default App;
