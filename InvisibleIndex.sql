    create table customers_temp as select * from customers;
     
    select * from customers_temp;
     
    create index name_idx on customers_temp(cust_first_name,cust_last_name);
     
    select * from customers_temp where cust_first_name = 'Arnold';
     
    alter index name_idx invisible;
    alter index name_idx visible;
     
    create bitmap index name_bidx on customers_temp(cust_first_name,cust_last_name);
     
    drop table customers_temp;
