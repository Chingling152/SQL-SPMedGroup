/***********************************************
** Insert usados para testar o banco de dados **
************************************************/
-- Medico padrão
INSERT INTO Medico(ID_USUARIO,NOME,CRM,ID_CLINICA,ID_ESPECIALIDADE)
VALUES (2,'Guilherme Danilo','15632SP',2,1);
/* 
Guilherme : Usuario 2 
Trabalha em : Clinica B
Especializado em : Cardiologia
*/

-- Paciente padrão 
INSERT INTO Paciente(ID_USUARIO,NOME,CPF,RG,TELEFONE,DATA_NASCIMENTO)
VALUES (3,'Eduardo Fogaça','39767923306','107953353','8328357942','1993-01-22');
/*
Eduardo : Usuario 3
Idade : 26 Anos
*/

-- Administrador padrão
INSERT INTO Administrador(ID_USUARIO,NOME)
VALUES (1,'Administrador');
