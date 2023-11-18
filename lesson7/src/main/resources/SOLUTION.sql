SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name ASC;
SELECT * FROM student ORDER BY name desc;
SELECT DISTINCT * FROM student INNER JOIN payment ON student.id = payment.student_id WHERE payment.amount > 1000 ORDER BY student.birtday ASC;