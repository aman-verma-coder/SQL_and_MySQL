CREATE DATABASE IF NOT EXISTS abcd;
USE abcd;

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
(1,21,"Aman Verma","9330nama@gmail.com",500,5),
(2,22,"Dream Girl","dreamgirl69@gmail.com",100,1),
(3,21,"Dream Girl New","newdreamgirl69@gmail.com",400,2),
(4,22,"Dream Girl Again","dreamgirlagain69@gmail.com",10000,6);

select DISTINCT age FROM user; 