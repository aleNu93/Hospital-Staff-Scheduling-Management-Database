/* =====================================================
   Inserts de especialidades y servicios
   ===================================================== */

-- Especialidades
EXEC sp_InsertEspecialidad 'Ginecología';
EXEC sp_InsertEspecialidad 'Obstetricia';

-- Servicios
EXEC sp_InsertServicio 'Hospitalización';
EXEC sp_InsertServicio 'UMMF';
EXEC sp_InsertServicio 'MAFE';
EXEC sp_InsertServicio 'UNESMAFE';
EXEC sp_InsertServicio 'Consultorios';
EXEC sp_InsertServicio 'Labor/Inducción';
EXEC sp_InsertServicio 'Cirugía';
EXEC sp_InsertServicio 'UNINOB';
EXEC sp_InsertServicio 'Posparto';

-- Roles
EXEC sp_InsertRol 'Residente';
EXEC sp_InsertRol 'Especialista';

-- Tipos de Turno
EXEC sp_InsertTurnoTipo 'ORD','Ordinaria';
EXEC sp_InsertTurnoTipo 'EXT','Extraordinaria';
EXEC sp_InsertTurnoTipo 'EXT2','Extraordinaria 2';
EXEC sp_InsertTurnoTipo 'REF','Refuerzo';

-- ROLES

EXEC sp_InsertRol 'Residente';
EXEC sp_InsertRol 'Especialista';
EXEC sp_InsertRol 'Coordinador';
EXEC sp_InsertRol 'Jefe de Servicio';

-- ============================================
-- TIPOS DE TURNO
-- ============================================
EXEC sp_InsertTurnoTipo 'ORD','Ordinaria';
EXEC sp_InsertTurnoTipo 'EXT','Extraordinaria';
EXEC sp_InsertTurnoTipo 'EXT2','Extraordinaria 2';
EXEC sp_InsertTurnoTipo 'REF','Refuerzo';

--1 por 1
select * from Especialidad
select * from MedicoEspecialidad