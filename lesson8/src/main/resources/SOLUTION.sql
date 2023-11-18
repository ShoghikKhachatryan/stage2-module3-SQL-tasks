SELECT birthday FROM student ORDER BY birthday DESC LIMIT 1;
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1;
SELECT AVG(mark) FROM mark INNER JOIN subject ON subject.id = mark.subject_id WHERE subject.name = 'Math';
SELECT MIN(amount) FROM payment INNER JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = 'WEEKLY';