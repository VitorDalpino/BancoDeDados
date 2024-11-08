CREATE OR REPLACE FUNCTION f_RetirarAcentos(p_Texto IN VARCHAR2, p_Upper IN VARCHAR2 DEFAULT 'N') RETURN VARCHAR2 IS
v_Texto VARCHAR2(4000);
BEGIN
     v_Texto := TRANSLATE(p_Texto,'ÀÁÂÃÄÅÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÇÑÝàáâãäåèéêëìíîïòóôõöùúûüçñýÿ'
                                 ,'AAAAAAEEEEIIIIOOOOOUUUUCNYaaaaaaeeeeiiiiooooouuuucnyy');
                                 
     IF p_Upper = 'S' THEN
       v_Texto := upper(v_Texto);
     END IF;                                  
     RETURN v_Texto;
END;