select * from employees;

create view EmployeesInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials,
       FIRST_NAME||' makes '|| salary as Employees_Salary from employees;
-- S              .                  K        .                Steven makes 24000


select * from EMPLOYEESINFO;

-- How many columns we have in view ?
-- initials
-- Employees_Salary
-- can we call specific column from view

select initials from EMPLOYEESINFO;

select Employees_Salary from EMPLOYEESINFO;

drop view EMPLOYEESINFO;