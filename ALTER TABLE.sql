CREATE DATABASE IF NOT EXISTS abcd7;
USE abcd7;

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
(2,21,"Aman Verma2","9330nama2@gmail.com",200,5),
(3,22,"Dream Girl1","dreamgirl69@gmail.com",100,1),
(4,23,"Dream Girl2","dreamgirl692@gmail.com",50,1),
(5,22,"Dream Girl New1","newdreamgirl69@gmail.com",4000,2),
(6,19,"Dream Girl New2","newdreamgirl692@gmail.com",700,2),
(7,24,"Dream Girl Again1","dreamgirlagain69@gmail.com",400,6),
(8,19,"Dream Girl Again2","dreamgirlagain692@gmail.com",10000,6);

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "Kolkata";

SELECT * FROM user;

ALTER TABLE user
DROP COLUMN age;

SELECT * FROM user;

ALTER TABLE user
RENAME TO instauser;

SELECT * FROM instauser;

ALTER TABLE instauser
CHANGE COLUMN followers subs INT DEFAULT 0;

SELECT * FROM instauser;

INSERT INTO instauser
(id,name,email,following)
VALUES
(9,"Aman Verma5","9330nama5@gmail.com",5);

ALTER TABLE instauser
MODIFY subs INT DEFAULT 5;

SELECT * FROM instauser;

SET SQL_SAFE_UPDATES=0;