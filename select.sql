CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(59),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Ariana', 'Khan', 20, 'A+', 'Mathematics', NULL, '2004-03-15', 'A+', 'Germany'),
('Rafi', 'Islam', 22, 'B', 'Physics', 'rafi.islam@example.com', '2002-05-21', 'B+', 'France'),
('Mahi', 'Ahmed', 21, 'A', 'Chemistry', 'mahi.ahmed@example.com', '2003-07-08', 'O+', 'Bangladesh'),
('Tania', 'Begum', 19, 'A-', 'Biology', 'tania.begum@example.com', '2005-01-13', 'A-', 'Italy'),
('Hridoy', 'Chowdhury', 23, 'C+', 'Computer Science', NULL, '2001-10-30', 'AB+', 'Bangladesh'),
('Jannat', 'Rahman', 20, 'B-', 'History', 'jannat.rahman@example.com', '2004-04-18', 'B-', 'Netherlands'),
('Shuvo', 'Hossain', 22, 'B+', 'Economics', 'shuvo.hossain@example.com', '2002-02-25', 'O+', 'Spain'),
('Sadia', 'Karim', 20, 'A', 'Philosophy', 'sadia.karim@example.com', '2004-11-03', 'A+', 'Bangladesh'),
('Nahid', 'Hasan', 21, 'B', 'Statistics', 'nahid.hasan@example.com', '2003-09-10', 'B+', 'Sweden'),
('Ruma', 'Sultana', 19, 'A-', 'Sociology', 'ruma.sultana@example.com', '2005-06-17', 'O-', 'Nepal'),
('Arman', 'Jamal', 22, 'C', 'Political Science', NULL, '2002-12-20', 'AB-', 'Bangladesh'),
('Nadia', 'Akter', 20, 'B+', 'Geography', 'nadia.akter@example.com', '2004-03-09', 'B+', 'Belgium'),
('Faisal', 'Kabir', 23, 'A', 'Psychology', 'faisal.kabir@example.com', '2001-07-26', 'O+', 'Bangladesh'),
('Mim', 'Yasmin', 21, 'A+', 'Literature', 'mim.yasmin@example.com', '2003-05-14', 'A-', 'India'),
('Rony', 'Ali', 20, 'B-', 'Physics', 'rony.ali@example.com', '2004-10-02', 'B-', 'Denmark'),
('Popy', 'Begum', 19, 'A', 'Mathematics', 'popy.begum@example.com', '2005-08-11', 'A+', 'Nepal'),
('Sohan', 'Mia', 22, 'C+', 'Chemistry', 'sohan.mia@example.com', '2002-01-19', 'O+', 'Bangladesh'),
('Shila', 'Parveen', 21, 'B', 'Biology', 'shila.parveen@example.com', '2003-09-29', 'AB+', 'Finland'),
('Adnan', 'Haque', 23, 'A-', 'Economics', 'adnan.haque@example.com', '2001-03-03', 'O-', 'India'),
('Reshma', 'Jahan', 20, 'B+', 'Computer Science', 'reshma.jahan@example.com', '2004-12-07', 'A+', 'Bangladesh'),
('Tarek', 'Rahim', 21, 'A', 'Statistics', 'tarek.rahim@example.com', '2003-06-23', 'B+', 'Norway'),
('Farzana', 'Noor', 20, 'A+', 'History', 'farzana.noor@example.com', '2004-02-05', 'O+', 'Pakistan');



-- How to see speciphic column with this command;
SELECT * from students;

-- How to rename a column with alias;

SELECT email as student_email FROM students;

-- How sorting a column data with ASC & DESC;
SELECT first_name,age FROM students ORDER BY first_name, age DESC;

SELECT country FROM students ORDER BY country ASC;
 
-- How to see unique country with Distinct keyword;
SELECT DISTINCT country FROM students;

-- How to see speciphic country or conditional data with WHERE Keyword;

SELECT * FROM students
 WHERE (country = 'Bangladesh' or country='India') and age >= 20;

--  How to do a column data with uppercas in upper 
SELECT upper(course) as courses, * FROM students;

DROP TABLE students;

SELECT * from students;
