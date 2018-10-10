import React from 'react';

const Card = (props) => {
  const { header, subtitle, text, link } = props;
  const headerContent = link ? <a href={link} ><h3>{header}</h3></a> : <h3>{header}</h3>;
  return (
    <div className="card">
      {headerContent}
      <h4>{subtitle}</h4>
      <p>{text}</p>
    </div>
  );
};

export default Card;