USE ContosoRetailDW

SELECT
	EmailAddress, 
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS [Quantidade Carros],
	Education

FROM DimCustomer

WHERE 
	Education IN ('Bachelors', 'Graduate Degree')
	AND NumberChildrenAtHome >= 2
	AND NOT MaritalStatus = 'M' -- Tamb�m � poss�vel usar '<>'
	AND TotalChildren IN (3, 4)