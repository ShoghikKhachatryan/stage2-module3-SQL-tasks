SELECT * FROM payment INNER JOIN paymenttype on payment.type_id = paymenttype.id WHERE paymenttype.name = 'MONTHLY';
SELECT * FROM mark INNER JOIN subject on mark.subject_id = subject.id WHERE subject.name = 'Art';
SELECT DISTINCT student.* FROM student INNER JOIN payment on student.id = payment.student_id INNER JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = 'WEEKLY';
SELECT * FROM student INNER JOIN mark ON student.id = mark.student_id INNER JOIN subject ON mark.subject_id = subject.id WHERE subject.name = 'Math';