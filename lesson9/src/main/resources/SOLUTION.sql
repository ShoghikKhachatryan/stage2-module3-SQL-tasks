SELECT * FROM student INNER JOIN mark ON student.id = mark.student_id HAVING AVG(mark.mark) > 8;
SELECT id, name FROM student INNER JOIN mark ON student.id = mark.student_id HAVING MIN(mark.mark) > 7;
SELECT id, name FROM student INNER JOIN peyment ON student.id = payment.student_id HAVING COUNT(payment.id) > 2;