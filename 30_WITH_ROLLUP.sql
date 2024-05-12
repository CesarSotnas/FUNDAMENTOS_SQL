USE ContosoRetailDW

SELECT TOP 1000
	G.RegionCountryName,
	ST.StoreName,
	SUM(S.SalesQuantity) AS QTD_TOTAL
FROM FactSales AS S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography G ON G.GeographyKey = ST.GeographyKey
GROUP BY G.RegionCountryName, ST.StoreName 
WITH ROLLUP