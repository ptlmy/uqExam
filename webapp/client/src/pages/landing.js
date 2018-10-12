import React, { Component } from 'react';
import Card from '../components/card';
import SideBar from '../components/sidebar';
import axios from 'axios';

class Landing extends Component {
  state = {
    search: '',
    exams: []
  }

  componentDidMount() {
    axios.get('/api/exams')
    .then(result => {
      const exams = result.data.rows;
      this.setState({
        exams
      });
    });
  }

  filterExams = (evt) => {
    this.setState({
      search: evt.target.value.toLowerCase()
    });
  }

  render() {
    const { exams, search } = this.state;
    const filteredExams = exams.filter(exam => {
      if (exam && exam.examid && exam.examid.toLowerCase().indexOf(search) >= 0) {
        return exam;
      }
    });
    const displayedExams = filteredExams || exams;
    const examCards = displayedExams.map((exam, index) => <Card key={index} link={`/${exam.examid}/${exam.examyear}`} header={exam.examid} subtitle={exam.examyear} />);
    return (
      <div className="exam-view">
        <SideBar />
        <div className="page-content">
          <h1>UQ Exam Assistant</h1>
          <input className="search" onChange={this.filterExams} type="text" placeholder="Search for an exam"></input>
          {examCards}
        </div>
      </div>
    );
  }
}

export default Landing;
