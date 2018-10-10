import React, { Component } from 'react';
import Card from '../components/card';
import SideBar from '../components/sidebar';

class Landing extends Component {
  state = {
    search: '',
    exams: []
  }

  componentDidMount() {
    //make call for exams
    // placeholder
    this.setState({
      exams: [
        {
          examID: 'ECON1010',
          examYear: '20181'
        }
      ]
    })
  }

  filterExams = (evt) => {
    this.setState({
      search: evt.target.value.toLowerCase()
    });
  }

  render() {
    const { exams, search } = this.state;
    const filteredExams = exams.filter(exam => {
      if (exam.examID.toLowerCase().indexOf(search) >= 0) {
        return exam;
      }
    });
    const displayedExams = filteredExams || exams;
    const examCards = displayedExams.map((exam, index) => <Card key={index} link={`/${exam.examID}/${exam.examYear}`} header={exam.examID} subtitle={exam.examYear} />);
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
