USE ContosoRetailDW


--Buscando nome completo
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron Painter'


--Come�a com Aaron
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron%'


--Contem 'Paul' em qualquer parte da string
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%PAUL%'


--Termina com 'allen'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%allen'


--Come�a com 'Michael'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Michael%'


--Come�a com 'Nur__'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Nur__%' --O underline significa qualquer caracter


--Cont�m 'zal'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%zal__' --O underline significa qualquer caracter


--Cont�m 'nev__'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%nev__' --O underline significa qualquer caracter


--Cont�m 'gon e derivados'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%gon[zs]ale[zs]%' --Quando n�o sabemos se cont�m s ou z