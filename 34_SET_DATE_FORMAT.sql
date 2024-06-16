USE ContosoRetailDW

-- 1 SET DATEFORMAT
/* 
	MDY: M�s, dia e ano (Formato padr�o americano)
	DMY: Dia, m�s e ano
	YMD: Ano, m�s e dia
	MYD: M�s, ano e dia
	DYM: Dia, ano e m�s
*/

SET DATEFORMAT YMD

SELECT DISTINCT
	S.DateKey
FROM FactOnlineSales AS S
WHERE S.DateKey BETWEEN '2007-12-01' AND '2007-12-31'
