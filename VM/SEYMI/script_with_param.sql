-- dieses Skript verwendet define variable welche durch den Wert der beim Aufruf dieses Skriptes mit einem parameter ersetzt werden
clear screen;
set verify off;
set time on;
set timing on;

column spool_file new_value spool_file_name noprint;

select 'output_' || to_char(sysdate, 'yyyymmdd_hh24miss') || '.log' spool_file from dual;

select 'spoolfile Name: ^spool_file_name' from dual;


set define '^';
define name = ^1 'Chaim';

spool ^spool_file_name;

Select 'Hallo ^^name' as name from dual;
Select 'Du hattest ^^name als Parameter angegeben' as ausgabe from dual;

spool off;
