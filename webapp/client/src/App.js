import React, { Component } from 'react';
import { BrowserRouter as Router, Route } from "react-router-dom";
import Landing from './pages/landing';
import ExamView from './pages/exam-view';
import QuestionView from './pages/question-view';

class App extends Component {
  render() {
    return (
      <Router>
        <div className="view">
          <Route exact path="/:exam/:year/:question" component={QuestionView} />
          <Route exact path="/:exam/:year" component={ExamView} />
          <Route exact path="/" component={Landing} />
        </div>
      </Router>
    );
  }
}

export default App;
