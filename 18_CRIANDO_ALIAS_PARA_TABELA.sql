USE ContosoRetailDW

SELECT TOP 100
	S.SalesKey,
	S.DateKey,
	C.ChannelKey,
	S.channelKey,
	C.ChannelName,
	C.* -- Seleciona todas as colunas da segunda tabela
FROM FactSales AS S
INNER JOIN DimChannel C ON C.ChannelKey = S.channelKey