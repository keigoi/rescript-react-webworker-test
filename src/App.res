%%raw(`
import logo from './logo.svg';
import './App.css';
import Worker from "./mythread.worker.js";

function onclick() {
  const worker = new Worker();
  worker.postMessage("Hello, worker!");
  worker.onmessage = (e) => {
    console.log("Worker says:" + e.data)
  }

}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          onClick={onclick}
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
`)
