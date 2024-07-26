CREATE DATABASE college;

USE college;

CREATE TABLE student (
rollNo INT,
name VARCHAR(25),
age INT
);

INSERT INTO student
VALUES
(2,"Aman",21),
(1,"Dream Girl",22);

SELECT * FROM student;