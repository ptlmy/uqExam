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


CREATE TABLE users.comments(
    username text,
    commentString text,
    commentScore int,
    PRIMARY KEY(username, commentScore));

    
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test1@gmail.com', 'password1' ) IF NOT EXISTS;
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test2@gmail.com', 'password2' ) IF NOT EXISTS;
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test3@gmail.com', 'password3' ) IF NOT EXISTS;
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test4@gmail.com', 'password4' ) IF NOT EXISTS;
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test5@gmail.com', 'password5' ) IF NOT EXISTS;
INSERT INTO users.login (id, email, password) VALUES (uuid(), 'test66@gmail.com', 'password665' ) IF NOT EXISTS;


INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user123", "hello", 3) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user123", "gfdsg", 3) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user123", "hello", 7) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user123", "vcbxryhgfhsd", 5) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user123", "shsfdhsh", 2) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user000", "hello", 3) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user000", "hello", 6) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user000", "5234", 3) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user000", "sgfdg", 3) IF NOT EXISTS;
INSERT INTO users.comments (username, commentString, commentScore) VALUES ("user000", "sfdgsg", 8) IF NOT EXISTS;
