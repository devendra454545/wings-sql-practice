
--1.	Update the salary of employee with ID 5 to 90000.

	UPDATE Employee_Info SET SALARY=90000 WHERE employee_id=5;


--2.	Change the department of all employees named "Ravi Kumar" to "Audit".

	UPDATE Employee_Info SET department='Audit' WHERE full_name='Ravi Kumar';


--3.	Set is_active to FALSE for employee with ID 4.

	UPDATE Employee_Info SET is_active=0 WHERE employee_id=4;


--4.	Update the location to 'Remote' for employee named 'Priya Singh'.

	UPDATE Employee_Info SET location='REMOTE' WHERE FULL_NAME='PRIYA SINGH';


--5.	Set the salary to 50000 for all employees in the 'HR' department.

	UPDATE Employee_Info SET SALARY=50000 WHERE department='HR';
 

--6.	Change the designation of employee with ID 10 to 'Digital Marketer'.

	UPDATE Employee_Info SET designation='Digital Marketer' WHERE employee_id=10;
  

--7.	Set is_active to TRUE for all employees in 'Pune'.

	UPDATE Employee_Info SET is_active=1 WHERE location='Pune';
  

--8.	Update the location to 'Delhi NCR' for all employees currently in 'Delhi'.

	UPDATE Employee_Info SET location='Delhi NCR'  WHERE location='DELHI';


--9.	Increase the salary of employee with ID 6 to 80000.

 	UPDATE Employee_Info SET SALARY=80000  WHERE employee_id=6;


--10.	Set all employees' department to 'IT' where their designation is 'Software Engineer'.

	UPDATE Employee_Info SET department='IT'  WHERE designation='Software Engineer';


--11.	Change the designation to 'Senior Analyst' and salary to 75000 for employee with    ID 13.	

	UPDATE Employee_Info SET designation='Senior Analyst', SALARY = 75000  WHERE employee_id=13;
 

--12.	Set location to 'Kolkata' and is_active to FALSE for all employees in 'Finance'.

	UPDATE Employee_Info SET LOCATION='KOLKATA', is_active = 0  WHERE department='FINANCE';
  

--13.	Update the department to 'Operations' and designation to 'Ops Executive' for
employee ID 15.

	UPDATE Employee_Info SET department='OPERATIONS', designation = 'Ops Executive' WHERE employee_id=15;

  
--14.	Set salary to 70000 and is_active to TRUE where the department is 'Marketing'.

	UPDATE Employee_Info SET SALARY=70000, is_active = 1 WHERE department='MARKETING';


--15.	Update both full_name and location for employee ID 8.

	UPDATE Employee_Info SET full_name='DEVENDRA SINGH THAKUR', location = 'INDORE' WHERE employee_id=8;
  

--16.	Increase salary to 85000 where department is 'IT' and designation is 'Team Lead'.

	UPDATE Employee_Info SET salary=85000 WHERE DEPARTMENT='IT' AND designation = 'TEAM LEAD';
  

--17.	Set is_active to FALSE for employees whose location is 'Mumbai' or 'Chennai'.

	UPDATE Employee_Info SET is_active=0 WHERE LOCATION IN ('MUMBAI','CHENNAI');
  

--18.	Change designation to 'Recruitment Lead' where department is 'HR' and designation is 'HR Executive'. 

	UPDATE Employee_Info SET designation='Recruitment Lead' WHERE department='HR' AND designation='HR Executive';
 
 
--19.	Update location to 'Remote' where designation contains 'Engineer'.

	UPDATE Employee_Info SET location='ReMOTE' WHERE designation LIKE'%ENGINEER%';
 
 
--20.	Set department to 'Business' where employee name starts with 'A'.

	UPDATE Employee_Info SET department='BUSINESS' WHERE full_name LIKE'A%';
  

--21.	Increase salary by 2000 where salary is between 60000 and 70000.

	UPDATE Employee_Info SET SALARY=SALARY+2000 WHERE SALARY BETWEEN 60000 and 70000;
  

--22.	Set is_active to FALSE for employee IDs between 5 and 10.

	UPDATE Employee_Info SET is_active=0 WHERE employee_id BETWEEN 5 and 10;
 

--23. Change department to 'Compliance' where hire_date is between '2020-01-01' and
'2021-12-31'.

	UPDATE Employee_Info SET department='COMPLIANCE' WHERE hire_date BETWEEN '2020-01-01' and '2021-12-31';

  
--24. Update location to 'Bangalore' for employees hired between '2022-01-01' and '2023-01-01'. 

	UPDATE Employee_Info SET location='Bangalore' WHERE hire_date BETWEEN '2022-01-01' and '2023-01-01';


--25. Set salary to 75000 where employee_id between 11 and 14.

      UPDATE Employee_Info SET salary=75000 WHERE employee_id BETWEEN 11 and 14;

  
--26. Update location to 'Offsite' where department is IN ('Finance', 'HR'). 
     
	UPDATE Employee_Info SET location='OFFSITE' WHERE department IN ('Finance', 'HR');


--27. Change designation to 'Associate' where employee_id IN (1, 3, 5, 7).

	UPDATE Employee_Info SET designation = 'Associate' WHERE employee_id IN (1,3,5,7);
  

--28. Set salary to 60000 where department is NOT IN ('IT', 'Marketing').

	UPDATE Employee_Info SET salary = 60000 WHERE department NOT IN ('IT','MARKETING');
  

--29. Set is_active to TRUE where location is IN ('Delhi', 'Pune').

	UPDATE Employee_Info SET is_active = 1 WHERE location IN ('DELHI','PUNE');
 
 
--30. Change department to 'Consulting' where designation is IN ('Auditor', 'Financial
Analyst').

    UPDATE Employee_Info SET department = 'CONSULTING' WHERE DESIGNATION IN ('Auditor', 'Financial Analyst');
  

--31. Set location to 'Unknown' where full_name LIKE 'S%'.

	UPDATE Employee_Info SET location = 'UNKNOWN' WHERE FULL_NAME LIKE 'S%';
  

--32. Update designation to 'Manager' where full_name LIKE '%Manager'.

	UPDATE Employee_Info SET designation = 'MANAGER' WHERE FULL_NAME LIKE '%MANAGER'; 
  

--33. Change department to 'Legal' where full_name LIKE '_ik%'.

	UPDATE Employee_Info SET department = 'LEGAL' WHERE FULL_NAME LIKE '_IK%';
 
 
--34. Set location to 'Metro City' where full_name LIKE '%a'.

	UPDATE Employee_Info SET location = 'METRO CITY' WHERE FULL_NAME LIKE '%A';
  

--35. Update salary to 80000 where designation LIKE '%Lead%'.

	UPDATE Employee_Info SET salary = 80000 WHERE designation LIKE '%LEAD%';
  

--36. Update is_active to FALSE where designation is 'Intern' or salary < 40000. 

	UPDATE Employee_Info SET is_active = 0 WHERE designation = 'INTERN' OR salary < 40000;
  

--37. For employees in 'Finance', set salary = salary * 1.10 (10% hike).

	UPDATE Employee_Info SET salary = salary * 1.10 WHERE department = 'FINANCE'; 
  

--38. Set designation to 'Fresher' for all employees hired after '2023-01-01'.

	UPDATE Employee_Info SET designation = 'FRESHER' WHERE hire_date > '2023-01-01'; 
  

--39. Update the designation of the employee named 'Neha Verma' to 'Senior HR
Executive'.

	UPDATE Employee_Info SET designation = 'SENIOR HR EXECUTIVE' WHERE full_name = 'NEHA VERMA'; 

  
--40. Set the is_active status to FALSE for the employee with employee_id = 17.

	UPDATE Employee_Info SET is_active = 0 WHERE employee_id = 17;
  
