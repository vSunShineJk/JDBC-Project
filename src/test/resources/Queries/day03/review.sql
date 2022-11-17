select *
from employees;

--Task 1: How many employees are working for each manager?
select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID;

select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
order by employees_count desc;

select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
having count(*) > 6
group by MANAGER_ID;


--Task 2: How many locations do we have for each country?
select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID IN ('US', 'CA')
group by COUNTRY_ID
order by COUNTRY_ID;

--display where location count is bigger than 2
select COUNTRY_ID, count(*) as location_count
from LOCATIONS
where COUNTRY_ID IN ('US', 'CA', 'UK')
group by COUNTRY_ID
having count(*) > 2
order by COUNTRY_ID;

select *
from LOCATIONS;


--Task 3: Display all employees salary in following format as column name employees salary
--    Ex:   Employees Salary
--          Steven makes 24000
--          Meena makes 17000
select FIRST_NAME||' makes '||SALARY as Employees_Salary from EMPLOYEES;

select concat(concat(FIRST_NAME,' makes '),SALARY) as Employees_Salary from EMPLOYEES;