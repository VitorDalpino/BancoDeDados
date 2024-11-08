-- CONSTRAINTS
ALTER TABLE Tab_Depto_Local add
CONSTRAINT fk_cod_depto FOREIGN KEY (cod_depto) REFERENCES
Tab_Departamento(cod_depto);
ALTER TABLE Tab_Empregado add
CONSTRAINT fk_cod_sexo FOREIGN KEY (cod_sexo) REFERENCES
Tab_Sexo(cod_sexo),
CONSTRAINT fk_cod_depto FOREIGN KEY (cod_depto) REFERENCES
Tab_Departamento(cod_depto);
ALTER TABLE Tab_Dependente add
CONSTRAINT fk_cod_emp FOREIGN KEY (cod_emp) REFERENCES
Tab_Empregado(cod_emp),
CONSTRAINT fk_sexo_depen FOREIGN KEY (cod_sexo) REFERENCES
Tab_Sexo(cod_sexo);
ALTER TABLE Tab_Projeto add
CONSTRAINT fk_cod_depto_projeto FOREIGN KEY (cod_depto) REFERENCES
Tab_Departamento(cod_depto);
ALTER TABLE Tab_Trabalha_Projeto add
CONSTRAINT fk_cod_emp_projeto FOREIGN KEY (cod_emp) REFERENCES
Tab_Empregado(cod_emp),
CONSTRAINT fk_cod_projeto FOREIGN KEY (cod_projeto) REFERENCES
Tab_Projeto(cod_projeto);