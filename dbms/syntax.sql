

  create table emp (
    eid int not null primary key,
    name varchar(20),
    dept varchar(20) ,
    salary int
);

insert into emp values ( 1, 'Ram', 'HR', 10000);
insert into emp values ( 2, 'Amrit', 'MRKT', 20000);
insert into emp values ( 3, 'Ravi', 'HR', 30000);
insert into emp values ( 4, 'Nitin', 'MRKT', 40000);
insert into emp values ( 5, 'Varun', 'IT', 50000);







SET SERVEROUTPUT ON;
SQL> DECLARE
     var1 INTEGER := 2 ;
     var3 varchar2(20) := 'I Love GeeksForGeeks' ;
     -- taking input for variable a
    --   a number := &a;       
        
    --   -- taking input for variable b
    --   b varchar2(30) := &b;     
  
  BEGIN
    dbms_output.put_line(var);
    dbms_output.put_line(a,b);
  
  END;



-- new question




declare
    record emp%ROWTYPE;

BEGIN
select * into record from emp
where eid>3;
dbms_output.put_line('records are ' ||record );







set serveroutput on;

declare
 id integer;
 name varchar(30);

begin
 
 select salary,dept into id,name from emp where eid=4;
--  if id>3000 then
--     dbms_output.put_line('ok');
-- elseif name = 'MRKT' then
-- dbms_output.put_line('this is not ok');
--  select name into name from emp where eid=3;
-- end if;

dbms_output.put_line(' '||id||' '||name||' ');
end;
/








set serveroutput on;

declare
 id integer;
 name varchar(30);

begin
 
 select salary,dept into id,name from emp where eid=4;
--  if id>3000 then
--     dbms_output.put_line('ok');
-- elseif name = 'MRKT' then
-- dbms_output.put_line('this is not ok');
--  select name into name from emp where eid=3;
-- end if;
if name='MRKT' then
dbms_output.put_line('ok it is');
select dept into name from emp where eid=3;
else
dbms_output.put_line(' not okay');
end if;

dbms_output.put_line(' '||id||' '||name||' ');
end;
/
