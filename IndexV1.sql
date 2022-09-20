    CREATE TABLE employees_copy AS SELECT * FROM employees;
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    CREATE INDEX emp_id_idx ON employees_copy(employee_id) COMPUTE STATISTICS;
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    EXEC dbms_stats.gather_table_stats (ownname=>'HR',tabname => 'EMPLOYEES_COPY',CASCADE => TRUE);
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    ALTER TABLE employees_copy ADD CONSTRAINT unique_emps UNIQUE (employee_id);
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    ALTER INDEX emp_id_idx REBUILD;
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    ALTER TABLE employees_copy DROP CONSTRAINT unique_emps;
     
    ALTER TABLE employees_copy ADD CONSTRAINT unique_emps UNIQUE (employee_id)
    USING INDEX emp_id_idx;
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    ALTER TABLE employees_copy DROP CONSTRAINT unique_emps;
    DROP INDEX emp_id_idx;
     
    ALTER TABLE employees_copy ADD CONSTRAINT unique_emps UNIQUE (employee_id);
     
    SELECT * FROM employees_copy WHERE employee_id = 120;
     
    DROP TABLE employees_copy;
