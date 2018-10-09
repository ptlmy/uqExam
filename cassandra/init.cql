DROP KEYSPACE IF EXISTS users;
CREATE  KEYSPACE  users 
   WITH REPLICATION = { 
      'class' : 'SimpleStrategy', 
      'replication_factor' : 3 
      };


CREATE TABLE users.login(
    id UUID PRIMARY KEY,
    email text,
    password text);

    
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test1@gmail.com', 'password1' );
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test2@gmail.com', 'password2' );
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test3@gmail.com', 'password3' );
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test4@gmail.com', 'password4' );
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test5@gmail.com', 'password5' );
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test66@gmail.com', 'password665' );