DELETE
USE EMPLOYEE;

CREATE TABLE Employee_Info (
employee_id INT, 
full_name VARCHAR(100), 
department VARCHAR(50), 
designation VARCHAR(50), 
salary FLOAT,
hire_date DATE, 
location VARCHAR(50), 
is_active BIT);


INSERT INTO Employee_Info VALUES
(1, 'Amit Sharma', 'IT', 'Software Engineer', 65000, '2021-06-15', 'Bangalore', 1),
(2, 'Neha Verma', 'HR', 'HR Executive', 45000, '2022-01-10', 'Delhi', 1),
(3, 'Ravi Kumar', 'Finance', 'Accountant', 52000, '2020-03-18', 'Mumbai', 1),
(4, 'Priya Singh', 'Marketing', 'Marketing Manager', 75000, '2019-11-25', 'Pune', 0),
(5, 'Deepak Joshi', 'IT', 'Team Lead', 85000, '2018-08-30', 'Hyderabad', 1),
(6, 'Sneha Rao', 'IT', 'Data Analyst', 70000, '2021-12-01', 'Chennai', 1),
(7, 'Karan Mehta', 'Finance', 'Financial Analyst', 60000, '2022-02-15', 'Ahmedabad', 0),
(8, 'Ritika Kapoor', 'HR', 'HR Manager', 78000, '2019-09-20', 'Delhi', 1),
(9, 'Manoj Patil', 'IT', 'DevOps Engineer', 72000, '2020-10-10', 'Bangalore', 1),
(10, 'Anjali Desai', 'Marketing', 'SEO Specialist', 55000, '2023-01-05', 'Mumbai', 1),
(11, 'Rahul Khanna', 'IT', 'System Admin', 62000, '2017-07-11', 'Chennai', 1),
(12, 'Divya Sethi', 'HR', 'Recruiter', 47000, '2021-05-16', 'Pune', 1),
(13, 'Vikram Das', 'Finance', 'Auditor', 64000, '2020-01-01', 'Kolkata', 0),
(14, 'Shalini Nair', 'IT', 'Software Engineer', 66000, '2022-09-01', 'Hyderabad', 1),
(15, 'Arjun Mishra', 'Marketing', 'Content Writer', 50000, '2021-03-22', 'Ahmedabad', 1),
(16, 'Meena Iyer', 'Finance', 'Payroll Specialist', 53000, '2023-04-04', 'Mumbai', 1),
(17, 'Nikhil Rao', 'IT', 'QA Engineer', 61000, '2022-05-10', 'Bangalore', 0),
(18, 'Pooja Saxena', 'HR', 'HR Executive', 46000, '2021-08-08', 'Delhi', 1),
(19, 'Saurabh Jain', 'IT', 'Backend Developer', 68000, '2019-12-15', 'Chennai', 1),
(20, 'Anita Kulkarni', 'Marketing', 'Brand Manager', 80000, '2018-06-06', 'Pune', 1);



--1.	Delete the employee whose employee_id is 3.

DELETE FROM Employee_Info WHERE employee_id=3;
 

--2.	Delete all employees who are not active (is_active = FALSE).

DELETE FROM Employee_Info WHERE is_active=0;
 

--3.	Delete all employees from the Finance department with a salary less than ₹55,000.

DELETE FROM Employee_Info WHERE department='FINANCE' AND SALARY<55000;
 

--4.	Delete all employees who were hired before January 1, 2020.

DELETE FROM Employee_Info WHERE hire_date<'2020-01-01';
 

--5.	Delete all employees from the Marketing department located in Pune.

DELETE FROM Employee_Info WHERE department='Marketing' AND location='Pune';
 

--6.	Delete all employees whose designation is 'HR Executive'.

DELETE FROM Employee_Info WHERE designation='HR EXECUTIVE';
 

--7.	Delete employees who have a salary between ₹45,000 and ₹50,000.

DELETE FROM Employee_Info WHERE salary BETWEEN 45000 AND 50000;
 
 
--8.	Delete all employees who work in Chennai and are inactive.

DELETE FROM Employee_Info WHERE LOCATION='CHENNAI' AND is_active=0;
 

--9.	Delete all employees whose name starts with 'A'.

DELETE FROM Employee_Info WHERE full_name LIKE 'A%';  


--10.	Delete all employees except those from the IT department.

DELETE FROM Employee_Info WHERE department NOT IN ('IT');
 

--11.	Truncate the Employee_Info table to remove all records.

TRUNCATE TABLE Employee_Info;
 

--12.	Can you truncate only employees with salary < 60,000? Why or why not? (Theoretical)

-- No, because
-- TRUNCATE TABLE removes all rows from a table 
-- It works at table level, not row level 
-- It does not allow WHERE clause

-- 13.	What’s the difference between TRUNCATE and DELETE when removing all rows?

-- TRUNCATE	 											DELETE
-- Removes all rows                                   	Removes all rows (or selected rows)
-- No WHERE clause										Supports WHERE
-- Faster (minimal logging)								Slower (row-by-row)
-- Resets identity										Does NOT reset identity
-- Cannot be used with conditions						Can be used with conditions

-- 14.	Drop the Employee_Info table entirely from the database.

DROP TABLE Employee_Info;
 

-- 15.	Drop the table only if it exists (to avoid runtime error).

DROP TABLE IF EXISTS Employee_Info;
