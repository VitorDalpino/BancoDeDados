declare
   v_numero number;
begin
--   set serveroutput on
   v_numero := 10;
   
   if v_numero = 10 then
     v_numero := 15;
   end if;  
   
   for i in 1 .. v_numero
    loop
      dbms_output.put_line(i);    
    end loop;  
end;