    select * from sales where prod_id = 116 and cust_id = 100090;
    select * from sales where rowid = 'your_row_id';
    create index prod_cust_ix on sales (prod_id,cust_id);
    select prod_id,cust_id from sales where prod_id = 116;
    drop index prod_cust_ix;
