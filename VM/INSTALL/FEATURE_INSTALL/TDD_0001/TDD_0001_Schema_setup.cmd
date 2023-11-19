REM all files to be installed have to be in directory deploy\<server>\feature_install

@echo off
set server=192.168.7.1
set instanz=orcl

set feature_install_dir=D:\deploy\Oracle_Developer_VM\feature_install

REM install in schema seymi
set user=seymi

sqlplus %user%@%server%/%instanz% @%feature_install_dir%\tdd_0001\TDD_0001_master_install.sql
rem pwd from commandline (std pwd)
disconnect

rem drop table test;
rem @%feature_install_dir%\create_table_test.sql

rem sqlplus seymi/<pwd>@192.168.7.1/orcl @D:\deploy\Oracle_Developer_VM\feature_install\cleanup.sql
rem sqlplus seymi/<pwd>@192.168.7.1/orcl @D:\deploy\Oracle_Developer_VM\feature_install\create_table_test.sql
rem sqlplus seymi/<pwd>@192.168.7.1/orcl @create_table_test.sql

echo on
