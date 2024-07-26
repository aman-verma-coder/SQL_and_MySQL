CREATE DATABASE college3;

USE college3;

CREATE TABLE Student_info(
roll_no INT,
name VARCHAR(50),
city VARCHAR(50),
marks INT
);

INSERT INTO Student_info
(roll_no,name,city,marks)
VALUES
(110,"Adam","Delhi",76),
(108,"Bob","Mumbai",65),
(135,"Casey","Pune",94),
(112,"Duke","Pune",80);

SELECT * FROM Student_info
WHERE marks>=75;

SELECT DISTINCT city FROM Student_info;

SELECT city, max(marks)
FROM Student_info GROUP BY city;

SELECT avg(marks) FROM Student_info;

ALTER TABLE Student_info
ADD COLUMN grade VARCHAR(2);

UPDATE Student_info
SET grade="O"
WHERE marks>=80;

UPDATE Student_info
SET grade="A"
WHERE marks>=70 AND marks < 80;

UPDATE Student_info
SET grade="B"
WHERE marks>=60 AND marks < 70;

SELECT * FROM Student_info;

SET SQL_SAFE_UPDATES=0;