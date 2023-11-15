CREATE TABLE Student (id BIGINT, name varchar(255), birthday DATE, group INT);
CREATE TABLE Subject (id BIGINT NOT NULL PRIMARY KEY, name varchar(255), description varchar(255), grade INT);
CREATE TABLE PaymentType (id BIGINT NOT NULL PRIMARY KEY, name varchar(255));
CREATE TABLE Payment (id BIGINT NOT NULL PRIMARY KEY, type_id BIGINT FOREIGN KEY REFERENCES PeymentType(id), amount decimal, student_id BIGINT FOREIGN KEY REFERENCES Student(id), payment_date DATETIME);
CREATE Table Mark (id BIGINT NOT NULL PRIMARY KEY, student_id BIGINT FOREIGN KEY REFERENCES Student(id), subject_id BIGINT FOREIGN KEY REFERENCES Subject(id), mark INT);