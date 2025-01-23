CREATE DATABASE oneDB;
USE oneDB;

CREATE TABLE student(
id INT PRIMARY KEY NOT NULL,
fname VARCHAR(45) NOT NULL,
lname VARCHAR(45) NOT NULL,
schoole VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
phone BIGINT(10) NOT NULL
);

INSERT INTO student(id, fname, lname, schoole, city, phone) VALUES
(1, "shailesh1", "utkar1", "iccs1", "risod1", "7709822300"),
(2, "shailesh2", "utkar2", "iccs2", "risod2", "1709822300"),
(3, "shailesh3", "utkar3", "iccs3", "risod3", "2709822300"),
(4, "shailesh4", "utkar4", "iccs4", "risod4", "4709822300"),
(5, "shailesh5", "utkar5", "iccs5", "risod5", "5709822300"),
(6, "shailesh6", "utkar6", "iccs6", "risod6", "6709822300"),
(7, "shailesh7", "utkar7", "iccs7", "risod7", "8709822300"),
(8, "shailesh8", "utkar8", "iccs8", "risod8", "2709822308"),
(9, "shailesh5", "utkar5", "iccs3", "risod3", "2709822300"),
(10, "shailesh5", "utkar5", "iccs3", "risod3", "2709822300");

SELECT * FROM student;

SELECT id FROM student;
SELECT fname FROM student;
SELECT lname FROM student;
SELECT schoole FROM student;
SELECT city FROM student;
SELECT phone FROM student;

SELECT * FROM student WHERE fname="shailesh1";
SELECT * FROM student WHERE phone="7709822300";
SELECT * FROM student WHERE id BETWEEN 1 AND 7;
SELECT * FROM student WHERE id  BETWEEN 4 AND 9;
SELECT * FROM student WHERE fname="shailesh5";


UPDATE student SET fname="abhi" WHERE id=1;
UPDATE student SET lname="ingle" WHERE id=6;
UPDATE student SET city="pune" WHERE id=3;
UPDATE student SET fname="abhi3" WHERE id=5 ;
UPDATE student SET phone="1234567899" WHERE id=7;

DELETE FROM student WHERE id>8;
DELETE FROM student WHERE id= "3";

