/*******************
***INSERT padrões **
********************/

-- Va para Inserção.sql , lá tem a maneira correta de adicionar dados

-- Especialidade padrão
INSERT INTO Especialidade(NOME) VALUES ('Cardiologia'),('Oftamologia'),('Radiologia');

-- Tipos de usuario padrão
INSERT INTO Tipo_Usuario VALUES('Administrador'),('Medico'),('Paciente');

-- Status da consulta
INSERT INTO StatusConsulta VALUES('Em espera'),('Confirmado'),('Feita');

-- Administrador padrão
INSERT INTO Administrador(ID_USUARIO,NOME)VALUES (1,'Administrador');