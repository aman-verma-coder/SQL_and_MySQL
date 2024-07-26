CREATE DATABASE IF NOT EXISTS abcd2;

USE abcd2;

CREATE TABLE user(
id INT,
age INT,
name VARCHAR(25) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT DEFAULT 0,
CONSTRAINT age_check CHECK (age>=18),
PRIMARY KEY (id)
);

INSERT INTO user
(id,age,name,email,followers,following)
VALUES
(1,22,"Aman Verma1","9330nama@gmail.com",500,5),
(2,21,"Aman Verma2","9330nama2@gmail.com",500,5),
(3,22,"Dream Girl1","dreamgirl69@gmail.com",100,1),
(4,23,"Dream Girl2","dreamgirl692@gmail.com",100,1),
(5,22,"Dream Girl New1","newdreamgirl69@gmail.com",400,2),
(6,19,"Dream Girl New2","newdreamgirl692@gmail.com",400,2),
(7,24,"Dream Girl Again1","dreamgirlagain69@gmail.com",10000,6),
(8,19,"Dream Girl Again2","dreamgirlagain692@gmail.com",10000,6);

SELECT age, max(followers)
FROM user GROUP BY age;

SELECT age, count(id)
FROM user GROUP BY age;