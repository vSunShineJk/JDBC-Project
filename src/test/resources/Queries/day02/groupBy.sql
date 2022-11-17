select * from employees;

--Task 1: display average salary for IT_PROG
select avg(salary) from employees where JOB_ID='IT_PROG';


--Task 2: display average salary for SA_REP
select avg(salary) from employees where JOB_ID='SA_REP';


--Task 3: display average salary for MK_MAN
select avg(salary) from employees where JOB_ID='MK_MAN';


--how many job id do we have?
select count(distinct JOB_ID) from EMPLOYEES;


/*
 Instead of typing same query for different job id
 We are gonna group them based on Job id and get average salary in one shot
*/
select JOB_ID,avg(SALARY),min(SALARY), max(SALARY),sum(SALARY),count(*) from EMPLOYEES group by JOB_ID;


--get me total salary for each department from employees table
select DEPARTMENT_ID,sum(SALARY),count(*), max(SALARY),min(SALARY),round(avg(SALARY)) from EMPLOYEES group by DEPARTMENT_ID;


--order results based on max salary in asc
select DEPARTMENT_ID,sum(SALARY),count(*), max(SALARY),min(SALARY),round(avg(SALARY)) from EMPLOYEES group by DEPARTMENT_ID order by max(SALARY);


--order results based on max salary in asc and min salary in desc
select DEPARTMENT_ID,sum(SALARY),count(*), max(SALARY),min(SALARY),round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null group by DEPARTMENT_ID order by max(SALARY), min(SALARY) desc;


--display how many departments do we have in each location
select LOCATION_ID,count(*) from DEPARTMENTS group by LOCATION_ID;

--order results based on number of departments in desc
select LOCATION_ID,count(*) from DEPARTMENTS group by LOCATION_ID order by count(*) desc;

--display how many countries do we have in each region
select REGION_ID, count(*) from COUNTRIES group by REGION_ID;
select REGION_ID, count(*) from COUNTRIES group by REGION_ID order by count(*) desc;