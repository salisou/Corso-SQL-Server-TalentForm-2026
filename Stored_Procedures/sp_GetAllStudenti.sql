-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetAllStudenti
AS
BEGIN
	SELECT 
        StudenteId,
        --ISNULL(Nome, 'Nome non presente') AS Nome,
        --ISNULL(Cognome, 'Cognome non presente') AS Cognome,
        ISNULL(Nome + ' - ' + Cognome, 'Nome completo non presente') AS 'Nome completo ',
        ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'N/D') AS DataNascita,
        ISNULL(CONVERT(NVARCHAR, Email), 'N/E') AS Email,
        ISNULL(CONVERT(NVARCHAR, Telefono), '0000000000') AS Telefono,
        ISNULL(CONVERT(CHAR(16), CodiceFiscale), 'CF-NULL') AS CodiceFiscale
	FROM Studenti
END
GO



