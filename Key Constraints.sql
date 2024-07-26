CREATE DATABASE IF NOT EXISTS twitter;

USE twitter;

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

CREATE TABLE post(
id INT PRIMARY KEY,
content VARCHAR(250),
userid INT,
FOREIGN KEY (userid) REFERENCES user (id)
);