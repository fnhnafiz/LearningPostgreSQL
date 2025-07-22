CREATE TABLE employes(
    emp_id INT,
    emp_name VARCHAR(40),
    dept_id INT
);
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employes VALUES (1, 'DJ Bravo', 101);

INSERT INTO employes VALUES (2,'Jhon Smith', 102);

INSERT INTO departments VALUES (101,'Human Resurces');

INSERT INTO departments VALUES (102, 'Marketing Stagey');

SELECT * FROM employes;
SELECT * FROM departments;

SELECT dept_id FROM employes JOIN dept_id;