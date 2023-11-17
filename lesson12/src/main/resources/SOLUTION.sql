DELETE FROM student WHERE groupNumber >= 4;
DELETE FROM student INNER JOIN mark ON student.id = mark.student_id WHERE mark > 4;
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;