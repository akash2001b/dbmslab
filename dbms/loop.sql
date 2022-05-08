declare
i integer;
begin 
i:=1;
 loop
 dbms_output.put_line(i);
 i:=i+1;
 exit when i>10;
 end loop;
 end;





 declare
i integer;
id integer;
name varchar(20);
begin 
i:=1;
 while i<=3 loop
    select eid,name into id,name from emp where eid=i;
    dbms_output.put_line(' id is  '||id||' '||name||' ');
    i:=i+1;
 end loop;
end;


-- for
for i in 1..10 loop
        ......
    end loop;