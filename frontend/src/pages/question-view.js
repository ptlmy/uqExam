import React, { Component } from 'react';
import Card from '../components/card';

class QuestionView extends Component {

  componentDidMount() {
    // make call to get comments
  }

  render() {
    return (
      <div className="exam-view">
        <div className="page-content">
          <Card header="Question 1" text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget malesuada magna. Nullam augue nibh, fringilla sit amet velit a, tincidunt mollis felis. Fusce eget tristique mi. Quisque nec feugiat odio, quis ornare orci. Proin fringilla varius nibh ac semper. Aliquam faucibus semper tortor, quis volutpat tortor lacinia at. Pellentesque ultricies magna tortor, in sagittis sem gravida id. Maecenas porta ipsum ac turpis placerat, nec maximus velit semper. Proin tincidunt odio enim, quis tristique nisl congue id." />
        </div>
      </div>
    );
  }
}

export default QuestionView;
