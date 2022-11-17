select * from employees;


-- it is case sensitive
-- String(Java) == Varchar(Database)
select * from EMPLOYEES where FIRST_NAME='David';


-- display first name, last name and salary from employees where first name is Peter
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where FIRST_NAME='Peter';


-- display first name, last name and salary from employees where first name is Peter and last name is Austin
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where FIRST_NAME='David' and LAST_NAME='Austin';


-- display all information from employees where salary is bigger than 6000
select * from EMPLOYEES where SALARY > 6000;


-- display email of who is making less than 6000
select FIRST_NAME,EMAIL from EMPLOYEES where SALARY<6000;


-- display all information from employees who is making more than 6000 and department id is 60
select * from EMPLOYEES where SALARY>6000 and DEPARTMENT_ID=60;


-- display all information from employees where salary is equal and more than 3000 and salary is equals or less than 7000
select * from EMPLOYEES where SALARY>=3000 and SALARY<=7000;


--between lower and upper
--it will give result within this range
select * from EMPLOYEES
where SALARY between 3000 and 7000;


-- display all information from employees where employee id is between 100 and 120
select * from EMPLOYEES where EMPLOYEE_ID between 100 and 120;


-- display all information from employees who is working as a IT programmer or Marketing Manager
select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='MK_MAN';
--IN clauses
--it uses or logic
--it check job id IN parenthesis to see condition is matching
--solution 2
select * from EMPLOYEES where JOB_ID IN('IT_PROG','MK_MAN');


--display all information where employee id is 121,143,156,134
select * from EMPLOYEES where EMPLOYEE_ID IN(121,143,156,134);


--display all information where country id is equals US,IT
select * from COUNTRIES where COUNTRY_ID IN ('US','IT');


--display all country names except country id is equals US,IT
select COUNTRY_NAME from COUNTRIES where not COUNTRY_ID IN ('US','IT');


--IS NULL
--display all information from employees where department id is null
select * from EMPLOYEES where DEPARTMENT_ID is null;


--display all information from employees where manager id is null
select * from EMPLOYEES where MANAGER_ID is null;


--IS NOT NULL
--display all information from employees where department id is not null
select * from EMPLOYEES where DEPARTMENT_ID is not null;


--display all information from employees where manager id is not null
select * from EMPLOYEES where MANAGER_ID is not null;