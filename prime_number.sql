declare
   
-- declare variable n, i
-- and temp of datatype number
n number;            
i number;           
temp number;       
   
begin
   
-- Here we Assigning 13 into n
n := 13;                
   
-- Assigning 2 to i
i := 2;
  
-- Assigning 1 to temp
temp := 1;
  
-- loop from i = 2 to n/2
  for i in 2..n/2
    loop
        if mod(n, i) = 0
        then
            temp := 0;
            exit;
        end if;
    end loop;
   
    if temp = 1
    then
        dbms_output.put_line('true');
    else
        dbms_output.put_line('false');
    end if;
end;     