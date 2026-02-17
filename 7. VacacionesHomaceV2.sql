/* =====================================================
		Vacaciones durante agosto de 2025
   ===================================================== */

USE Trabajo_Final_Roles_HOMACE_V2;

-- Semana 32 (04–08 ago):
-- Montero 6–8
EXEC sp_InsertVacacion @Cedula=N'111111117', @FechaInicio='2025-08-06', @FechaFin='2025-08-08';
-- Mejía 04–08
EXEC sp_InsertVacacion @Cedula=N'111111125', @FechaInicio='2025-08-04', @FechaFin='2025-08-08';

-- Semana 33 (11–15 ago):
-- Montero 11–15
EXEC sp_InsertVacacion @Cedula=N'111111117', @FechaInicio='2025-08-11', @FechaFin='2025-08-15';

-- Semana 34 (18–22 ago):
-- Montero 18–22
EXEC sp_InsertVacacion @Cedula=N'111111117', @FechaInicio='2025-08-18', @FechaFin='2025-08-22';
-- Nava (Navarrete) 18–22
EXEC sp_InsertVacacion @Cedula=N'111111118', @FechaInicio='2025-08-18', @FechaFin='2025-08-22';

-- Semana 35 (25–29 ago):
-- Villalobos 25–29
EXEC sp_InsertVacacion @Cedula=N'111111121', @FechaInicio='2025-08-25', @FechaFin='2025-08-29';
-- Lopez (López) 25–29
EXEC sp_InsertVacacion @Cedula=N'111111112', @FechaInicio='2025-08-25', @FechaFin='2025-08-29';
-- Bermúdez 25–29
EXEC sp_InsertVacacion @Cedula=N'111111126', @FechaInicio='2025-08-25', @FechaFin='2025-08-29';

GO

--Se ejecuta solo 1 vez, para evitar que se duplique
select * from Vacaciones