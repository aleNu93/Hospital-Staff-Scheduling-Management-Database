/* =====================================================
        Guardias agosto
   ===================================================== */

USE Trabajo_Final_Roles_HOMACE_V2;

DECLARE @G_A TABLE( --@G_A signifca "guardias agosto"
    Fecha       DATE          NOT NULL,
    Servicio    NVARCHAR(100) NOT NULL,
    TurnoCodigo NVARCHAR(10)  NOT NULL,
    CedTitular  NVARCHAR(20)  NOT NULL,
    CedApoyo    NVARCHAR(20)  NULL,
    Obs         NVARCHAR(200) NULL
);

-- Cada día de Agosto desde aqui (cada cedula se comento con el apellido del Dr o Dra)

-- 01 vie
INSERT INTO @G_A VALUES ('2025-08-01','Hospitalización','ORD','111111117',NULL,NULL); -- Montero
INSERT INTO @G_A VALUES ('2025-08-01','Hospitalización','EXT','111111111',NULL,NULL); -- Fuxá

-- 02 sab
INSERT INTO @G_A VALUES ('2025-08-02','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-02','Hospitalización','EXT','111111128',NULL,NULL); -- Elizondo
INSERT INTO @G_A VALUES ('2025-08-02','Hospitalización','REF','111111123',NULL,NULL); -- Camacho

-- 03 dom
INSERT INTO @G_A VALUES ('2025-08-03','Hospitalización','ORD','111111111',NULL,NULL); -- Fuxá
INSERT INTO @G_A VALUES ('2025-08-03','Hospitalización','EXT','111111132',NULL,NULL); -- Zamora
INSERT INTO @G_A VALUES ('2025-08-03','Hospitalización','REF','111111133',NULL,NULL); -- Gray

-- 04 lun
INSERT INTO @G_A VALUES ('2025-08-04','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-04','Hospitalización','EXT','111111112',NULL,NULL); -- López

-- 05 mar
INSERT INTO @G_A VALUES ('2025-08-05','Hospitalización','ORD','111111116',NULL,NULL); -- Agüero
INSERT INTO @G_A VALUES ('2025-08-05','Hospitalización','EXT','111111128',NULL,NULL); -- Elizondo

-- 06 mie
INSERT INTO @G_A VALUES ('2025-08-06','Hospitalización','ORD','111111114',NULL,NULL); -- Calderón
INSERT INTO @G_A VALUES ('2025-08-06','Hospitalización','EXT','111111117',NULL,NULL); -- Montero

-- 07 jue
INSERT INTO @G_A VALUES ('2025-08-07','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-07','Hospitalización','EXT','111111121',NULL,NULL); -- Villalobos

-- 08 vie
INSERT INTO @G_A VALUES ('2025-08-08','Hospitalización','ORD','111111131',NULL,NULL); -- Terrientes
INSERT INTO @G_A VALUES ('2025-08-08','Hospitalización','EXT','111111119',NULL,NULL); -- Peñaranda

-- 09 sb
INSERT INTO @G_A VALUES ('2025-08-09','Hospitalización','ORD','111111132',NULL,NULL); -- Zamora
-- EXT=Publicar (omitido)
-- REF=Publicar (omitido)

-- 10 dom
INSERT INTO @G_A VALUES ('2025-08-10','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-10','Hospitalización','EXT','111111128',NULL,NULL); -- Elizondo
INSERT INTO @G_A VALUES ('2025-08-10','Hospitalización','REF','111111125',NULL,NULL); -- Mejía

-- 11 lun
INSERT INTO @G_A VALUES ('2025-08-11','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-11','Hospitalización','EXT','111111121',NULL,NULL); -- Villalobos

-- 12 mar
INSERT INTO @G_A VALUES ('2025-08-12','Hospitalización','ORD','111111125',NULL,NULL); -- Mejía
INSERT INTO @G_A VALUES ('2025-08-12','Hospitalización','EXT','111111132',NULL,NULL); -- Zamora

-- 13 mie
INSERT INTO @G_A VALUES ('2025-08-13','Hospitalización','ORD','111111116',NULL,NULL); -- Agüero
INSERT INTO @G_A VALUES ('2025-08-13','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho

-- 14 jue
INSERT INTO @G_A VALUES ('2025-08-14','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-14','Hospitalización','EXT','111111117',NULL,NULL); -- Montero

-- 15 viernes (feriado del dia de la mader)
INSERT INTO @G_A VALUES ('2025-08-15','Hospitalización','ORD','111111129',NULL,NULL); -- Irigoyen

-- 16 sab
INSERT INTO @G_A VALUES ('2025-08-16','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-16','Hospitalización','EXT','111111128',NULL,NULL); -- Elizondo


-- 17 dom
INSERT INTO @G_A VALUES ('2025-08-17','Hospitalización','ORD','111111119',NULL,NULL); -- Peñaranda
INSERT INTO @G_A VALUES ('2025-08-17','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho
INSERT INTO @G_A VALUES ('2025-08-17','Hospitalización','REF','111111133',NULL,NULL); -- Gray

-- 18 lun
INSERT INTO @G_A VALUES ('2025-08-18','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-18','Hospitalización','EXT','111111133',NULL,NULL); -- Gray

-- 19 mar
INSERT INTO @G_A VALUES ('2025-08-19','Hospitalización','ORD','111111133',NULL,NULL); -- Gray
INSERT INTO @G_A VALUES ('2025-08-19','Hospitalización','EXT','111111119',NULL,NULL); -- Peñaranda

-- 20 mie
INSERT INTO @G_A VALUES ('2025-08-20','Hospitalización','ORD','111111125',NULL,NULL); -- Mejía
INSERT INTO @G_A VALUES ('2025-08-20','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho

-- 21 jue
INSERT INTO @G_A VALUES ('2025-08-21','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-21','Hospitalización','EXT','111111131',NULL,NULL); -- Terrientes

-- 22 vie
INSERT INTO @G_A VALUES ('2025-08-22','Hospitalización','ORD','111111132',NULL,NULL); -- Zamora
INSERT INTO @G_A VALUES ('2025-08-22','Hospitalización','EXT','111111133',NULL,NULL); -- Gray

-- 23 sab
INSERT INTO @G_A VALUES ('2025-08-23','Hospitalización','ORD','111111126',NULL,NULL); -- Bermúdez
INSERT INTO @G_A VALUES ('2025-08-23','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho

-- 24 dom
INSERT INTO @G_A VALUES ('2025-08-24','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-24','Hospitalización','EXT','111111118',NULL,NULL); -- Navarrete
INSERT INTO @G_A VALUES ('2025-08-24','Hospitalización','REF','111111117',NULL,NULL); -- Montero

-- 25 lun
INSERT INTO @G_A VALUES ('2025-08-25','Hospitalización','ORD','111111118',NULL,NULL); -- Navarrete
INSERT INTO @G_A VALUES ('2025-08-25','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho

-- 26 mar
INSERT INTO @G_A VALUES ('2025-08-26','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-26','Hospitalización','EXT','111111126',NULL,NULL); -- Bermúdez

-- 27 mie
INSERT INTO @G_A VALUES ('2025-08-27','Hospitalización','ORD','111111112',NULL,NULL); -- López
INSERT INTO @G_A VALUES ('2025-08-27','Hospitalización','EXT','111111117',NULL,NULL); -- Montero

-- 28 jue
INSERT INTO @G_A VALUES ('2025-08-28','Hospitalización','ORD','111111115',NULL,NULL); -- Vindas
INSERT INTO @G_A VALUES ('2025-08-28','Hospitalización','EXT','111111123',NULL,NULL); -- Camacho

-- 29 vie
INSERT INTO @G_A VALUES ('2025-08-29','Hospitalización','ORD','111111123',NULL,NULL); -- Camacho
INSERT INTO @G_A VALUES ('2025-08-29','Hospitalización','EXT','111111112',NULL,NULL); -- López

-- 30 sqb
INSERT INTO @G_A VALUES ('2025-08-30','Hospitalización','ORD','111111127',NULL,NULL); -- Castillo
INSERT INTO @G_A VALUES ('2025-08-30','Hospitalización','EXT','111111125',NULL,NULL); -- Mejía

-- 31 dom
INSERT INTO @G_A VALUES ('2025-08-31','Hospitalización','ORD','111111117',NULL,NULL); -- Montero
INSERT INTO @G_A VALUES ('2025-08-31','Hospitalización','EXT','111111125',NULL,NULL); -- Mejía


-- Ajuste de 15 de agosto (solo 1 vez mientras se declara "@G_A" arriba)
UPDATE A
   SET Obs = LTRIM(RTRIM(COALESCE(Obs + N' ', N'') + N'(ajuste feriado 15-ago)'))
FROM @G_A A
WHERE A.Fecha = '2025-08-15';


-- Ejecutar solo 1 vez: crea y asgina la guardia

DECLARE 
    @fA DATE, @srvA NVARCHAR(100), @tA NVARCHAR(10),
    @cedTit NVARCHAR(20), @cedApo NVARCHAR(20), @obsA NVARCHAR(200);

DECLARE curA CURSOR LOCAL FAST_FORWARD FOR
    SELECT Fecha, Servicio, TurnoCodigo, CedTitular, CedApoyo, Obs
    FROM @G_A
    ORDER BY Fecha, Servicio, TurnoCodigo;

OPEN curA;
FETCH NEXT FROM curA INTO @fA, @srvA, @tA, @cedTit, @cedApo, @obsA;

WHILE @@FETCH_STATUS = 0
BEGIN
    EXEC sp_InsertGuardia
         @Fecha = @fA,
         @Servicio = @srvA,
         @Observaciones = @obsA;

    EXEC sp_AsignarGuardia
         @Fecha = @fA,
         @Servicio = @srvA,
         @Cedula = @cedTit,
         @TurnoCodigo = @tA;

    IF @cedApo IS NOT NULL AND LEN(@cedApo) > 0
    BEGIN
        EXEC sp_AsignarGuardia
             @Fecha = @fA,
             @Servicio = @srvA,
             @Cedula = @cedApo,
             @TurnoCodigo = @tA;
    END

    FETCH NEXT FROM curA INTO @fA, @srvA, @tA, @cedTit, @cedApo, @obsA;
END

CLOSE curA;
DEALLOCATE curA;

GO

--revisar 1 por 1
select * from Guardia
select * from GuardiaAsignacion
select * from TurnoTipo

