SELECT * FROM students;




SELECT country FROM students
    GROUP BY country;



SELECT count(*) FROM students;

SELECT country, count(*) FROM students
    GROUP BY country;

SELECT country, avg(age) FROM students
    GROUP BY country
    HAVING avg(age) > 21.50;

-- Cout students born in Each Year;

SELECT EXTRACT(year from dob) as birth_year, count(*)
    FROM students
    GROUP BY birth_year;