import React, { Component } from 'react';
import Card from '../components/card';
import CommentCard from '../components/comment-card';
import axios from 'axios';


class QuestionView extends Component {

  state = {
    question: null
  }

  componentDidMount() {
    const { exam, year, question } = this.props.match.params;
    axios.get(`/api/question/${exam}/${year}/${question}`)
      .then(result => {
        const question = result.data;
        console.log(result);
        this.setState({
          question
        });
      });
  }

  render() {
    const { question } = this.state;
    const comments =  question && question.comments || [];
    const commentCards = comments.map((comment, index) => <CommentCard key={index} user={comment.username} text={comment.commentstring} score={comment.commentscore} spam={comment.isspam}/>);
    return (
      <div className="exam-view">
        <div className="page-content">
          {question && <Card header={`Question ${question.questionid}`} text={question.content} />}
          {commentCards}
        </div>
      </div>
    );
  }
}

export default QuestionView;
