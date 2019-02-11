--- PROCEDURES ---

--Procura medico por ID e retorna o nome e o CRM
CREATE PROCEDURE ProcurarMedicoPorID @ID INT
AS
BEGIN
SELECT MED.NOME,MED.CRM FROM VerMedicos AS MED WHERE ID = @ID;
END

-- Retorna todas as informações do Medico
CREATE PROCEDURE VerTudoMedico @ID INT
AS
BEGIN
SELECT * FROM VerMedicos WHERE ID = @ID;
END

-- Retorna o nome e o email do medico
CREATE PROCEDURE ProcurarUsuarioMedico @ID INT
AS
BEGIN
SELECT MED.NOME,MED.EMAIL VerMedicos FROM Medico AS MED;
END

/*Procura paciente*/

CREATE PROCEDURE ProcurarPacientePorID @ID INT
AS
BEGIN
SELECT * FROM VerPacientes WHERE ID = @ID;
END

CREATE PROCEDURE ProcurarPacientePorCPF @CPF CHAR(10) 
AS
BEGIN
SELECT * FROM VerPacientes WHERE CPF = @CPF;
END

CREATE PROCEDURE ProcuraUsuarioPaciente @ID INT
BEGIN
SELECT PAC.NOME,PAC.EMAIL FROM VerPacientes AS PAC;
END

