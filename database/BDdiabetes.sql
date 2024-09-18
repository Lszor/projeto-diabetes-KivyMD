-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS BDdiabetes;
USE BDdiabetes;

-- Criação da tabela tbpaciente
CREATE TABLE IF NOT EXISTS tbpaciente (
    ID_PC INT,
    NOME_PC VARCHAR(50),
    IDADE INT,
    PESO FLOAT,
    ALTURA FLOAT,
    SEXO VARCHAR(2),
    NAFT INT,
    controle_dt_ID_DT INT,
    PRIMARY KEY (ID_PC)
);

-- Criação da tabela tbmedicamentos
CREATE TABLE IF NOT EXISTS tbmedicamentos (
    ID_MED INT,
    medicamento VARCHAR(45),
    dose_med VARCHAR(45),
    paciente_ID_PC INT,
    PRIMARY KEY (ID_MED),
    FOREIGN KEY (paciente_ID_PC) REFERENCES tbpaciente(ID_PC)
);

-- Criação da tabela tbcontrole_dt
CREATE TABLE IF NOT EXISTS tbcontrole_dt (
    ID_DT INT,
    GLICOSE FLOAT,
    GORD_FIG FLOAT,
    MDATA DATE,
    HORA TIMESTAMP,
    ID_PC INT,
    PRIMARY KEY (ID_DT),
    FOREIGN KEY (ID_PC) REFERENCES tbpaciente(ID_PC)
);
