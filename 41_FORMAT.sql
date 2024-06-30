
USE ContosoRetailDW

SELECT 
	GETDATE(),
	FORMAT(GETDATE(), 'hh:mm'), -- Hora e minutos
	FORMAT(GETDATE(), 'yyyy HH:mm'), -- Ano, hora e minutos
	FORMAT(GETDATE(), 'yyyy MM hh:mm'), -- Ano, m�s, hora e minutos
	FORMAT(GETDATE(), 'yyyy/MM/dd/hh:mm:ss'), -- Ano, m�s, dia, hora, minutos e segundos
	FORMAT(GETDATE(), 'yyyy-MM')