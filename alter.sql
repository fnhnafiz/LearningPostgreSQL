-- Active: 1749706100502@@127.0.0.1@5432@blog_post
SELECT * FROM person;
INSERT INTO person VALUES('Moina','Aktet',27,true,'female','karonchara@email.com');
ALTER TABLE person
ADD COLUMN email VARCHAR(25) DEFAULT 'emni@email.com' NOT NULL;

ALTER TABLE person
RENAME COLUMN age to user_age;

UPDATE person 
    SET first_name = 'Monalisa'
    WHERE first_name = 'Moina' AND last_name ='Akter';

SELECT * FROM person;

DELETE FROM person
    WHERE first_name ='Moina' AND email = 'emni@email.com'

-- How to add constrains with unique;
ALTER TABLE person
    ADD constraint PK_person_user_age UNIQUE(user_age);