CREATE  KEYSPACE  users 
   WITH REPLICATION = { 
      'class' : 'SimpleStrategy', 
      'replication_factor' : 3 
      };


CREATE TABLE users.login(
    id text PRIMARY KEY,
    email text,
    password text);
