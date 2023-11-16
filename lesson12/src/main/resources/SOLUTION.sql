DELETE FROM student WHERE groupNumber >= 4;
DELETE FROM student INNER JOIN mark ON student_id = mark.student_id WHERE mark > 4;
DELETE FROM paymentype WHERE name = 'Daily';
DELETE FROM mark WHERE mark < 7;