INSERT INTO student (name, groupnumber) VALUES ("John", 1);
INSERT INTO student (name, groupnumber) VALUES ("Chris", 1);
INSERT INTO student (name, groupnumber) VALUES ("Carl", 1);
INSERT INTO student (name, groupnumber) VALUES ("Oliver", 2);
INSERT INTO student (name, groupnumber) VALUES ("James", 2);
INSERT INTO student (name, groupnumber) VALUES ("Lucas", 2);
INSERT INTO student (name, groupnumber) VALUES ("Henry", 2);
INSERT INTO student (name, groupnumber) VALUES ("Jacob", 3);
INSERT INTO student (name, groupnumber) VALUES ("Logan", 3);
INSERT INTO student (name, groupnumber) VALUES ("Anna", 4);
INSERT INTO student (name, groupnumber) VALUES ("Stefie", 5);

INSERT INTO subject (name, grade) VALUES ("Art", 1);
INSERT INTO subject (name, grade) VALUES ("Music", 1);
INSERT INTO subject (name, grade) VALUES ("Geography", 2);
INSERT INTO subject (name, grade) VALUES ("History", 2);
INSERT INTO subject (name, grade) VALUES ("PE", 3);
INSERT INTO subject (name, grade) VALUES ("Math", 3);
INSERT INTO subject (name, grade) VALUES ("Science", 4);
INSERT INTO subject (name, grade) VALUES ("IT", 4);
INSERT INTO subject (name, grade) VALUES ("English", 5);
INSERT INTO subject (name, grade) VALUES ("Germany", 5);

INSERT INTO paymenttype (name) VALUES ("DAILY");
INSERT INTO paymenttype (name) VALUES ("WEEKLY");
INSERT INTO paymenttype (name) VALUES ("MONTHLY");

INSERT INTO payment (type_id, student_id) VALUES (SELECT type_id, student_id FROM paymenttype, student WHERE student.name = "John", paymenttype.name = "Weekly");
INSERT INTO payment (type_id, student_id) VALUES (SELECT type_id, student_id FROM paymenttype, student WHERE student.name = "Oliver", paymenttype.name = "Monthly");
INSERT INTO payment (type_id, student_id) VALUES (SELECT type_id, student_id FROM paymenttype, student WHERE student.name = "Henry", paymenttype.name = "Weekly");
INSERT INTO payment (type_id, student_id) VALUES (SELECT type_id, student_id FROM paymenttype, student WHERE student.name = "James", paymenttype.name = "Daily");
INSERT INTO payment (type_id, student_id) VALUES (SELECT type_id, student_id FROM paymenttype, student WHERE student.name = "Jacob", paymenttype.name = "Weekly");

INSERT INTO mark (mark, student_id, subject_id) VALUES (8, SELECT student_id subject_id FROM subject, student WHERE student.name = "Chris", subject.name = "Art");
INSERT INTO mark (mark, student_id, subject_id) VALUES (5, SELECT student_id subject_id FROM subject, student WHERE student.name = "Oliver", subject.name = "History");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT student_id subject_id FROM subject, student WHERE student.name = "Henry", subject.name = "Geography");
INSERT INTO mark (mark, student_id, subject_id) VALUES (4, SELECT student_id subject_id FROM subject, student WHERE student.name = "James", subject.name = "Math");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT student_id subject_id FROM subject, student WHERE student.name = "Jacob", subject.name = "PE");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT student_id subject_id FROM subject, student WHERE student.name = "Stefie", subject.name = "English");