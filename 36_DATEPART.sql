USE ContosoRetailDW

SELECT TOP 100
	S.DateKey,
	DATEPART(YEAR, S.DateKey) AS ANO,
	DATEPART(MONTH, S.DateKey) AS MES,
	DATEPART(DAY, S.DateKey) AS DIA,
	DATEPART(DAYOFYEAR , S.DateKey) AS DIADOANO,
	DATEPART(WEEKDAY, S.DateKey) AS DIADASEMANA
FROM FactOnlineSales AS S
ORDER BY S.DateKey DESC

SELECT DATEPART(WEEKDAY, GETDATE()) AS DIADASEMANA

SELECT TOP 100 *
FROM FactOnlineSales
WHERE 
	DATEPART(DAYOFYEAR, DateKey) = 365 AND
	DATEPART(MONTH, DateKey) = 12 AND
	DATEPART(YEAR, DateKey) = 2009