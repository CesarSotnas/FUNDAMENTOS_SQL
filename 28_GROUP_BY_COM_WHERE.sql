USE ContosoRetailDW

SELECT
	S.channelKey, S.PromotionKey,
	SUM(S.SalesAmount) AS 'SOMA', 
	AVG(S.SalesAmount) AS 'M�DIA',
	MIN(S.SalesAmount) AS 'M�NIMO',
	MAX(S.SalesAmount) AS 'M�XIMO',
	COUNT(S.SalesAmount) AS 'CONTAGEM'
FROM FactSales AS S
WHERE 
	S.channelKey IN (1,2) AND -- Filtra o Channel Key com 1 e 2
	S.PromotionKey BETWEEN 1 AND 5 -- Filtra o Promotion Key entre 1 e 5
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey