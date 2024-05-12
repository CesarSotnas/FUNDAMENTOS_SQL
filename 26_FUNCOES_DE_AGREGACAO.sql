USE ContosoRetailDW

-- SELECT COMUM
SELECT TOP 100
	SalesAmount
FROM FactSales

-- SELECT COM SOMA
SELECT TOP 100
	SUM(SalesAmount) AS 'Soma de vendas'
FROM FactSales

-- SELECT COM CONTAGEM
SELECT TOP 100
	COUNT(SalesAmount) AS 'Quantidade de linhas'
FROM FactSales

-- SELECT COM MÁXIMO
SELECT TOP 100
	MAX(SalesAmount) AS [Máximo]
FROM FactSales

-- SELECT COM MÍNIMO
SELECT TOP 100
	MIN(SalesAmount) AS 'Mínimo'
FROM FactSales

-- SELECT COM MÉDIA
SELECT TOP 100
	AVG(SalesAmount) AS 'Média de vendas'
FROM FactSales

-- MÉDIA V2
SELECT TOP 100
	SUM(SalesAmount) / COUNT(SalesAmount) AS [Média_V2]
FROM FactSales
