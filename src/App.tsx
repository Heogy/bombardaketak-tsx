import './App.css';
import NorNoriNork from './nor-nori-nork';
import { Analytics } from "@vercel/analytics/react"

function App() {
  return (
    <div className="App">
      <NorNoriNork />
      <Analytics />
    </div>
  );
}

export default App;
