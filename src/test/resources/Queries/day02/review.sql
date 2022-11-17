select * from employees;


--Task 1: display any job title information ends with manager from jobs table
select * from JOBS where JOB_TITLE like '%Manager';


--Task 4: display all countries where region id is 1 and country name is not Belgium
select * from COUNTRIES where REGION_ID=1 and COUNTRY_NAME!='Belgium';
select * from COUNTRIES where REGION_ID=1 and COUNTRY_NAME not in ('Belgium');


--Task 2: display all employees except firstname is starting with D
select * from EMPLOYEES where FIRST_NAME like 'D%';
select * from EMPLOYEES where FIRST_NAME not like 'D%' order by FIRST_NAME;


--Task 3: display all employees except firstname is starting with D and has 5 letter
select * from EMPLOYEES where FIRST_NAME not like 'D____' order by FIRST_NAME;


--Count:
select count(*) from EMPLOYEES where FIRST_NAME not like 'D____' order by FIRST_NAME;