    -- One side bounded searched
    SELECT * FROM SALES WHERE time_id > to_date('01-NOV-01','DD-MON-RR');
     
    -- Bounded by both sides
    SELECT * FROM SALES WHERE time_id between to_date('01-NOV-00','DD-MON-RR') and to_date('05-NOV-00','DD-MON-RR'); 
     
    -- B-Tree index range scan
    SELECT * FROM employees where employee_id > 190;
     
    -- Index range scan on Non-Unique Index
    SELECT * FROM employees where department_id > 80;
     
    -- Order by with the indexed column -  sort is processed
    SELECT * FROM employees where employee_id > 190 order by email;
     
    -- Order by with the indexed column - no sort is processed
    SELECT * FROM employees where employee_id > 190 order by employee_id;
     
    -- Index range scan descending
    SELECT * FROM employees where department_id > 80 order by department_id desc;
     
    -- Index range scan with wildcard
    SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE 'Accessories%';
    SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE '%Accessories';
    SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE '%Accessories%';
