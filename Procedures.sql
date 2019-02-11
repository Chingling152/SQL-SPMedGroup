--- PROCEDURES ---

--Procurar medico por ID e retorna o nome e o CRM
CREATE PROCEDURE ProcurarMedicoPorID @ID INT
AS
BEGIN
SELECT MED.NOME,MED.CRM FROM VerMedicos AS MED WHERE MED.ID = @ID;
END

-- Retorna todas as informações do Medico
CREATE PROCEDURE VerTudoMedico @ID INT
AS
BEGIN
SELECT * FROM VerMedicos AS MED WHERE MED.ID = @ID;
END

-- Retorna o nome e o email do medico
CREATE PROCEDURE ProcurarUsuarioMedico @ID INT
AS
BEGIN
SELECT MED.NOME,MED.EMAIL VerMedicos FROM Medico AS MED WHERE MED.ID = @ID;
END

/*Procurar paciente*/

-- Procurar todas as informações do paciente no ID selecionado
CREATE PROCEDURE ProcurarPacientePorID @ID INT
AS
BEGIN
SELECT * FROM VerPacientes AS PAC WHERE PAC.ID = @ID;
END

-- Procurar todas as informações do paciente com o ID selecionado
CREATE PROCEDURE ProcurarPacientePorCPF @CPF CHAR(10) 
AS
BEGIN
SELECT * FROM VerPacientes AS PAC WHERE PAC.CPF = @CPF;
END

-- Procurar nome e email do usuario com o ID selecionado
CREATE PROCEDURE ProcuraUsuarioPaciente @ID INT
AS
BEGIN
SELECT PAC.NOME,PAC.EMAIL FROM VerPacientes AS PAC WHERE PAC.ID = @ID;
END

/*Procurar clinica*/
-- Retorna todas as informações da clinica
CREATE PROCEDURE ProcurarClinicaPorID @ID INT
AS 
BEGIN
SELECT * FROM ProcurarClinicas WHERE ID = @ID;
END