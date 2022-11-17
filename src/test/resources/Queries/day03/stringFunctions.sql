select * from employees;


/*
 STRING FUNCTIONS
    -- CONCAT
    -- Java--> + --->     firstname+" "+lastname
    -- SQL --> || -->     firsname||' '||lastname
 */

-- Add email to @gmail domain for all employees and show column name as full_email
select * from EMPLOYEES;  --> SKING@gmail.com

select EMAIL||'@gmail.com' as full_email from EMPLOYEES;

-- CONCAT (value1 ,value2)
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

select concat('Cydeo ',concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

--UPPER (varchar)
select UPPER(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

--LOWER (varchar)
select LOWER(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

--INITCAP(varchar)
-- It makes first letter uppercase
select email from EMPLOYEES;
select initcap(email) from EMPLOYEES;


-- LENGTH()
select email,length(email||'@gmail.com') as email_length  from EMPLOYEES
order by email_length;

-- display all employees where firstname lenght equals 6
select FIRST_NAME from EMPLOYEES
where length(FIRST_NAME)=6;

-- give me another solution
select FIRST_NAME from EMPLOYEES where FIRST_NAME='______';

--how many we have
select count(*) from EMPLOYEES where FIRST_NAME like '______';


--SUBSTR(columnName,beginningIndex,numberOfChar)
/*
   -if beginning 0, it is treated as 1
   -
*/
--display initial from firstname and lastname --> S.K. g--- N.K.
select * from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials from EMPLOYEES;

select substr(FIRST_NAME,2,1)||'.'||substr(LAST_NAME,2,1)||'.' as initials from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3,2) from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,-5) from EMPLOYEES;