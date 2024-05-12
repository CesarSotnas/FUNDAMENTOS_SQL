USE ContosoRetailDW

SELECT TOP 100
	S.SalesKey,
	S.SalesAmount,
	DS.StoreKey,
	StoreName,
	S.UnitPrice,
	DG.ContinentName
FROM FactSales AS S
INNER JOIN DimStore AS DS ON S.StoreKey = DS.StoreKey
INNER JOIN DimGeography AS DG ON DS.GeographyKey = DG.GeographyKey