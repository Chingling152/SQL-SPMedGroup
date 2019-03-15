/**************************************************
**  Esses metodos são usados para facilitar a    **
**  conexão do programador com o banco de dados  **
**  (pois evita faze-lo decorar comandos)        **
***************************************************/

--- Busca um usuario pelo ID ---
CREATE PROCEDURE BuscarUsuario @ID INT
AS
BEGIN
SELECT * FROM VerUsuarios WHERE ID = @ID;
END
GO

--- Busca um Paciente pelo ID ---
CREATE PROCEDURE BuscarPaciente @ID INT
AS
BEGIN
SELECT * FROM VerPacientes WHERE PACIENTE = @ID;
END
GO

--- Busca um Medico pelo ID---
CREATE PROCEDURE BuscarPaciente @ID INT
AS
BEGIN
SELECT * FROM VerMedicos WHERE MEDICO = @ID;
END
GO

--- Busca uma Clinica pelo ID---
CREATE PROCEDURE BuscarClinica @ID INT
AS
BEGIN
SELECT * FROM Clinica WHERE ID = @ID;
END
GO

--- Busca uma Consulta Pelo ID Da Clinica ---
CREATE PROCEDURE BuscarConsulta @ID INT
AS
BEGIN
SELECT * FROM VerConsulta WHERE ID = @ID;
END
GO

--- Busca uma Consulta Pelo ID Do Paciente ---

--- Busca uma Consulta Pelo ID Do Medico ---