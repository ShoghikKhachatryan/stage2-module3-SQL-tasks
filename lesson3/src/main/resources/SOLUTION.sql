ALTER TABLE student
    ALTER COLUMN birthday DATE NOT NULL;

ALTER TABLE mark ADD CONSTRAINT chk_mark CHECK (mark >= 1 AND mark <= 10), ALTER COLUMN student_id BIGINT NOT NULL, ALTER COLUMN subject_id BIGINT NOT NULL;

ALTER TABLE subject ADD CONSTRAINT chk_grade CHECK (grade > 0), ADD CONSTRAINT chk_grade_up CHECK (grade < 6);

ALTER TABLE paymenttype ADD CONSTRAINT uk_payment_type_name UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id BIGINT NOT NULL, ALTER COLUMN amount decimal NOT NULL, ALTER COLUMN payment_date DateTime NOT NULL ;