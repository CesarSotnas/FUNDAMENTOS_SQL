USE ContosoRetailDW

SELECT TOP 100
	S.DateKey,
	DATENAME(DAY, S.DateKey) AS DIA,
	DATENAME(WEEKDAY, S.DateKey) AS DIA_SEMANA_DATENAME,
	DATEPART(WEEKDAY, S.DateKey) AS DIA_SEMANA_DATEPART,
	DATENAME(MONTH, S.DateKey) AS MES_DATENAME,
	DATEPART(MONTH, S.DateKey) AS MES_DATEPART
FROM FactOnlineSales AS S
WHERE DATENAME(WEEKDAY, S.DateKey) = 'Friday'
ORDER BY S.DateKey DESC