CREATE OR REPLACE PROCEDURE test ( id in integer, id2 out integer)
is 
BEGIN 
--   dbms_output.put_line(' '||id||' , '||id2||' ' );
  id2:=id+2;
END; 


declare
 value integer;
 begin
    test(4,value);
    dbms_output.put_line(' '||value||' ');
end;






-- next question 

CREATE OR REPLACE PROCEDURE test ( id in emp.eid%type, name2 in emp.name%type, id2 out integer, idname out varchar(30) )
is 
BEGIN 
  select eid , name into id2, idname from emp where eid=id;
  dbms_output.put_line(' statements selected ');
END; 


1.declare
 value integer;
 name varchar(30);
 begin
    test(4,'akash', value, name);
    dbms_output.put_line(' after procedure executed value are: '||value||' '||name||' ');
end;

2.declare
 value integer;
 name varchar(30);
 i integer;
 begin
    i:=1;
    for i in 1..4 loop
        test(i,'akash', value, name);
        dbms_output.put_line(' after procedure executed value are: '||value||' '||name||' ');
    end loop;
end;












