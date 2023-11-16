ALTER TABLE mark  DROP CONSTRAINT mark_student_id_fkey;
ALTER TABLE mark ADD CONSTRAINT mark_student_id_fkey FOREIGN KEY (student_id) REFERENCES paymentType(id) ON DELETE CASCADE;
ALTER TABLE mark  DROP CONSTRAINT payment_student_id_fkey;
ALTER TABLE mark ADD CONSTRAINT payment_student_id_fkey FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE;
ALTER TABLE payment DROP CONSTRAINT payment_type_id_fkey;
ALTER TABLE payment ADD CONSTRAINT payment_type_id_fkey foreign key (type_id) references paymenttype(id) ON DELETE CASCADE;