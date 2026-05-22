USE ScuolaDb;
GO 


-- Restituisce la lista delle tabelle 
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'

/*
	Operatori di confronto

	Servono per confrontare valori:
		= → uguale
		!= o <> → diverso
		> → maggiore
		< → minore
		>= → maggiore o uguale
		<= → minore o uguale
*/


select * from Studenti


-- Operatori logici 
-- AND → tutte le condizioni devono essere vere
-- OR → almeno una vera
-- NOT → nega la condizione
-- IS NULL

SELECT 
	Nome + ' ' + Cognome AS 'Nome completo',
	CodiceFiscale,
	Telefono
FROM Studenti
WHERE DataNascita IS NULL AND Nome = 'Mario'




SELECT 
	Nome + ' ' + Cognome AS 'Nome completo',
	CodiceFiscale,
	Telefono,
	DataNascita
FROM Studenti
WHERE DataNascita >= '1985' AND DataNascita <= '2000'
ORDER BY DataNascita ASC


SELECT 
	Nome + ' ' + Cognome AS 'Nome completo',
	CodiceFiscale,
	Telefono
FROM Studenti
WHERE Nome IN ('Mario', 'Luca', 'Giulia','Chiara')


SELECT 
	Nome + ' ' + Cognome AS 'Nome completo',
	CodiceFiscale,
	Telefono
FROM Studenti
WHERE StudenteId IN (10, 20, 8 ,7, 1)
ORDER BY Nome ASC

SELECT DISTINCT
	StudenteId,
	Nome + ' ' + Cognome AS 'Nome completo'
FROM Studenti;



-- BETWEEN
SELECT 
	* 
FROM Corsi 
WHERE Crediti BETWEEN 10 AND 50
ORDER BY Crediti ASC;

-- LIKE 
-- M% 
-- %O 
-- %A%
-- _ 
SELECT 
	Nome + ' ' + Cognome AS 'Nome completo',
	CodiceFiscale,
	Telefono
FROM Studenti
WHERE Nome LIKE 'M%' or Nome LIKE '%a'

