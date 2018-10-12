import React from 'react';

const CommentCard = (props) => {
  const { text, user, score, spam } = props;
  return (
    <div className={`comment-card ${spam ? 'spam' : ''}`}>
    <h3>{user}</h3>
    <p>{text}</p>
    Score: {score}
    </div>
  );
};

export default CommentCard;