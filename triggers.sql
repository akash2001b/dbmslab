 create or REPLACE trigger emp_insert
 after insert on emp
 begin  
 dbms_output.put_line('Record inserted');
 end;




{
 before insert or update or delete on emp;

 BEFORE UPDATE OF salary ON EMP;

raise_application_error(23423,'error message');
}




  create or REPLACE trigger emp_update
 BEFORE UPDATE OF salary on emp
 FOR EACH ROW
 begin  
 IF :New.salary < :old.salary then
    dbms_output.put_line('dont update');
    set MESSAGE_TEXT='Error: cannot update';
 end if;
 end;




old values;


 create or REPLACE trigger emp_delete
 BEFORE delete on emp
 FOR EACH ROW
 begin  
  insert into emp_backup
  values( :old.eid, :old.name, :old.dept, :old.salary);
 end;