    CREATE TABLE customers_temp AS SELECT * FROM customers;
     
    CREATE INDEX cust_city_ix ON customers_temp(cust_city);
    CREATE INDEX cust_name_ix ON customers_temp(cust_first_name,cust_last_name);
     
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos');
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos','Barry','Westminster','Tilburg');
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos') AND cust_first_name = 'Abigail';
    SELECT /*+ index(c cust_name_ix, cust_name_ix)*/* FROM customers_temp C WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos') AND cust_first_name = 'Abigail';
     
    DROP INDEX cust_city_ix;
    DROP INDEX cust_name_ix;
    CREATE BITMAP INDEX cust_city_bix ON customers_temp(cust_city);
    CREATE BITMAP INDEX cust_name_bix ON customers_temp(cust_first_name,cust_last_name);
     
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos');
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos','Barry','Westminster','Tilburg');
    SELECT * FROM customers_temp WHERE cust_city IN ('Aachen','Abingdon','Bolton','Santos') AND cust_first_name = 'Abigail';
     
    DROP TABLE customers_temp;
