USE ContosoRetailDW

SELECT
	S.channelKey, S.PromotionKey,
	SUM(S.SalesAmount) AS 'SOMA', 
	AVG(S.SalesAmount) AS 'MÉDIA',
	MIN(S.SalesAmount) AS 'MÍNIMO',
	MAX(S.SalesAmount) AS 'MÁXIMO',
	COUNT(S.SalesAmount) AS 'CONTAGEM'
FROM FactSales AS S
WHERE 
	S.channelKey IN (1,2) AND -- Filtra o Channel Key com 1 e 2
	S.PromotionKey BETWEEN 1 AND 5 -- Filtra o Promotion Key entre 1 e 5
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey