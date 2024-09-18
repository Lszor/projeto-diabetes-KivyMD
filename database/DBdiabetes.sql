CREATE DATABASE BDdiabetes 
GO 

USE BDdiabetes

CREATE TABLE tbpaciente(
	ID_PC INT,
	NOME_PC VARCHAR(50),
	IDADE INT,
	PESO FLOAT,
	ALTURA FLOAT,
	SEXO VARCHAR(2),
	NAFT INT,
	controle_dt_ID_DT INT
)
GO

CREATE TABLE tbmedicamentos(
	ID_MED INT,
	medicamento VARCHAR(45),
	dose_med VARCHAR(45),
	paciente_ID_PC INT
)
GO

CREATE TABLE tbcontrole_dt(
	ID_DT INT,
	GLICOSE FLOAT,
	GORD_FIG FLOAT,
	MDATA DATE,
	HORA TIMESTAMP,
	ID_PC VARCHAR(45)
)
GO

INSERT INTO `tbcontrole_dt`(`ID_DT`, `GLICOSE`, `GORD_FIG`, `MDATA`, `ID_PC`) VALUES ('1','80','50','2030-02-02','1');
INSERT INTO `tbmedicamentos`(`ID_MED`, `medicamento`, `dose_med`, `paciente_ID_PC`) VALUES ('1','dipirona','20','1')
INSERT INTO `tbpaciente`(`ID_PC`, `NOME_PC`, `IDADE`, `PESO`, `ALTURA`, `SEXO`, `NAFT`, `controle_dt_ID_DT`) VALUES ('1','Roberto Carlos','998','70','1.72','M','4','1')
