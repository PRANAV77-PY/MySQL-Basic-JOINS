CREATE DATABASE MYSQL_JOINS;

USE MYSQL_Joins;

CREATE TABLE students(
	students_Id INT,
    name VARCHAR(50),
    course_Id INT
);

SELECT * FROM students;

CREATE TABLE courses(
	course_Id INT,
    course_name VARCHAR(50)
);

SELECT * FROM courses;

INSERT INTO students VALUES
(1,'Anil',101),
(2,'Bina',102),
(3,'Chetan',103),
(4,'Deepa',NULL),
(5,'Esha',105);

INSERT INTO courses VALUES
(101,'Math'),
(102,'Science'),
(103,'English'),
(104,'History');

-- 1. INNER JOIN- Matching rows only
SELECT s.name,c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;
-- returns: students who are enrolled in exustung course

-- 2.LEFT JOIN - ALL Students + matching courses 
SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.course_Id = c.course_Id;


-- 3.RIGHT JOIN - ALL courses + matching students
SELECT s.name,c.course_name
FROM students s
RIGHT JOIN courses c
ON s.course_id = c.course_Id;


-- 4.FULL OUTER JOIN (Simulated using UNION)
SELECT s.name,c.course_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.course_Id

UNION

SELECT s.name,c.course_name
FROM students s
RIGHT JOIN courses c ON s.course_Id = c.course_Id;


-- 5.CROSS JOIN - Cartesian product
SELECT s.name,c.course_name
FROM students s
CROSS JOIN courses c;

-- Returns : every combination of students and course

-- 6.SELF JOIN - Join a table with itself
-- Example: Find students in same course

SELECT A.name AS student1, B.name AS student2, A.course_Id
FROM students A
JOIN students B ON A.course_Id = B.course_Id
WHERE A.student_Id < B.student_id;

-- REturns: pairs of students in the  same course

    