select * from employees;

/*
  LIKE
  - Percent (%) for matching any sequence of characters
  - Underscore (_) for matching any single character
  - contains
  - starts with
  - ends with
*/

--display all employees where first name starts with B
select * from EMPLOYEES where FIRST_NAME like 'B%';


--wrong logic
select * from EMPLOYEES where FIRST_NAME like 'B_'; ---> it says give all info name starts with B and length is 2


--display all employees where first name starts with B and length is 5
select * from EMPLOYEES where FIRST_NAME like  'B____';


--display 5 letter first names from employees where middle char is z
select * from EMPLOYEES where FIRST_NAME like '__z__';


--NOTE:
-- values are case sensitive
-- keywords/tables/columns are not case sensitive


--display 5 letter first names from employees ending with e
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '____e';

--it gives all first names ending with e
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '%e';


--display first names where second letter is a
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '_a%';


--display all employees where job id contains IT
select * from EMPLOYEES where JOB_ID like '%IT%';


--display all information where first name starts with H and ends with l
select * from EMPLOYEES where FIRST_NAME like 'H%l';