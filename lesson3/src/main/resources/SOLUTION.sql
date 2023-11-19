ALTER TABLE student ALTER COLUMN birthday DATE NOT NULL;

ALTER TABLE mark ADD CONSTRAINT chk_mark CHECK (1<=mark AND 10<=mark);
ALTER TABLE mark ALTER COLUMN student_id BIGINT NOT NULL;
ALTER TABLE mark ALTER COLUMN subject_id BIGINT NOT NULL;

ALTER TABLE subject ADD CHECK (1<= grade AND 5 >= grade);

ALTER TABLE paymenttype ADD CONSTRAINT uk_payment_type_name UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id BIGINT NOT NULL;
ALTER TABLE payment ALTER COLUMN amount decimal NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date DateTime NOT NULL ;