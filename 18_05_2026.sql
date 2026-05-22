-- Creazione del Database in sql server
CREATE DATABASE ScuolaDb;
GO

-- Come usare il database 
USE ScuolaDb;
GO

/*
	Tipi Data in Sql Server
	INT => INTERO (1 A 1000000)
	NVARCHAR(MAX, 1000) => TESTO = 64
	CHAR => 'A' 'B' (16) 'DEFAULT'
	VARCHAR(,700) = 32
	DECIMAL = 1.0 
*/


/*
	CREAZIONE DELLA TABELLA Studenti
	CREATE TABLE "NOME DELLA TABELLA"(
		COLONNE(ID ) TIPO(VALORE)
		..
		--
		--
		-.-
	)

*/



/*
	Select restituisce il record di tutte le colonne della tabella 
	SELECT 
		*
	FROM tabella (Studenti)
*/

SELECT 
		*
FROM Studenti;

/*
	Inserimento dei dati
	INSERT INTO 
		Tabella(Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
	VALUES ('Anna', 'Maria', 'a.maria@gmai.com', 'AM87TG859621434', '1985/05/12', '+39325789410')
*/

INSERT INTO 
		Studenti(Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
VALUES ('Marco', 'Di Moro', 'marco.dimoro@gmail.com', 'DMRMRC87T12H501Z', '1987/05/12', '+393478945612'),
('Stefania', 'Bianca', 'stefania.bianca@gmail.com', 'BNCSTF90A41F205X', '1990/01/25', '+393478945613'),
('Luca', 'Rossi', 'luca.rossi@gmail.com', 'RSSLCU95C15F839K', '1995/03/15', '+393478945614'),
('Anna', 'Verdi', 'anna.verdi@gmail.com', 'VRDNNA92D55H501T', '1992/04/15', '+393478945615'),
('Giulia', 'Ferrari', 'giulia.ferrari@gmail.com', 'FRRGLI98L22F205A', '1998/07/22', '+393478945616');

