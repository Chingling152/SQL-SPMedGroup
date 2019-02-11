/***********************************************
** Insert usados para testar o banco de dados **
************************************************/
-- Medico exemplo
INSERT INTO Medico(ID_USUARIO,NOME,CRM,ID_CLINICA,ID_ESPECIALIDADE) VALUES (2,'Guilherme Danilo','15632SP',2,1);
/* 
Guilherme : Usuario 2 
Trabalha em : Clinica B
Especializado em : Cardiologia
*/

-- Paciente exemplo 
INSERT INTO Paciente(ID_USUARIO,NOME,CPF,RG,TELEFONE,DATA_NASCIMENTO) VALUES (3,'Eduardo Fogaça','39767923306','107953353','8328357942','1993-01-22');
/*
Eduardo : Usuario 3
Idade : 26 Anos
*/

-- Clinicas de exemplo
INSERT INTO Clinica(NOME_FANTASIA,ENDERECO,NUMERO,CEP,RAZAO_SOCIAL) VALUES 
('Hospital A','Rua Luiz Borin',478,'13272520','Associação Hospitalar A'),
('Hospital B','Rua Francisco Faria Júnior',304,'12085083','Sociedade beneficente B'),
('Hospital C','Rua José Caetano da Silva Coutinho',693,'14075750','14075750 Hospitalar C');
