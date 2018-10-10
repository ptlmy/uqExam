import React, { Component } from 'react';

class Sidebar extends Component {
  render() {
    return (
      <div className="sidebar">
        <div className="item">
          <div className="header">
            Recently Viewed
          </div>
          <div>
            <div>
              <a href="/">Exam 1011</a>
            </div>
            <div>
              <a href="/">Exam 1011</a>
            </div>
          </div>
        </div>
        <div className="item">
          <div className="header">
            Most Viewed
          </div>
          <div>
          <div>
              <a href="/">Exam 1011</a>
            </div>
            <div>
              <a href="/">Exam 1011</a>
            </div>
          </div>
        </div>
        <div className="item">
          <div className="header">
            Trending
          </div>
          <div>
          <div>
              <a href="/">Exam 1011</a>
            </div>
            <div>
              <a href="/">Exam 1011</a>
            </div>
          </div>
        </div>
      </div >
    );
  }
}

export default Sidebar;