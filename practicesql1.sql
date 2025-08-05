CREATE DATABASE practicesql1;

use  practicesql1;

CREATE TABLE employee (
	emp_name VARCHAR(256),
    department_id INT,
    salary  INT,
    Hire_date VARCHAR(256)
);

SELECT * FROM employee;


INSERT INTO employee VALUES
('peter',2501,10000,'13-01-2024'),
('harry',2502,20000,'25-01-2023'),
('Tom',2503,30000,'08-03-2025'),
('john',2504,40000,'16-08-2025'),
('jack',2505,50000,'10-06-2025'),
('jerry',2506,60000,'12-10-2022');

# 1.select all columns :- write a query to select all columns from the employees table
SELECT * FROM employee;

#2.select specific cloumns :- write a query to select the first name and salary columns from the employee table
SELECT emp_name,salary from employee;

#3.WHERE CLAUSE :- write a query to select all employees whose salary is greater than 50000
SELECT * FROM employee WHERE salary > 50000;

#4.ORDER BY CLAUSE :- write a query to select all employees and order them by hire_date in descending order
SELECT * FROM employee
ORDER BY hire_date DESC;

#5.count() function :- write a query to find the total number of employees
SELECT 
	count(*) total_emp
    FROM employee;
    
#6.AVG() function :- write a query to find the avg salary of employees
SELECT 
	AVG(salary) AVG_total_salary
    FROM employee;
    
#7.GROUP BY :- write a query to display the total number of employees in each department.assume the colum is dep_id
SELECT department_id, 
	COUNT(*) as total_employees FROM employee
	GROUP BY department_id;
    
#8. LIKEOPERATOR :- write a query to find all employee whose first name starts with the letter j
SELECT * FROM employee
 WHERE emp_name LIKE 'j%' ;
 
 #9.UPDATE STATEMENT :- write a query to increase the salary by 10% for employees whose department is 5
 UPDATE employee
 SET salary = salary * 1.10
 WHERE department_id = 2505;
 
 #10.delete statement :- write a query to delete employees who have not been assigned to any department 
 DELETE FROM empolyee
 
 
 
 





	