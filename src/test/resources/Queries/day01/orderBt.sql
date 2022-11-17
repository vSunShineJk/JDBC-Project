select * from employees;

--display all infromation from employees based salary in ascending order
select * from EMPLOYEES order by SALARY;


--display all infromation from employees based salary in descending order
select * from EMPLOYEES order by SALARY desc;


--display all infromation from employees based first name in descending order
select * from EMPLOYEES order by FIRST_NAME desc;

-- can we use index to order results
-- Yes we can
-- Index needs to be within limit from column order
select * from EMPLOYEES order by 8 desc;


select FIRST_NAME,LAST_NAME,EMAIL from EMPLOYEES order by 3 desc;


--display all information from employees where employee id is smaller than 120 and order them based on salary desc order
select * from EMPLOYEES where EMPLOYEE_ID<120 order by SALARY desc;


--display all information from employees and order them based on first name asc
select * from EMPLOYEES order by FIRST_NAME;


--display all information from employees and order them based on first name asc and last name desc
select * from EMPLOYEES order by LAST_NAME,LAST_NAME desc;

/*
 it will first order result based on firstname
 after getting result if we have same names it will order them based on lastname in desc order
 David Austin
 David Berstein
 David Lee
 --After
 David Lee
 David Berstein
 David Austin
*/
