DROP KEYSPACE IF EXISTS exams;
CREATE KEYSPACE exams WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': '3'} AND durable_writes = true;
CREATE TABLE exams.coursecodes(
    examID TEXT,
    numberExams int,
    lastUpdated TEXT, --NEED TO CONVERT THIS TO TIMESTAMP IN PRODUCTION
    PRIMARY KEY(examID)
    );

-- EXAM COURSE CODE DATA
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('ECON1010', 15, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('CSSE1001', 14, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('CSSE2010', 8, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('CSSE2310', 9, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('ECON2020', 3, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('SCIE1000', 12, 'PLACEHOLDER');
INSERT INTO exams.coursecodes (examID, numberExams, lastUpdated) VALUES ('INFS3208', 1, 'PLACEHOLDER');

CREATE TABLE exams.courseexams(
    examID TEXT,
    examYear INT,
    questionID INT,
    imageAddress TEXT, -- PLACEHOLDER IN TEST, IN PROD WILL POINT TO IMAGE FILE LOCATION
    PRIMARY KEY(examID, examYear, questionID)
    );

--# EXAM QUESTION DATA 
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 1, '1. In a perfectly competitive market, the market equilibrium price is:');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 2, '2. The free-rider problem: ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 3, '3. A perfectly competitive firm faces a _____ demand curve and a monopolist faces a
_____ demand curve.');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 4, '4. If the market price is $15/unit, what is the profit maximising quantity in the short run? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 5, '5. If the market price is $15/unit, what is the profit of the firm in the short run? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 6, '6. If the market price is $10/unit, what is the profit maximising quantity in the short run? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 7, '7. Vegemite and bread are consumed together. An increase in the price of bread will
cause a:');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 8, '8. For a competitive market with a negative externality, firms produce: ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 9, '9. Opening an economy to international trade will: ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 10, '10. What is the price elasticity of demand at point A? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 11, '10. What is the price elasticity of demand at point A? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 12, '12. A monopolist charges each consumer his or her marginal benefit. Which of the
following is true? ');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 13, '13. Consider the following information for a pizza shop in a perfectly competitive market.
Note that some values are missing.');

INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 1, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 2, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 3, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 4, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 5, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 6, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 7, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 8, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 9, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 10, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 11, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 12, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 13, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 1, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 2, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 3, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 4, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 5, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 6, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 7, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 8, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 9, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 10, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 11, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 12, '');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 13, '');

CREATE TABLE exams.comments(commentID UUID, examID TEXT,examYear int, questionID int, username text, commentString text, commentScore int, isSpam int,
 PRIMARY KEY (examID, examYear, questionID, commentID, isSpam));


--# DATA INSERT FOR COMMENTS

--#ECON1010
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 1, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 1, 'User123', 'I think this is the answer', 1, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 1, 'User123', 'I think this is the answer', 2, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 1, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 15, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 1, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 52, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 1, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 2, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 5, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 1, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 3, 'User123', 'I think this is the answer', 41, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 5, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 6, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 7, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 6, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 3, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 1, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 7, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 8, 0);
INSERT INTO exams.comments (commentID, examID, examYear, questionID, username, commentString, commentScore, isSpam) VALUES (uuid(), 'ECON1010', 20181, 6, 'User123', 'I think this is the answer', 32, 0);


CREATE TABLE exams.spamdata(
    key UUID,
    spamKey TEXT,
    spamText TEXT,
    PRIMARY KEY(key, spamKey)
    );

CREATE MATERIALIZED VIEW exams.notSpam AS
    SELECT * FROM exams.comments
    WHERE examID IS NOT NULL AND examYear IS NOT NULL AND  questionID IS NOT NULL AND  commentID IS NOT NULL AND isSpam = 0
    PRIMARY KEY (examID, examYear, questionID, commentID, isSpam)
    WITH CLUSTERING ORDER BY (examYear desc);


