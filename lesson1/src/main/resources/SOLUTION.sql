CREATE TABLE student ( id BIGINT PRIMARY KEY, name VARCHAR(255), birthday DATE, groupnumber INT);
CREATE TABLE subject (id BIGINT PRIMARY KEY, name varchar(255), description varchar(255), grade INT);
CREATE TABLE paymenttype (id BIGINT PRIMARY KEY, name varchar(255));
CREATE TABLE payment (id BIGINT PRIMARY KEY, type_id BIGINT FOREIGN KEY REFERENCES paymenttype(id), amount decimal, student_id BIGINT FOREIGN KEY REFERENCES student(id), payment_date DATETIME);
CREATE TABLE mark (id BIGINT PRIMARY KEY, student_id BIGINT FOREIGN KEY REFERENCES student(id), subject_id BIGINT FOREIGN KEY REFERENCES subject(id), mark INT);