DELETE FROM student WHERE 4 <= groupnumber;
DELETE FROM student JOIN mark ON student.id = mark.student_id WHERE mark.mark > 4;
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;