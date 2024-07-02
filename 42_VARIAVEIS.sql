DECLARE @USUARIO VARCHAR(30)
SET @USUARIO = 'ROBERTO CARLOS'

SELECT @USUARIO AS NAME


--------------------------------------------


USE ContosoRetailDW

DECLARE @PROD INT
SET @PROD = 782

SELECT TOP 100 * FROM FactOnlineSales
WHERE ProductKey = @PROD