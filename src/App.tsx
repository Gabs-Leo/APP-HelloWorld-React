import React from 'react';
import logo from './monokuma.webp';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img style={{width: `150px`, height: `120px`}} src={logo} className="App-logo" alt="logo" />
        <p>
          Test app for {process.env.REACT_APP_MY_VAR}
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
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
