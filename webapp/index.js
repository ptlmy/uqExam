'use strict';

const express = require('express');
const cassandra = require('cassandra-driver');
const path = require('path');

const client = new cassandra.Client({ contactPoints: ['cassandra'], keyspace: 'exams' });
const app = express();

app.use(express.static(path.join('client/build')));

app.get('/api/exams', (req, res) => {
  const query = 'SELECT * from exams.exams';
  client.execute(query)
    .then(result => {
      res.json(result);
    })
    .catch(err => {
      res.json({ error: 'Unable to access db' });
    })
});

app.get('/api/questions/:course/:year', (req, res) => {
  const course = req.param('course');
  const year = req.param('year');
  const query = `SELECT * from exams.courseexams where examID = '${course}' and examYear = ${year}`;
  client.execute(query)
    .then(result => {
      res.json(result);
    })
    .catch(err => {
      res.json({ error: 'Unable to access db' });
    })
});

app.get('/api/question/:course/:year/:question', (req, res) => {
  const course = req.param('course');
  const year = req.param('year');
  const question = req.param('question');
  const questionQuery = `SELECT * from exams.courseexams where examID = '${course}' and examYear = ${year} and questionid = ${question}`;
  const commentsQuery = `SELECT * from exams.comments where examID = '${course}' and examYear = ${year}`;
  client.execute(commentsQuery)
    .then(result => {
      const questionComments = result.rows.filter(comment => comment.questionid == question);
      const sortedComments = questionComments.sort((a, b) => {
        if (a.commentscore <  b.commentscore) {
          return 1;
        }
        if (a.commentscore > b.commentscore) {
          return -1;
        }
        return 0;
      }) || [];
      return sortedComments;
    })
    .then(questionComments => {
      client.execute(questionQuery)
        .then(result => {
          const questionWithComments = {
            content: result.rows[0].imageaddress,
            questionid: result.rows[0].questionid,
            comments: questionComments
          };
          res.json(questionWithComments);
        });
    })
    .catch(err => {
      res.json({ error: 'Unable to access db' });
    })
});


app.get('/*', (req, res) => {
  res.sendFile(path.join(__dirname + '/client/build/index.html'))
});

const PORT = 9000;
const HOST = '0.0.0.0';
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);