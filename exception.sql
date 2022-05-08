 declare
i integer;
id integer;
name varchar(20);
begin 
i:=1;
 while i<=10 loop
    select eid,name into id,name from emp where eid=i;
    dbms_output.put_line(' id is  '||id||' '||name||' ');
    i:=i+1;
 end loop;
EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such customer!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
end;