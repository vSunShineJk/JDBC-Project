select * from employees;

/*
 1. Column aliases --> it is temporary name to show in display
 2. Table aliases --> before JOINS
 NOTE:
*/

select FIRST_NAME from EMPLOYEES;

--it makes column name Uppercase to show in display. We can give any space too
select FIRST_NAME as given_name from EMPLOYEES;


--it will show column as it is. Also we can give space too
select FIRST_NAME as "given_name" from EMPLOYEES;


--display annual salary for all employees as annual salary
select FIRST_NAME,SALARY*12 as annual_salary from EMPLOYEES;

/*
 String functions
 - Concatenation
 - Java --> firstname+" "+lastname
 - SQL  --> firstname||" "||lastname
*/

--Add email to @gmail domain for all employees and show column name as full email
select EMAIL||'@gmail.com' as full_email from EMPLOYEES;

--CONCAT (Value1, value2)
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

select concat('Cydeo',concat('EMAIL','@gmail.com')) as full_email from EMPLOYEES;