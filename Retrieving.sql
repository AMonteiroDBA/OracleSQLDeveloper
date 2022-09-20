    select max(CUST_STREET_ADDRESS) from customers;
    select max(cust_year_of_birth) from customers;
    select cust_year_of_birth from customers;
    select max(cust_id) from customers;
    select cust_id from customers;
    select cust_id from customers where cust_id < 1000;
    select max(cust_id) from customers where cust_id < 1000;
    select min(cust_id) from customers;
    select min(cust_id), max(cust_id) from customers;
    SELECT MAX(cust_id), MAX(cust_id) FROM customers;
    select * from
     (select min(cust_id) min_cust from customers) min_customer,
     (select max(cust_id) max_cust from customers) max_customer;
