USE Trabajo_Final_Roles_HOMACE_V2;
GO

 --AQUI SE CONSULTAN ALGUNOS DATOS DE TODA LA BASE
 -- se tiene que consultar 1 pr 1


/* Total de vacaciones por médico */
SELECT m.Cedula, m.Nombre + ' ' + m.Apellidos AS Medico,
       COUNT(*) AS CantidadVacaciones,
       MIN(v.FechaInicio) AS PrimerInicio, MAX(v.FechaFin) AS UltimoFin
FROM Vacaciones v
JOIN Medico m ON m.IdMedico = v.IdMedico
WHERE v.FechaInicio BETWEEN '2025-08-01' AND '2025-08-31'
   OR v.FechaFin    BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY m.Cedula, m.Nombre, m.Apellidos
ORDER BY CantidadVacaciones DESC;



/* Total de guardias asignadas por médico por tido el mes */
SELECT m.Cedula, m.Nombre + ' ' + m.Apellidos AS Medico,
       COUNT(*) AS Guardias
FROM Guardia g
JOIN GuardiaAsignacion ga ON ga.IdGuardia = g.IdGuardia
JOIN Medico m ON m.idMedico = ga.IdMedico
WHERE g.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY m.Cedula, m.Nombre, m.Apellidos
ORDER BY Guardias DESC;




/* Guardias por servicio y turno */

SELECT s.Nombre AS Servicio, t.Nombre AS Turno,
       COUNT(DISTINCT g.Fecha) AS DiasCubiertos,
       COUNT(*) AS TotalAsignaciones
FROM Guardia g
JOIN Servicio s ON s.IdServicio = g.IdServicio
JOIN TurnoTipo t ON t.IdTurnoTipo = t.IdTurnoTipo
JOIN GuardiaAsignacion ga ON ga.IdGuardia = g.IdGuardia
WHERE g.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY s.Nombre, t.Nombre
ORDER BY s.Nombre, t.Nombre;





/*Total de asignaciones de trabajo por medico */
SELECT m.Cedula, m.Nombre + ' ' + m.Apellidos AS Medico,
       COUNT(*) AS Asignaciones
FROM AsignacionTrabajo a
JOIN Medico m ON m.IdMedico = a.IdMedico
WHERE a.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY m.Cedula, m.Nombre, m.Apellidos
ORDER BY Asignaciones DESC;




/* Dias con mas de 1 evento para un mismo medico (vacaciones, guardias y asignaciones alo largo de todo el mes) */
SELECT m.Cedula, m.Nombre + ' ' + m.Apellidos AS Medico, a.Fecha,
       COUNT(DISTINCT tipo) AS TiposEventos
FROM (
    SELECT v.IdMedico, v.FechaInicio AS Fecha, 'VACACION' AS tipo
    FROM Vacaciones v
    WHERE v.FechaInicio BETWEEN '2025-08-01' AND '2025-08-31'
    UNION ALL
    SELECT v.IdMedico, v.FechaFin AS Fecha, 'VACACION' AS tipo
    FROM Vacaciones v
    WHERE v.FechaFin BETWEEN '2025-08-01' AND '2025-08-31'
    UNION ALL
    SELECT ga.IdMedico, g.Fecha, 'GUARDIA'
    FROM Guardia g
    JOIN GuardiaAsignacion ga ON ga.IdGuardia = g.IdGuardia
    WHERE g.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
    UNION ALL
    SELECT a.IdMedico, a.Fecha, 'ASIGNACION'
    FROM AsignacionTrabajo a
    WHERE a.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
) q
JOIN Medico m ON m.IdMedico = q.IdMedico
JOIN AsignacionTrabajo a ON a.IdMedico = m.IdMedico
WHERE q.Fecha BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY m.Cedula, m.Nombre, m.Apellidos, a.Fecha
HAVING COUNT(DISTINCT tipo) > 1
ORDER BY a.Fecha, m.Apellidos;

SELECT 
    TABLE_SCHEMA AS Esquema,
    TABLE_NAME AS Tabla,
    TABLE_TYPE AS Tipo
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME IN (
    'Especialidad',
    'Servicio',
    'Rol',
    'TurnoTipo',
    'Medico',
    'ServicioEspecialidad',
    'MedicoEspecialidad',
    'MedicoRolHist',
    'Vacaciones',
    'Guardia',
    'GuardiaAsignacion',
    'AsignacionTrabajo'
)
ORDER BY Tabla;

--CONSULTAS Y PRUEBAS--

--Datos de una tabla
SELECT * FROM Rol;


--Total de médicos registrado
SELECT COUNT(*) AS TotalMedicos
FROM Medico;



--Total de guardias por médic
SELECT 
    m.Cedula,
    m.Nombre + ' ' + m.Apellidos AS NombreCompleto,
    COUNT(*) AS TotalGuardias
FROM GuardiaAsignacion ga
INNER JOIN Medico m ON ga.IdMedico = m.IdMedico
GROUP BY m.Cedula, m.Nombre, m.Apellidos
ORDER BY TotalGuardias DESC;


--Total de días de vacaciones por médic
SELECT 
    m.Cedula,
    m.Nombre + ' ' + m.Apellidos AS NombreCompleto,
    DATEDIFF(DAY, v.FechaInicio, v.FechaFin) + 1 AS DiasVacaciones
FROM Vacaciones v
INNER JOIN Medico m ON v.IdMedico = m.IdMedico
ORDER BY DiasVacaciones DESC;

--Asignaciones sin validación de rol ni especialidad
SELECT 
    a.IdAsignacionTrabajo,
    a.Fecha,
    m.Cedula,
    m.Nombre + ' ' + m.Apellidos AS Medico
FROM AsignacionTrabajo a
JOIN Medico m ON m.IdMedico = a.IdMedico
LEFT JOIN MedicoRolHist mrh ON mrh.IdMedico = m.IdMedico
    AND a.Fecha BETWEEN mrh.FechaInicio AND ISNULL(mrh.FechaFin, a.Fecha)
LEFT JOIN MedicoEspecialidad me ON me.IdMedico = m.IdMedico
WHERE mrh.IdRol IS NULL OR me.IdEspecialidad IS NULL
ORDER BY a.Fecha DESC;

-- Calendario de guardias por médico y tipo de turn
SELECT 
    m.Cedula,
    m.Nombre + ' ' + m.Apellidos AS Medico,
    g.Fecha,
    tt.Nombre AS TipoTurno
FROM GuardiaAsignacion ga
JOIN Guardia g ON g.IdGuardia = ga.IdGuardia
JOIN TurnoTipo tt ON tt.IdTurnoTipo = ga.IdTurnoTipo
JOIN Medico m ON m.IdMedico = ga.IdMedico
ORDER BY m.Apellidos, g.Fecha;

--Validación cruzada: guardias en vacacione
SELECT 
    m.Cedula,
    m.Nombre + ' ' + m.Apellidos AS Medico,
    g.Fecha AS FechaGuardia,
    v.FechaInicio,
    v.FechaFin
FROM GuardiaAsignacion ga
JOIN Guardia g ON g.IdGuardia = ga.IdGuardia
JOIN Medico m ON m.IdMedico = ga.IdMedico
JOIN Vacaciones v ON v.IdMedico = m.IdMedico
WHERE g.Fecha BETWEEN v.FechaInicio AND v.FechaFin
ORDER BY g.Fecha DESC;

