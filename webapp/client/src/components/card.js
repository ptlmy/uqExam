import React from 'react';
import { Link } from 'react-router-dom'

const Card = (props) => {
  const { header, subtitle, text, link } = props;
  const headerContent = link ? <Link to={link} ><h3>{header}</h3></Link> : <h3>{header}</h3>;
  return (
    <div className="card">
      {headerContent}
      <h4>{subtitle}</h4>
      <p>{text}</p>
    </div>
  );
};

export default Card;