USE ContosoRetailDW


--Buscando nome completo
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron Painter'


--Começa com Aaron
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


--Começa com 'Michael'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Michael%'


--Começa com 'Nur__'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Nur__%' --O underline significa qualquer caracter


--Contém 'zal'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%zal__' --O underline significa qualquer caracter


--Contém 'nev__'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%nev__' --O underline significa qualquer caracter


--Contém 'gon e derivados'
SELECT 
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE '%gon[zs]ale[zs]%' --Quando não sabemos se contém s ou z