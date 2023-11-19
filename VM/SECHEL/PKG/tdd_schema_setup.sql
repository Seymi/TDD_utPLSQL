create or replace package tdd_schema_setup as

    --%suite(schema setup)

    --%test(cleanup - remove_tables)
    procedure remove_tables;

end tdd_schema_setup;
/
show errors;

create or replace package body tdd_schema_setup as

    procedure remove_tables is
    begin
        schema_setup.remove_tables;
  
    end;
  
end tdd_schema_setup;
/
show errors;
