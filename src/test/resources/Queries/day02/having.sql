select * from employees;


--display job id and their average salary more than 5000
select JOB_ID,avg(SALARY)from EMPLOYEES group by JOB_ID having avg(SALARY)>5000 order by 2 desc;

--display departments id where employees count is bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES having count(*)>5 group by DEPARTMENT_ID;
select DEPARTMENT_ID,count(*) from EMPLOYEES having count(*)>5 group by DEPARTMENT_ID order by 2 desc;


--IQ --> display duplicate firstnames from employees table
select FIRST_NAME,count(*) from EMPLOYEES having count(*)>1 group by FIRST_NAME;