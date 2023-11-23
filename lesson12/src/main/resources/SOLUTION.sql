DELETE FROM student WHERE student.id IN (SELECT DISTINCT student_id FROM mark JOIN subject on mark.subject_id = subject.id WHERE subject.grad >= 4 );
DELETE FROM student WHERE student.id IN (SELECT DISTINCT student_id FROM mark WHERE mark < 4 );
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;