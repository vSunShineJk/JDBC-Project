select * from employees;

/*
  it limits rows based on provided number
*/

select * from EMPLOYEES where ROWNUM<11;


--display all information from employees who is getting 5 highest salary

--Bad Practice
--It is getting data before order them based salary and cut the list from line 6 then it tries to order them between first 5 rows
--That is why we are getting wrong list
select * from EMPLOYEES where ROWNUM<5 order by SALARY desc;

--Correct answer
select * from (select * from EMPLOYEES order by SALARY desc) where ROWNUM<6;

--display all information who is getting 5th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)  where rownum<6;

--display who is getting 5th highest salary
select * from EMPLOYEES where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)  where rownum<6);

