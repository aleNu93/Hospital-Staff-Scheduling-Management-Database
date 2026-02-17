/* =====================================================
             Trabajo_Final_Roles_HOMACE - Version 2
   ===================================================== */

-- Crea base de datos
CREATE DATABASE Trabajo_Final_Roles_HOMACE_V2
GO

USE Trabajo_Final_Roles_HOMACE_V2;
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'homace2')
    EXEC('CREATE SCHEMA homace2');
GO

/* ===================================================== 
   A partir de aqui se crean las tablas
  ======================================================*/


-- Catálogos básicos
CREATE TABLE Especialidad (
    IdEspecialidad INT IDENTITY PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Servicio (
    IdServicio INT IDENTITY PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Rol (
    IdRol INT IDENTITY PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE TurnoTipo (
    IdTurnoTipo INT IDENTITY PRIMARY KEY,
    Codigo NVARCHAR(10) NOT NULL UNIQUE,
    Nombre NVARCHAR(100) NOT NULL
);

-- Médicos
CREATE TABLE Medico (
    IdMedico INT IDENTITY PRIMARY KEY,
    Cedula NVARCHAR(20) NOT NULL UNIQUE,
    Nombre NVARCHAR(100) NOT NULL,
    Apellidos NVARCHAR(150) NOT NULL,
    Email NVARCHAR(150) NULL,
    Telefono NVARCHAR(50) NULL,
    CodigoMedico NVARCHAR(50) NULL
);

-- Relaciones
CREATE TABLE ServicioEspecialidad (
    IdServicioEspecialidad INT IDENTITY PRIMARY KEY,
    IdServicio INT NOT NULL FOREIGN KEY REFERENCES Servicio(IdServicio),
    IdEspecialidad INT NOT NULL FOREIGN KEY REFERENCES Especialidad(IdEspecialidad)
);

CREATE TABLE MedicoEspecialidad (
    IdMedicoEspecialidad INT IDENTITY PRIMARY KEY,
    IdMedico INT NOT NULL FOREIGN KEY REFERENCES Medico(IdMedico),
    IdEspecialidad INT NOT NULL FOREIGN KEY REFERENCES Especialidad(IdEspecialidad)
);

CREATE TABLE MedicoRolHist (
    IdMedicoRolHist INT IDENTITY PRIMARY KEY,
    IdMedico INT NOT NULL FOREIGN KEY REFERENCES Medico(IdMedico),
    IdRol INT NOT NULL FOREIGN KEY REFERENCES Rol(IdRol),
    FechaInicio DATE NOT NULL,
    FechaFin DATE NULL
);

-- Vacaciones
CREATE TABLE Vacaciones (
    IdVacacion INT IDENTITY PRIMARY KEY,
    IdMedico INT NOT NULL FOREIGN KEY REFERENCES Medico(IdMedico),
    FechaInicio DATE NOT NULL,
    FechaFin DATE NOT NULL
);

-- Guardias
CREATE TABLE Guardia (
    IdGuardia INT IDENTITY PRIMARY KEY,
    Fecha DATE NOT NULL,
    IdServicio INT NOT NULL FOREIGN KEY REFERENCES Servicio(IdServicio),
    Observaciones NVARCHAR(200) NULL
);

CREATE TABLE GuardiaAsignacion (
    IdGuardiaAsignacion INT IDENTITY PRIMARY KEY,
    IdGuardia INT NOT NULL FOREIGN KEY REFERENCES Guardia(IdGuardia),
    IdMedico INT NOT NULL FOREIGN KEY REFERENCES Medico(IdMedico),
    IdTurnoTipo INT NOT NULL FOREIGN KEY REFERENCES TurnoTipo(IdTurnoTipo)
);

-- Asignaciones diarias (rotaciones)
CREATE TABLE AsignacionTrabajo (
    IdAsignacionTrabajo INT IDENTITY PRIMARY KEY,
    Fecha DATE NOT NULL,
    IdServicio INT NOT NULL FOREIGN KEY REFERENCES Servicio(IdServicio),
    IdMedico INT NOT NULL FOREIGN KEY REFERENCES Medico(IdMedico),
    Observaciones NVARCHAR(200) NULL
);

