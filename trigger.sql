-- Active: 1753087597533@@127.0.0.1@5432@blog_post
CREATE TABLE my_users(
    userName VARCHAR(100),
    userEmail VARCHAR(50)
);
INSERT INTO my_users VALUES('Fahim','fahim@gmail.com'),('Shajni','shajni@gmail.com');
SELECT * FROM my_users;

CREATE TABLE deleted_users_data(
    deleted_userName VARCHAR(50),
    deletedAt TIMESTAMP
);

CREATE OR REPLACE FUNCTION save_deleted_users_data()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
    INSERT INTO deleted_users_data VALUES(OLD.userName, now());
    RETURN OLD;
    END
$$;

CREATE OR REPLACE TRIGGER save_users_data_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_users_data();

DELETE FROM my_users WHERE userName = 'Fahim';