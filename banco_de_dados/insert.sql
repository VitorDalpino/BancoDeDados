INSERT INTO Tab_Sexo (cod_sexo, nome_sexo) VALUES ('M', 'Masculino');
INSERT INTO Tab_Sexo (cod_sexo, nome_sexo) VALUES ('F', 'Feminino');
INSERT INTO Tab_Departamento (cod_depto, nome_depto, data_inicio_depto)
VALUES (seq_departamento.NEXTVAL, 'Tecnologia da Informação',
TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO Tab_Empregado (cod_emp, nome_emp, data_nasc_emp, end_emp,
tel_emp, cod_sexo, cod_depto)
VALUES (seq_empregado.NEXTVAL, ‘Vitor Dalpino', TO_DATE('2023-02-20',
'YYYY-MM-DD'), 'Avenida Brasil, 456', '3621-7844', 'M', 1);
INSERT INTO Tab_Projeto (cod_projeto, nome_projeto, local_projeto, data_inicio,
data_fim, cod_depto)
VALUES (seq_projeto.NEXTVAL, 'Sistema de Gestão', 'Rio de Janeiro',

TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-11-30', 'YYYY-MM-
DD'), 1);

INSERT INTO Tab_Trabalha_Projeto (cod_emp, cod_projeto, horas)
VALUES (1, 1, 35);
INSERT INTO Tab_Depto_Local (local_depto, cod_depto, nome_local)
VALUES (1, 1, 'Rio de Janeiro');
INSERT INTO Tab_Dependente (cod_depen, nome_depen, sexo_depen,
data_nasc_depen, parentesco, cod_emp, cod_sexo)
VALUES (seq_dependente.NEXTVAL, 'Anne Souza', 'F', TO_DATE('2014-11-15',
'YYYY-MM-DD'), 'Esposa', 1, 'F');