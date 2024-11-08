CREATE OR REPLACE PROCEDURE dobrar(  p_N1 IN out NUMBER
                                   , p_n2 IN out NUMBER
                                   ) IS
BEGIN
  p_n1 := p_n1 * 2;
  p_n2 := p_n2 * 2;
END;
/