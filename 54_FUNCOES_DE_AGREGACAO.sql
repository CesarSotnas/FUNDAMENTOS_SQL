USE BikeStores;

SELECT 
	P.CategoryID,
	COUNT(*) AS TotalProdutos 
FROM Production.Product P
GROUP BY P.CategoryID

SELECT 
	P.CategoryID,
	P.BrandID,
	COUNT(*) AS TotalProdutos 
FROM Production.Product P
GROUP BY P.BrandID, P.CategoryID; 

-----------------------------------------------

WITH TOTAL_POR_CATEGORIA AS 
(
	SELECT 
		P.CategoryID,
		COUNT(*) AS TotalProdutos 
	FROM Production.Product P
	GROUP BY P.CategoryID
)

SELECT 
	P.CategoryID,
	P.BrandID,
	COUNT(*) AS TotalProdutos,
	TC.TotalProdutos,
	COUNT(*) * 100.0/TC.TotalProdutos AS 'PORCENTAGEM'
FROM Production.Product P
INNER JOIN TOTAL_POR_CATEGORIA AS TC ON TC.CategoryID = P.CategoryID
GROUP BY P.CategoryID, P.BrandID, TC.TotalProdutos; 