DELETE FROM student WHERE groupnumber >= 4;
DELETE FROM student WHERE student.id IN (SELECT DISTINCT student.id FROM student JOIN mark ON student.id = mark.student_id WHERE mark.mark < 4 );
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;