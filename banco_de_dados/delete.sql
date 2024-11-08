DELETE FROM Tab_Departamento
WHERE cod_depto NOT IN (SELECT DISTINCT cod_depto FROM Tab_Empregado);