-- Banco de dados:
USE AdventureWorksDW2022

-- 1 - Quantidade de Clientes distintosTabela: 
-- FactInternetSales

SELECT
	COUNT(DISTINCT CustomerKey)
FROM 
	FactInternetSales

-- 2 - Total de vendas na tabela FactInternetSales 
-- Tabela: FactInternetSales

SELECT 
	SUM(SalesAmount)
FROM 
	FactInternetSales

-- 3 - Média de vendas da tabela FactInternetSales
-- Tabela: FactInternetSales

SELECT
	AVG(SalesAmount) AS Media_Vendas
FROM
	FactInternetSales

-- 4 - Total de vendas que foram carregadas em 2013
-- Tabelas: FactInternetSales e DimDate
-- Dica master: procure o campo ShipDate - não vale pedir ajuda para o professor.

SELECT
	SUM(fac.SalesAmount) AS Total_Vendas_2013
FROM
	FactInternetSales fac
JOIN
	DimDate dim ON dim.DateKey = fac.ShipDateKey
WHERE
	YEAR(fac.ShipDate) = 2013

-- 5 - País que mais vendeu em 2013 
-- Tabelas: FactInternetSales, DimDate, DimSalesTerritory
	
SELECT
	sal.SalesTerritoryCountry,
	SUM(fac.SalesAmount) As Total_Por_Pais
FROM
	FactInternetSales fac
JOIN
	DimDate dim ON dim.DateKey = fac.ShipDateKey
JOIN
	DimSalesTerritory sal ON sal.SalesTerritoryKey = fac.SalesTerritoryKey
WHERE
	YEAR(fac.ShipDate) = 2013
GROUP BY
	sal.SalesTerritoryCountry
ORDER BY
	Total_Por_Pais DESC