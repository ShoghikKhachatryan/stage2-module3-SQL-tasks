ALTER TABLE student ALTER COLUMN birthday DATE NOT NULL;

ALTER TABLE mark ADD CONSTRAINT chk_mark CHECK (mark.mark >= 1 AND mark.mark <= 10);
ALTER TABLE mark ALTER COLUMN student_id BIGINT NOT NULL;
ALTER TABLE mark ALTER COLUMN subject_id BIGINT NOT NULL;

ALTER TABLE subject ADD CONSTRAINT chk_grade CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymentType ADD UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id BIGINT NOT NULL;
ALTER TABLE payment ALTER COLUMN amount decimal NOT NULL ;
ALTER TABLE payment ALTER COLUMN date DateTime NOT NULL ;