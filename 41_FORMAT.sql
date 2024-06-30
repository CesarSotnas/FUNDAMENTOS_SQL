
USE ContosoRetailDW

SELECT 
	GETDATE(),
	FORMAT(GETDATE(), 'hh:mm'), -- Hora e minutos
	FORMAT(GETDATE(), 'yyyy HH:mm'), -- Ano, hora e minutos
	FORMAT(GETDATE(), 'yyyy MM hh:mm'), -- Ano, mês, hora e minutos
	FORMAT(GETDATE(), 'yyyy/MM/dd/hh:mm:ss'), -- Ano, mês, dia, hora, minutos e segundos
	FORMAT(GETDATE(), 'yyyy-MM')