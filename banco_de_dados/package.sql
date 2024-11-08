create or replace package PKG_UTIL is

FUNCTION fatorial(p_numero NUMBER) RETURN NUMBER;

end PKG_UTIL;
/




create or replace package body PKG_UTIL is

procedure log(p_nivel number, p_msg varchar2) is
v_nivel varchar2(1000);
begin
  if USER = 'DAONO' then
    for i in 1..p_nivel
      loop
        v_nivel := v_nivel||'  ';
      end loop;
    dbms_output.put_line(v_nivel || p_msg);
  end if;  
end;  

FUNCTION fatorial(p_numero NUMBER) RETURN NUMBER IS
v_resultado NUMBER;
BEGIN
  v_resultado := 1;
  FOR i IN 1 .. p_numero LOOP
    v_resultado := v_resultado * i;
    log(i, v_resultado);    
  END LOOP;  
  RETURN v_resultado ;
END;    

end PKG_UTIL;
/