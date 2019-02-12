/*******************
***INSERT Iniciais **
********************/

-- Especialidade padrão
INSERT INTO Especialidade(NOME) VALUES ('Acupuntura'),('Anestesiologia'),('Angiologia'),('Cardiologia'),('Cirurgia Cardiovascular'),('Cirurgia de mão'),('Cirurgia do aparelho digestivo'),('Cirurgia geral'),('Cirurgia pediátrica'),('Cirurgia plástica'),('Cirurgia torácica'),('Cirurgia vascular'),('Dermatologia'),('Radioterapia'),('Urologia'),('Pediatria'),('Psiquiatria');

-- Tipos de usuario padrão
INSERT INTO Tipo_Usuario VALUES('Administrador'),('Medico'),('Paciente');

-- Status da consulta
INSERT INTO StatusConsulta VALUES('Em espera'),('Confirmado'),('Feita');

-- Administrador padrão
INSERT INTO Usuario(EMAIL,SENHA,ID_TIPO_USUARIO) VALUES('Administrador','123456778',1);

