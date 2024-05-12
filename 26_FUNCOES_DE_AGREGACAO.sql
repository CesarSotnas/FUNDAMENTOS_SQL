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

-- SELECT COM M�XIMO
SELECT TOP 100
	MAX(SalesAmount) AS [M�ximo]
FROM FactSales

-- SELECT COM M�NIMO
SELECT TOP 100
	MIN(SalesAmount) AS 'M�nimo'
FROM FactSales

-- SELECT COM M�DIA
SELECT TOP 100
	AVG(SalesAmount) AS 'M�dia de vendas'
FROM FactSales

-- M�DIA V2
SELECT TOP 100
	SUM(SalesAmount) / COUNT(SalesAmount) AS [M�dia_V2]
FROM FactSales
