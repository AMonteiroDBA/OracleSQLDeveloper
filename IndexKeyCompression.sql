    CREATE TABLE sales_temp AS SELECT * FROM sales;
     
    CREATE INDEX sales_idx ON sales_temp(prod_id,cust_id,time_id,amount_sold);
     
    SELECT BYTES/(1024*1024) mb FROM user_segments WHERE  segment_name = 'SALES_IDX';
     
    SELECT index_name, index_type, leaf_blocks, compression FROM user_indexes
    WHERE index_name = 'SALES_IDX';
     
    SELECT prod_id,cust_id,time_id FROM sales_temp 
    WHERE prod_id = 13; 
     
    ALTER INDEX sales_idx REBUILD COMPRESS 1;
     
    ALTER INDEX sales_idx REBUILD COMPRESS 2;
     
    ALTER INDEX sales_idx REBUILD COMPRESS 3;
     
    ALTER INDEX sales_idx REBUILD COMPRESS;
     
    ALTER INDEX sales_idx REBUILD COMPRESS ADVANCED LOW;
     
    ALTER INDEX sales_idx REBUILD COMPRESS ADVANCED HIGH;
     
    DROP INDEX sales_idx;
    CREATE BITMAP INDEX sales_idx ON sales_temp(prod_id,cust_id,time_id,amount_sold);
     
    DROP INDEX sales_idx;
    CREATE BITMAP INDEX sales_idx ON sales_temp(prod_id,cust_id,time_id,amount_sold) COMPRESS;
     
    DROP INDEX sales_idx;
    CREATE INDEX sales_idx ON sales_temp(prod_id) COMPRESS;
     
    DROP TABLE sales_temp;
