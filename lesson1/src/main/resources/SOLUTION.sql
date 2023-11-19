CREATE DATABASE university;
USE university;

CREATE TABLE student (id BIGINT PRIMARY KEY, name VARCHAR(255), birthday DATE, groupnumber INT);

CREATE TABLE subject (id BIGINT PRIMARY KEY, name VARCHAR(255), description VARCHAR(255), grade INT);

CREATE TABLE paymentType (id BIGINT PRIMARY KEY, name VARCHAR(255));

CREATE TABLE payment (id BIGINT PRIMARY KEY, type_id BIGINT, amount DECIMAL, student_id BIGINT, payment_date DATETIME, FOREIGN KEY (type_id) REFERENCES paymentType(id), FOREIGN KEY (student_id) REFERENCES student(id));

CREATE TABLE mark (id BIGINT PRIMARY KEY, student_id BIGINT, subject_id BIGINT, mark INT, FOREIGN KEY (student_id) REFERENCES student(id), FOREIGN KEY (subject_id) REFERENCES subject(id));
