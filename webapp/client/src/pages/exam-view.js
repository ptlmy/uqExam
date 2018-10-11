import React, { Component } from 'react';
import Card from '../components/card';
import axios from 'axios';

class ExamView extends Component {

  state = {
    questions: []
  }

  componentDidMount() {
    const { exam, year } = this.props.match.params;
    axios.get(`/api/questions/${exam}/${year}`)
    .then(result => {
      const questions = result.data.rows;
      this.setState({
        questions
      });
    });
  }

  render() {
    const { questions } = this.state;
    const urlPrefix = this.props.match.url;
    const questionCards = questions.map((question, index) => <Card key={index} link={`${urlPrefix}/${question.questionid}`} header={`Question ${question.questionid}`} text={question.imageaddress} />);
    return (
      <div className="exam-view">
        <div className="page-content">
          <h1>UQ Exam Assistant</h1>
          {questionCards}
        </div>
      </div>
    );
  }
}

export default ExamView;
