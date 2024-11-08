SELECT cod_depto, COUNT(*) AS quantidade_empregados
FROM Tab_Empregado
GROUP BY cod_depto;

SELECT nome_depen, data_nasc_depen
FROM Tab_Dependente
WHERE cod_emp = 10;

SELECT e.cod_emp, e.nome_emp, e.tel_emp
FROM Tab_Empregado e
JOIN Tab_Depto_Local dl ON e.cod_depto = dl.cod_depto
WHERE dl.nome_local = 'Rio de Janeiro';