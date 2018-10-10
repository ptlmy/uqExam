import React, { Component } from 'react';
import Card from '../components/card';

class ExamView extends Component {

  state = {
    questions: [],
    search: ''
  }

  componentDidMount() {
    // make call to get questions
    this.setState({
      questions: [
        {
          questionID: '1',
          questionContent: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget malesuada magna. Nullam augue nibh, fringilla sit amet velit a, tincidunt mollis felis. Fusce eget tristique mi. Quisque nec feugiat odio, quis ornare orci. Proin fringilla varius nibh ac semper. Aliquam faucibus semper tortor, quis volutpat tortor lacinia at. Pellentesque ultricies magna tortor, in sagittis sem gravida id. Maecenas porta ipsum ac turpis placerat, nec maximus velit semper. Proin tincidunt odio enim, quis tristique nisl congue id.'
        },
        {
          questionID: '2',
          questionContent: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget malesuada magna. Nullam augue nibh, fringilla sit amet velit a, tincidunt mollis felis. Fusce eget tristique mi. Quisque nec feugiat odio, quis ornare orci. Proin fringilla varius nibh ac semper. Aliquam faucibus semper tortor, quis volutpat tortor lacinia at. Pellentesque ultricies magna tortor, in sagittis sem gravida id. Maecenas porta ipsum ac turpis placerat, nec maximus velit semper. Proin tincidunt odio enim, quis tristique nisl congue id.'
        },
        {
          questionID: '3',
          questionContent: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget malesuada magna. Nullam augue nibh, fringilla sit amet velit a, tincidunt mollis felis. Fusce eget tristique mi. Quisque nec feugiat odio, quis ornare orci. Proin fringilla varius nibh ac semper. Aliquam faucibus semper tortor, quis volutpat tortor lacinia at. Pellentesque ultricies magna tortor, in sagittis sem gravida id. Maecenas porta ipsum ac turpis placerat, nec maximus velit semper. Proin tincidunt odio enim, quis tristique nisl congue id.'
        },
        {
          questionID: '4',
          questionContent: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget malesuada magna. Nullam augue nibh, fringilla sit amet velit a, tincidunt mollis felis. Fusce eget tristique mi. Quisque nec feugiat odio, quis ornare orci. Proin fringilla varius nibh ac semper. Aliquam faucibus semper tortor, quis volutpat tortor lacinia at. Pellentesque ultricies magna tortor, in sagittis sem gravida id. Maecenas porta ipsum ac turpis placerat, nec maximus velit semper. Proin tincidunt odio enim, quis tristique nisl congue id.'
        }
      ]
    })
  }

  filterQuestions = (evt) => {
    this.setState({
      search: evt.target.value.toLowerCase()
    });
  }

  render() {
    const { questions, search } = this.state;
    const urlPrefix = this.props.match.url;
    const filteredQuestions = questions.filter(question => {
      if (question.questionID.indexOf(search) >= 0 || question.questionContent.toLowerCase().indexOf(search) > 0) {
        return question;
      }
    });
    const displayedQuestions = filteredQuestions || questions;
    const questionCards = displayedQuestions.map((question, index) => <Card key={index} link={`${urlPrefix}/${question.questionID}`} header={`Question ${question.questionID}`} text={question.questionContent} />);
    return (
      <div className="exam-view">
        <div className="page-content">
          <h1>UQ Exam Assistant</h1>
          <input className="search" onChange={this.filterQuestions} type="text" placeholder="Search for a question"></input>
          {questionCards}
        </div>
      </div>
    );
  }
}

export default ExamView;
