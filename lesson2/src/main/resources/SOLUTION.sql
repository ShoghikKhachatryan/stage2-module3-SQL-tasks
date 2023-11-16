INSERT INTO student (name, groupnumber) VALUES ('John', 1);
INSERT INTO student (name, groupnumber) VALUES ('Chris', 1);
INSERT INTO student (name, groupnumber) VALUES ('Carl', 1);
INSERT INTO student (name, groupnumber) VALUES ('Oliver', 2);
INSERT INTO student (name, groupnumber) VALUES ('James', 2);
INSERT INTO student (name, groupnumber) VALUES ('Lucas', 2);
INSERT INTO student (name, groupnumber) VALUES ('Henry', 2);
INSERT INTO student (name, groupnumber) VALUES ('Jacob', 3);
INSERT INTO student (name, groupnumber) VALUES ('Logan', 3);
INSERT INTO student (name, groupnumber) VALUES ('Anna', 4);
INSERT INTO student (name, groupnumber) VALUES ('Stefie', 5);

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

INSERT INTO payment (type_id, student_id) SELECT paymenttype.type_id, student.student_id FROM paymenttype, student WHERE student.name = 'John'AND paymenttype.name = 'Weekly';
INSERT INTO payment (type_id, student_id) SELECT paymenttype.type_id, student.student_id FROM paymenttype, student WHERE student.name = 'Oliver'AND paymenttype.name = 'Monthly';
INSERT INTO payment (type_id, student_id) SELECT paymenttype.type_id, student.student_id FROM paymenttype, student WHERE student.name = 'Henry'AND paymenttype.name = 'Weekly';
INSERT INTO payment (type_id, student_id) SELECT paymenttype.type_id, student.student_id FROM paymenttype, student WHERE student.name = 'James' AND paymenttype.name = 'Daily';
INSERT INTO payment (type_id, student_id) SELECT paymenttype.type_id, student.student_id FROM paymenttype, student WHERE student.name = 'Jacob'AND paymenttype.name = 'Weekly';

INSERT INTO mark (mark, student_id, subject_id) SELECT 8, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Chris' AND subject.name = 'Art';
INSERT INTO mark (mark, student_id, subject_id) SELECT 5, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Oliver' AND subject.name = 'History';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Henry' AND subject.name = 'Geography';
INSERT INTO mark (mark, student_id, subject_id) SELECT 4, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'James' AND subject.name = 'Math';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Jacob' AND subject.name = 'PE';
INSERT INTO mark (mark, student_id, subject_id) SELECT 9, student.student_id, subject.subject_id FROM subject, student WHERE student.name = 'Stefie' AND subject.name = 'English';