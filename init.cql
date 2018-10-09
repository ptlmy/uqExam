DROP KEYSPACE IF EXISTS exams;
CREATE KEYSPACE exams WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': '3'} AND durable_writes = true;
CREATE TABLE exams.coursecodes(
    examID TEXT,
    numberExams int,
    lastUpdated TEXT, --NEED TO CONVERT THIS TO TIMESTAMP IN PRODUCTION
    PRIMARY KEY(examID, numberExams)
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
    PRIMARY KEY(examID, examYear)
    );

--# EXAM QUESTION DATA 
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 1, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 2, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 3, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 4, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 5, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 6, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 7, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 8, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 9, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 10, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 11, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 12, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20181, 13, 'http://imagehere9876.com');

INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 1, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 2, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 3, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 4, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 5, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 6, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 7, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 8, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 9, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 10, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 11, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 12, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 13, 'http://imagehere9876.com');

INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 1, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 2, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 3, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 4, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 5, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 6, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 7, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 8, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 9, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 10, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 11, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 12, 'http://imagehere9876.com');
INSERT INTO exams.courseexams (examID, examYear, questionID, imageAddress) VALUES ('ECON1010', 20171, 13, 'http://imagehere9876.com');

CREATE TABLE exams.comments(examID TEXT,examYear int, questionID int, username text, commentString text, commentScore int,PRIMARY KEY ((examID, examYear), questionID));


--# DATA INSERT FOR COMMENTS

--#ECON1010
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 1, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 1, 'User123', 'I think this is the answer', 1);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 1, 'User123', 'I think this is the answer', 2);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 1, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 15);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 1);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 52);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 1);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 2, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 2);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 5);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 1);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 3, 'User123', 'I think this is the answer', 41);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 5);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 6);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 7);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 4, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 6);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 3);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 5, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 1);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 7);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 4);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 8);
INSERT INTO exams.comments (examID, examYear, questionID, username, commentString, commentScore) VALUES ('ECON1010', 20181, 6, 'User123', 'I think this is the answer', 32);


CREATE TABLE exams.spamdata(
    key UUID,
    spamKey TEXT,
    spamText TEXT,
    PRIMARY KEY(key, spamKey)
    );


