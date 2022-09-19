    select * from sales;
    select * from sales where amount_sold > 1770;
    select * from employees where employee_id > 100;
     
    explain plan for
    select * from employees e, departments d
    where e.employee_id = d.manager_id;
    select * from table (dbms_xplan.display());
     
    explain plan for
    select * from employees e, departments d
    where e.department_id = d.department_id;
    select * from table (dbms_xplan.display());
