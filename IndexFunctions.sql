    SELECT * FROM employees;
    SELECT * FROM employees WHERE last_name = 'KING';
    SELECT * FROM employees WHERE UPPER(last_name) = 'KING';
     
    CREATE INDEX last_name_fix ON employees (UPPER(last_name));
    SELECT * FROM employees WHERE UPPER(substr(last_name,1,1)) = 'K';
    DROP INDEX last_name_fix;
     
    CREATE INDEX last_name_fix ON employees (UPPER(substr(last_name,1,1)));
    SELECT * FROM employees WHERE UPPER(substr(last_name,1,1)) = 'K';
    SELECT * FROM employees WHERE UPPER(substr(last_name,1,2)) = 'KI';
    DROP INDEX last_name_fix;
     
    CREATE INDEX annual_salary_fix ON employees(salary*12-300);
    SELECT * FROM employees WHERE salary > 10000;
    SELECT * FROM employees WHERE salary*12 > 10000;
    SELECT * FROM employees WHERE salary*12-300 > 10000;
    SELECT * FROM employees WHERE salary*12-301 > 10000+1;
    DROP INDEX annual_salary_fix;
