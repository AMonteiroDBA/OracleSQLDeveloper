    set autotrace traceonly explain;
    select * from sales s, customers c  where s.CUST_ID = c.cust_id and s.cust_id = 987;
    set linesize 200;
    set autotrace traceonly statistics;
    set autotrace traceonly;
    set autotrace on;
    show autotrace;
    Set autotrace off;
    select * from v$mystat;
