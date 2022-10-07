alter session set "_ORACLE_SCRIPT"=true;


--Creacion de un rol
CREATE ROLE MI_PROPIO_ROLE;
Select * from DBA_Roles;

--Permios
GRANT SELECT ANY TABLE TO MI_PROPIO_ROLE;
GRANT CREATE TABLE TO MI_PROPIO_ROLE;
--qUITAR PVIVILEGIOS
REVOKE CREATE TABLE FROM MI_PROPIO_ROLE;

--AIGGNAR USUAIRIO
GRANT MI_PROPIO_ROLE to usuario


Select * from SESSION_ROLES;


show parameter PGA;
select * from v$pgastat


Select * from v$pdbs


--Servicios que estan dada de alata en esta sesion 
Select * from v$services;

--Info de la instancia
SeLect * from v$INSTANCE;
sELECT * FROM V$DATABASE;

SeLect * from v$INSTANCE;
sELECT * FROM V$DATABASE;

Show con_name;


Select * from CDB_PDBS


--ENcontrar la FA
show parameter db_recovery;


--PAra ver si estamos en MOdo archieve lo g list
archive log list;

 set serveroutput on;
 DECLARE

    v_text VARCHAR2(100); 
   
BEGIN

    v_text := 'Happy birthday kalin';  --assign
    dbms_output.Put_line(v_text);
 
END; 
select sysdate from dual ;


Select * from v$log;

pwd
Show con_name;

report obsolete;
SELECT * FROM v$tablespace;
SELECT * FROM dba_tablespaces;
SELECT * FROM dba_data_files;
Select * from dba_users;
Select * from dba_segments;
Select * from dba_segments where segment_name = 'SCHEDULER$_FILE_WATCHER';

select * from dba_extents;

--
Select * from DATABASE_PROPERTIES WHERE PROPERTY_NAME LIKE '%Temp%';


CREATE TEMPORARY TABLESPACE TEMP1 TEMPFILE 'temp1.dbf' size 100m;

select * from v$controlfile;
select * from v$logfile;
select * from v$archived_log;
select * from v$datafile;
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
