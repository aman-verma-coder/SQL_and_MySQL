CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(
id INT,
age INT,
name VARCHAR(25) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT DEFAULT 0,
CONSTRAINT age_check CHECK (age>=18)
);