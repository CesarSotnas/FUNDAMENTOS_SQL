
SELECT 
	'SQL � mais legal que Power BI',
	SUBSTRING('SQL � mais legal que Power BI', 1, 3) AS SUB_1, -- STRING INICIAL, INICIO DA BUSCA, N�MERO DE POSI��ES
	SUBSTRING('SQL � mais legal que Power BI', 22, 9) AS SUB_2,
	RIGHT('SQL � mais legal que Power BI', 9) AS 'RIGHT', -- STRING INICIAL, N�MERO DE POSI��ES COME�ANDO DA DIREITA
	LEFT('SQL � mais legal que Power BI', 10) AS 'LEFT', -- STING INICIAL, N�MERO DE POSI��ES COME�ANDO DA ESQUERDA
	LEFT(RIGHT('SQL � mais legal que Power BI', 8), 5) AS 'LEFT_RIGHT', -- BUSCA PRIMEIRO DA DIREITA PARA ESQUERDA E DEPOIS COM O RESULTADO BUSCA DA ESQUERDA PARA DIREITA
	CHARINDEX('mais' , 'SQL � mais legal que Power BI') AS 'CHARINDEX', -- VALOR A SER BUSCADO, STRING QUE VAI BUSCAR O VALOR
	LEN('SQL � mais legal que Power BI') AS TAMANHO,
	RIGHT('SQL � mais legal que Power BI', LEN('SQL � mais legal que Power BI') - CHARINDEX('mais', 'SQL � mais legal que Power BI') + 1)
