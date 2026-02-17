/* =====================================================
   Procedimientos almacenados - Version 2
   ===================================================== */

-- Insertar medicos
CREATE OR ALTER PROCEDURE sp_InsertMedico
    @Cedula NVARCHAR(20),
    @Nombre NVARCHAR(100),
    @Apellidos NVARCHAR(150),
    @Email NVARCHAR(150) = NULL,
    @Telefono NVARCHAR(50) = NULL,
    @CodigoMedico NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM Medico WHERE Cedula=@Cedula)
    BEGIN
        INSERT INTO Medico (Cedula,Nombre,Apellidos,Email,Telefono,CodigoMedico)
        VALUES (@Cedula,@Nombre,@Apellidos,@Email,@Telefono,@CodigoMedico);
    END
END;
GO

--ESPECIALIDADES



CREATE OR ALTER PROCEDURE sp_InsertEspecialidad
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM Especialidad WHERE Nombre=@Nombre)
        INSERT INTO Especialidad (Nombre) VALUES (@Nombre);
END;
GO




-- Insertar servicio
CREATE OR ALTER PROCEDURE sp_InsertServicio
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM Servicio WHERE Nombre=@Nombre)
        INSERT INTO Servicio (Nombre) VALUES (@Nombre);
END;
GO



-- Insertar roles
CREATE OR ALTER PROCEDURE sp_InsertRol
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM Rol WHERE Nombre=@Nombre)
        INSERT INTO Rol (Nombre) VALUES (@Nombre);
END;
GO

--select * from Rol




-- Insertar el tipo de turno
CREATE OR ALTER PROCEDURE sp_InsertTurnoTipo
    @Codigo NVARCHAR(10),
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM TurnoTipo WHERE Codigo=@Codigo)
        INSERT INTO TurnoTipo (Codigo,Nombre) VALUES (@Codigo,@Nombre);
END;
GO



-- Asignar medidicos a la especialidad
CREATE OR ALTER PROCEDURE sp_AsignarMedicoEspecialidad
    @Cedula NVARCHAR(20),
    @Especialidad NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @IdMedico INT = (SELECT IdMedico FROM Medico WHERE Cedula=@Cedula);
    DECLARE @IdEspecialidad INT = (SELECT IdEspecialidad FROM Especialidad WHERE Nombre=@Especialidad);

    IF @IdMedico IS NOT NULL AND @IdEspecialidad IS NOT NULL
    BEGIN
        IF NOT EXISTS (
            SELECT 1 FROM MedicoEspecialidad 
            WHERE IdMedico=@IdMedico AND IdEspecialidad=@IdEspecialidad
        )
            INSERT INTO MedicoEspecialidad (IdMedico,IdEspecialidad)
            VALUES (@IdMedico,@IdEspecialidad);
    END
END;
GO




-- Registrar las vacaciones
CREATE OR ALTER PROCEDURE sp_InsertVacacion
    @Cedula NVARCHAR(20),
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @IdMedico INT = (SELECT IdMedico FROM Medico WHERE Cedula=@Cedula);
    IF @IdMedico IS NOT NULL
        INSERT INTO Vacaciones (IdMedico,FechaInicio,FechaFin)
        VALUES (@IdMedico,@FechaInicio,@FechaFin);
END;
GO






-- Registrar las guardas
CREATE OR ALTER PROCEDURE sp_InsertGuardia
    @Fecha DATE,
    @Servicio NVARCHAR(100),
    @Observaciones NVARCHAR(200) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @IdServicio INT = (SELECT IdServicio FROM Servicio WHERE Nombre=@Servicio);
    IF @IdServicio IS NOT NULL
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM Guardia WHERE Fecha=@Fecha AND IdServicio=@IdServicio)
            INSERT INTO Guardia (Fecha,IdServicio,Observaciones)
            VALUES (@Fecha,@IdServicio,@Observaciones);
    END
END;
GO




-- Aqui le podemos asignar una guardia a un médico del directorio
CREATE OR ALTER PROCEDURE sp_AsignarGuardia
    @Fecha DATE,
    @Servicio NVARCHAR(100),
    @Cedula NVARCHAR(20),
    @TurnoCodigo NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @IdGuardia INT = (
        SELECT IdGuardia FROM Guardia g
        INNER JOIN Servicio s ON g.IdServicio=s.IdServicio
        WHERE g.Fecha=@Fecha AND s.Nombre=@Servicio
    );
    DECLARE @IdMedico INT = (SELECT IdMedico FROM Medico WHERE Cedula=@Cedula);
    DECLARE @IdTurnoTipo INT = (SELECT IdTurnoTipo FROM TurnoTipo WHERE Codigo=@TurnoCodigo);

    IF @IdGuardia IS NOT NULL AND @IdMedico IS NOT NULL AND @IdTurnoTipo IS NOT NULL
    BEGIN
        IF NOT EXISTS (
            SELECT 1 FROM GuardiaAsignacion 
            WHERE IdGuardia=@IdGuardia AND IdMedico=@IdMedico AND IdTurnoTipo=@IdTurnoTipo
        )
            INSERT INTO GuardiaAsignacion (IdGuardia,IdMedico,IdTurnoTipo)
            VALUES (@IdGuardia,@IdMedico,@IdTurnoTipo);
    END
END;
GO





-- Esta parter es para los registros de asignaciones diarias
CREATE OR ALTER PROCEDURE sp_InsertAsignacionTrabajo
    @Fecha DATE,
    @Servicio NVARCHAR(100),
    @Cedula NVARCHAR(20),
    @Observaciones NVARCHAR(200) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @IdServicio INT = (SELECT IdServicio FROM Servicio WHERE Nombre=@Servicio);
    DECLARE @IdMedico INT = (SELECT IdMedico FROM Medico WHERE Cedula=@Cedula);

    IF @IdServicio IS NOT NULL AND @IdMedico IS NOT NULL
        INSERT INTO AsignacionTrabajo (Fecha,IdServicio,IdMedico,Observaciones)
        VALUES (@Fecha,@IdServicio,@IdMedico,@Observaciones);
END;
GO

