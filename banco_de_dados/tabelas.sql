-- CRIAR TABELAS
CREATE TABLE Tab_Sexo (
cod_sexo CHAR(1) PRIMARY KEY,
nome_sexo VARCHAR2(20) NOT NULL
);
CREATE TABLE Tab_Empregado (
cod_emp NUMBER PRIMARY KEY,
nome_emp VARCHAR2(30) NOT NULL,
data_nasc_emp DATE NOT NULL,
end_emp VARCHAR2(200),
tel_emp VARCHAR2(20),
cod_sexo CHAR(1) NOT NULL,
cod_depto NUMBER NOT NULL
);
CREATE TABLE Tab_Trabalha_Projeto (
cod_emp NUMBER NOT NULL,
cod_projeto NUMBER NOT NULL,
horas NUMBER,
PRIMARY KEY (cod_emp, cod_projeto)
);
CREATE TABLE Tab_Projeto (
cod_projeto NUMBER PRIMARY KEY,
nome_projeto VARCHAR2(30) NOT NULL,
local_projeto VARCHAR2(20),
data_inicio DATE,
data_fim DATE,
cod_depto NUMBER NOT NULL
);
CREATE TABLE Tab_Depto_Local (
local_depto NUMBER PRIMARY KEY,
cod_depto NUMBER NOT NULL,
nome_local VARCHAR2(30) NOT NULL
);
CREATE TABLE Tab_Departamento (
cod_depto NUMBER PRIMARY KEY,

nome_depto VARCHAR2(30) NOT NULL,
data_inicio_depto DATE NOT NULL
);

CREATE TABLE Tab_Dependente (
cod_depen NUMBER PRIMARY KEY,
nome_depen VARCHAR2(30) NOT NULL,
sexo_depen CHAR(1) NOT NULL,
data_nasc_depen DATE NOT NULL,
parentesco VARCHAR2(15) NOT NULL,
cod_emp NUMBERNOT NULL,
cod_sexo CHAR(1) NOT NULL
);