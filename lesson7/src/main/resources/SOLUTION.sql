SELECT * FROM mark WHERE mark > 6 ORDER BY DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY ASC;
SELECT * FROM paymenttype ORDER BY type;
SELECT * FROM student ORDER BY name desc;
SELECT * FROM student INNER JOIN payment ON student.id = payment.student_id WHERE payment.amount > 1000 ORDER BY student.birtday ASC;