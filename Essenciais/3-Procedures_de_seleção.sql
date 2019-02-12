--- PROCEDURES ---
--- Procura ---
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
SELECT MED.NOME,MED.EMAIL,MED.PRIVILEGIOS FROM VerMedicos AS MED WHERE MED.ID = @ID;
END

--Procurar medico por ID e retorna o nome e o CRM
CREATE PROCEDURE ProcurarMedicoPorCRM @CRM INT
AS
BEGIN
SELECT *FROM VerMedicos AS MED WHERE MED.CRM = @CRM;
END

/*Procurar paciente*/

-- Procurar Nome,CPF e RG do paciente no ID selecionado
CREATE PROCEDURE ProcurarPacientePorID @ID INT
AS
BEGIN
SELECT PAC.NOME,PAC.CPF,PAC.RG FROM VerPacientes AS PAC WHERE PAC.ID = @ID;
END

-- Procurar todas as informações do paciente no ID selecionado
CREATE PROCEDURE VerTudoPaciente @ID INT
AS
BEGIN
SELECT * FROM VerPacientes WHERE ID = @ID;
END


-- Procurar nome e email do usuario com o ID selecionado
CREATE PROCEDURE ProcuraUsuarioPaciente @ID INT
AS
BEGIN
SELECT PAC.NOME,PAC.EMAIL,PAC.PRIVILEGIOS FROM VerPacientes AS PAC WHERE PAC.ID = @ID;
END

-- Procurar todas as informações do paciente com o ID selecionado
CREATE PROCEDURE ProcurarPacientePorCPF @CPF CHAR(10) 
AS
BEGIN
SELECT * FROM VerPacientes AS PAC WHERE PAC.CPF = @CPF;
END

/*Procurar clinica*/
-- Retorna todas as informações da clinica
CREATE PROCEDURE ProcurarClinicaPorID @ID INT
AS 
BEGIN
SELECT * FROM ProcurarClinicas WHERE ID = @ID;
END
