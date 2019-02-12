/*******************
***INSERT Iniciais **
********************/
/* 
 Importe os valores do arquivo Modelo_de_dados
*/
-- Tipos de usuario padrão
INSERT INTO Tipo_Usuario VALUES('Administrador'),('Medico'),('Paciente');

-- Administrador padrão
INSERT INTO Usuario(EMAIL,SENHA,ID_TIPO_USUARIO) VALUES('Administrador','123456778',1);