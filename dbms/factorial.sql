create or replace function fact(num in number)
return number
Is 
  res_fact number:=1;
  z number;
begin
 z:=1;
 dbms_output.put_line(' '||z||' ');
  for i in 1..num loop
    res_fact:=res_fact*i;
  end loop;
  dbms_output.put_line('Factorial of '||num||' = '||res_fact);
  return res_fact;
end;