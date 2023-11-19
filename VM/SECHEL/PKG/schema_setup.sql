create or replace package schema_setup as

  procedure remove_tables;

end;
/


create or replace package body schema_setup as

    PROCEDURE remove_tables is
        sql_statement varchar2(4000);
        lvn_records number;
    BEGIN
        sql_statement := 'drop table test';
        execute IMMEDIATE sql_statement;
    END;
  
end;
/
