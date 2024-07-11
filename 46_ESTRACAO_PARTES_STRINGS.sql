
SELECT 
	'SQL é mais legal que Power BI',
	SUBSTRING('SQL é mais legal que Power BI', 1, 3) AS SUB_1, -- STRING INICIAL, INICIO DA BUSCA, NÚMERO DE POSIÇÕES
	SUBSTRING('SQL é mais legal que Power BI', 22, 9) AS SUB_2,
	RIGHT('SQL é mais legal que Power BI', 9) AS 'RIGHT', -- STRING INICIAL, NÚMERO DE POSIÇÕES COMEÇANDO DA DIREITA
	LEFT('SQL é mais legal que Power BI', 10) AS 'LEFT', -- STING INICIAL, NÚMERO DE POSIÇÕES COMEÇANDO DA ESQUERDA
	LEFT(RIGHT('SQL é mais legal que Power BI', 8), 5) AS 'LEFT_RIGHT', -- BUSCA PRIMEIRO DA DIREITA PARA ESQUERDA E DEPOIS COM O RESULTADO BUSCA DA ESQUERDA PARA DIREITA
	CHARINDEX('mais' , 'SQL é mais legal que Power BI') AS 'CHARINDEX', -- VALOR A SER BUSCADO, STRING QUE VAI BUSCAR O VALOR
	LEN('SQL é mais legal que Power BI') AS TAMANHO,
	RIGHT('SQL é mais legal que Power BI', LEN('SQL é mais legal que Power BI') - CHARINDEX('mais', 'SQL é mais legal que Power BI') + 1)
