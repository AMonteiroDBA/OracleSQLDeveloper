    create index emp_date_temp_idx on employees (hire_date) compute statistics;
     
    select employee_id, first_name, last_name
    from employees where trunc(hire_date,'YEAR') = '01-JAN-2002';
     
    select employee_id, first_name, last_name
    from employees where hire_date between '01-JAN-2002' and '31-DEC-2002';
     
    drop index emp_date_temp_idx;
     
    select prod_id,prod_category,prod_subcategory from products
    where substr(prod_subcategory,1,2) = 'Po';
     
    select prod_id,prod_category,prod_subcategory from products
    where prod_subcategory like 'Po%';
