'use strict';

const express = require('express');
const cassandra = require('cassandra-driver');

const client = new cassandra.Client({ contactPoints: ['cassandra'], keyspace: 'users'});

const app = express();
app.get('/', (req, res) => {
  console.log();
  const query = 'SELECT * from users.login';
  client.execute(query)
    .then(result => {
      const users = result.rows.map(row => row.email);
      res.json(users);
    })
    .catch(err => {
      res.json(err);
    })
});

const PORT = 8080;
const HOST = '0.0.0.0';
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);