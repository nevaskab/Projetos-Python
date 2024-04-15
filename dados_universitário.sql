

CREATE DATABASE dados_Universidade;
GO
USE dados_Universidade;


CREATE TABLE Alunos (
    Cod_mat    INT     IDENTITY    PRIMARY KEY,
    Nome       VARCHAR(80)     NOT NULL,
    Endereço   VARCHAR(100)    NOT NULL,
    Cidade     VARCHAR(30)     NOT NULL);

CREATE TABLE Disciplinas (
    Cod_disc       CHAR(3)     IDENTITY    PRIMARY KEY,
    Nome_disc      VARCHAR(40) NOT NULL,
    Carga_Horária  INT         NOT NULL);

CREATE TABLE Professores (
    Cod_prof      CHAR(6)         IDENTITY    PRIMARY KEY
    Nome          VARCHAR(80)     NOT NULL,
    Endereço      VARCHAR(100)    NOT NULL,
    Cidade        VARCHAR(30)     NOT NULL);

CREATE TABLE Turma (
    Cod_disc    CHAR(3)     REFERENCES Disciplinas(Cod_disc)    NOT NULL,
    Cod_turma   CHAR(1)     IDENTITY    PRIMARY KEY,
    Cod_prof    CHAR(6)     REFERENCES Professores(Cod_prof)    NOT NULL,
    Ano         CHAR(4)     NOT NULL,
    Horário     CHAR(8)     NOT NULL);

CREATE TABLE Histórico (
    Cod_mat     INT         REFERENCES Alunos(Cod_mat)      NOT NULL,
    Cod_disc    CHAR(3)     REFERENCES Turma(Cod_turma)     NOT NULL,
    Cod_turma   CHAR(1)     REFERENCES Turma(Cod_turma)     NOT NULL,
    Cod_prof    CHAR(6)     REFERENCES Turma(Cod_turma)     NOT NULL,
    Ano         CHAR(4)     REFERENCES Turma(Cod_turma)     NOT NULL,
    Frequência  CHAR(4)     NOT NULL,
    Nota        CHAR(5)     NOT NULL);

INSERT INTO Alunos (Cod_mat, Nome, Endereço, Cidade)
            VALUES (2015010101, José de Alencar, Rua das Almas, Natal),
            (2015010102, João José, Avenida Ruy Carneiro, João Pessoa),
            (2015010103, Maria Joaquina, Rua Carrossel, Recife),
            (2015010104, Maria das Dores, Rua das Ladeiras, Fortaleza),
            (2015010105, Josué Claudino dos Santos, Centro, Natal),
            (2015010106, Josuélisson Claudino dos Santos, centro, Natal);

INSERT INTO Disciplinas (Cod_disc, Nome_disc, Carga_Horária)
            VALUES (BD, Banco de Dados, 100),
            (POO, Programação com Acesso a Banco de Dados, 100),
            (WEB, Autoria Web, 50),
            (ENG, Engenharia de Software, 80);

INSERT INTO Professores (Cod_prof, Nome, Endereço, Cidade)
            VALUES (212131, Nickerson Ferreira, Rua Manaíra, João Pessoa),
            (122135, Adorilson Bezerra, Avenida Salgado Filho, Natal),
            (192011, Diego Oliveira, Avenida Roberto Freire, Natal);

INSERT INTO Turma (Cod_disc, Cod_turma, Cod_prof, Ano, Horário)
            VALUES (BD, 1, 212131, 2015, 11h-12h),
            (BD, 2, 212131, 2015, 13h-14h),
            (POO, 1, 192011, 2015, 08h-09h),
            (WEB, 1, 190211, 2015, 07h-08h),
            (ENG, 1, 122135, 2015, 10h-11h);


