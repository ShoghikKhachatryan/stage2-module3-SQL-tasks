INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '2000-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris', '2001-02-02', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl', '2002-03-03', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver', '2003-04-04', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James', '2004-05-05', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas', '2005-06-06', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry', '2006-07-07', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob', '2007-08-08', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan', '2008-09-09', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Anna', '2009-10-10', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Stefie', '2010-11-11', 5);

INSERT INTO subject (name, grade) VALUES ('Art', 1);
INSERT INTO subject (name, grade) VALUES ('Music', 1);
INSERT INTO subject (name, grade) VALUES ('Geography', 2);
INSERT INTO subject (name, grade) VALUES ('History', 2);
INSERT INTO subject (name, grade) VALUES ('PE', 3);
INSERT INTO subject (name, grade) VALUES ('Math', 3);
INSERT INTO subject (name, grade) VALUES ('Science', 4);
INSERT INTO subject (name, grade) VALUES ('IT', 4);
INSERT INTO subject (name, grade) VALUES ('English', 5);
INSERT INTO subject (name, grade) VALUES ('Germany', 5);

INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');

--INSERT INTO payment (amount, payment_date, type_id, student_id) SELECT 1000, CURRENT_TIMESTAMP, paymenttype.id, student.id FROM paymenttype, student WHERE student.name = 'John' AND paymenttype.name = 'Weekly';
--INSERT INTO payment (amount, payment_date, type_id, student_id) SELECT 2300, CURRENT_TIMESTAMP, paymenttype.id, student.id FROM paymenttype, student WHERE student.name = 'Oliver' AND paymenttype.name = 'Monthly';
--INSERT INTO payment (amount, payment_date, type_id, student_id) SELECT 24000, CURRENT_TIMESTAMP, paymenttype.id, student.id FROM paymenttype, student WHERE student.name = 'Henry' AND paymenttype.name = 'Weekly';
--INSERT INTO payment (amount, payment_date, type_id, student_id) SELECT 1800, CURRENT_TIMESTAMP, paymenttype.id, student.id FROM paymenttype, student WHERE student.name = 'James' AND paymenttype.name = 'Daily';
--INSERT INTO payment (amount, payment_date, type_id, student_id) SELECT 1700, CURRENT_TIMESTAMP, paymenttype.id, student.id FROM paymenttype, student WHERE student.name = 'Jacob' AND paymenttype.name = 'Weekly';

INSERT INTO payment (type_id, amount, payment_date, student_id)
VALUES
    ((SELECT id FROM paymenttype WHERE name = 'Weekly'), 100.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'John')),
    ((SELECT id FROM paymenttype WHERE name = 'Monthly'), 150.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'Oliver')),
    ((SELECT id FROM paymenttype WHERE name = 'Weekly'), 120.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'Henry')),
    ((SELECT id FROM paymenttype WHERE name = 'Daily'), 20.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'James'));

-- Insert more payments for other students (adjust as needed)
INSERT INTO payment (type_id, amount, payment_date, student_id)
VALUES
    ((SELECT id FROM paymenttype WHERE name = 'Monthly'), 130.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'Lucas')),
    ((SELECT id FROM paymenttype WHERE name = 'Weekly'), 110.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'Logan')),
    ((SELECT id FROM paymenttype WHERE name = 'Daily'), 25.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'Anna'));


INSERT INTO mark (mark, student_id, subject_id) SELECT 8, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Chris' AND subject.name = 'Art';
INSERT INTO mark (mark, student_id, subject_id) SELECT 5, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Oliver' AND subject.name = 'History';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Henry' AND subject.name = 'Geography';
INSERT INTO mark (mark, student_id, subject_id) SELECT 4, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'James' AND subject.name = 'Math';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Jacob' AND subject.name = 'PE';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Stefie' AND subject.name = 'English';