select * from employees;

/*
 Aggreate functions - Multi Rows - Group function
 - count --> it will count rows
 - max   --> it will max value
 - min   --> it will min value
 - sum   --> it will give total value
 - avg   --> it will give average value
 Aggreate functions - takes Multi Row and returns one result
 NOTE: All aggreate function ignore null value
*/

--How many department do we have?
select * from DEPARTMENTS;
select count(*) from DEPARTMENTS;


--How many location do we have?
select * from LOCATIONS;
select count(*) from LOCATIONS;


--null values
select * from EMPLOYEES;


--count(*) will count all rows after execution that why we have result as 1
select count(*) from EMPLOYEES where DEPARTMENT_ID is null;


--count
select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is null;


-- BOTH Execution will give same result since we don't have any null values for department id
select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is not null;
select count(*) from EMPLOYEES where DEPARTMENT_ID is not null;


--how many different firstname do we have?
select  count(distinct FIRST_NAME) from EMPLOYEES;


--how many employees are working as a IT_PROG or SA_REP?
select count(*) from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');


--how many employees are getting salary more than 6000?
select count(*) from EMPLOYEES where SALARY>6000;


--MAX
select FIRST_NAME,SALARY from EMPLOYEES;
select max(SALARY) from EMPLOYEES;


--MIN
select min(SALARY) from EMPLOYEES;


--AVG
select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;
select round(avg(SALARY),1) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),3) from EMPLOYEES;


--SUM
select sum(salary) from employees;