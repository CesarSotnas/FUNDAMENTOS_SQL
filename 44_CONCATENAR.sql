USE ContosoRetailDW

DECLARE @USER VARCHAR(30)
SET @USER = ' Maria Maria '

DECLARE @USER2 VARCHAR(30)
SET @USER2 = ' Jo�o Jo�o '

SELECT @USER + @USER2 AS NAMES

SELECT CONCAT('Cesar Santos', @USER, @USER2)