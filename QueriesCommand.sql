SELECT * FROM dba_tablespaces;
SELECT * FROM dba_data_files;

--
Select * from DATABASE_PROPERTIES WHERE PROPERTY_NAME LIKE '%Temp%';


CREATE TEMPORARY TABLESPACE TEMP1 TEMPFILE 'temp1.dbf' size 100m;

select * from v$controlfile;


--Show parameter undo



CREATE TABLE TRANSACCIONES
( DATOS VARCHAR(100));

insert into TRANSACCIONES values('DUvan');

--
Select * from V$transaction;

Select * from V$UNDOSTAT;


Select * from v$LOG;
Select * from v$LOGFILE;


show parameter recovery;

Select log_mode from v$database;



show parameter dispatcher;
show parameter shared;
Select * from v$DISPATCHER;
Select * from v$shared_server;



Select * From Dual;
Select * from dba_users;

--Quuotas de Usuarios
Select * from DBA_TS_QUOTAS;
ALTER USER soe quota UNLIMITED ON SOETBS;

ALTER USER soe quota 5m ON SOETBS;
