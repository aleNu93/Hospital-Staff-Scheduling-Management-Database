/* =====================================================
   Asignaciones Diarias
   ===================================================== */

USE Trabajo_Final_Roles_HOMACE_V2;

DECLARE @Asignaciones TABLE(
    Fecha       DATE          NOT NULL,
    Servicio    NVARCHAR(100) NOT NULL,
    Cedula      NVARCHAR(20)  NOT NULL,
    Obs         NVARCHAR(200) NULL
);

--algunos dias van a tener asignaciones diferentes por causa de vacaciones o el feriado del dia de las madres

-- =================== 01 Agosto (Viernes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-01','UMMF','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','MAFE','111111117',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','UNESMAFE','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','Consultorios','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','Labor/Inducción','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','Cirugía','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','UNINOB','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-01','Posparto','111111132',NULL);

-- =================== 02 Agosto (sabado) ===================
--Hay feriado de no pago obligatorio, entonces no hay ajustes especiales en las guardias
INSERT INTO @Asignaciones VALUES ('2025-08-02','UMMF','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','MAFE','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','UNESMAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','Consultorios','111111121',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','Labor/Inducción','111111117',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','Cirugía','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','UNINOB','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-02','Posparto','111111114',NULL);

-- =================== 03 Agosto (domingo) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-03','UMMF','111111117',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','MAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','UNESMAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','Consultorios','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','Labor/Inducción','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','Cirugía','111111129',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','UNINOB','111111112',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-03','Posparto','111111125',NULL);

-- =================== 04 Agosto (lunes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-04','UMMF','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','MAFE','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','UNESMAFE','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','Labor/Inducción','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','Cirugía','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','UNINOB','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-04','Posparto','111111124',NULL);

-- =================== 05 Agosto (martes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-05','UMMF','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','MAFE','111111117',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','UNESMAFE','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','Consultorios','111111130',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','Labor/Inducción','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','Cirugía','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','UNINOB','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-05','Posparto','111111132',NULL);

-- =================== 06 Agosto (miercoles) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-06','UMMF','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','MAFE','111111121',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','UNESMAFE','111111124',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','Consultorios','111111113',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','Labor/Inducción','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','Cirugía','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-06','Posparto','111111129',NULL);

-- =================== 07 Agosto (jueves) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-07','UMMF','111111112',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','MAFE','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','UNESMAFE','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','Labor/Inducción','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','Cirugía','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','UNINOB','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-07','Posparto','111111133',NULL);

--
-- =================== 08 Agosto (viernes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-08','UMMF','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','MAFE','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','UNESMAFE','111111112',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','Consultorios','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','Labor/Inducción','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','Cirugía','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','UNINOB','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-08','Posparto','111111111',NULL);

-- =================== 09 Agosto (sabado) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-09','UMMF','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','MAFE','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','UNESMAFE','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','Consultorios','111111121',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','Labor/Inducción','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','Cirugía','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','UNINOB','111111129',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-09','Posparto','111111133',NULL);

-- =================== 10 Agosto (domingo) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-10','UMMF','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','MAFE','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','UNESMAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','Consultorios','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','Labor/Inducción','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','Cirugía','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','UNINOB','111111112',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-10','Posparto','111111125',NULL);

-- =================== 11 Agosto (lunes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-11','UMMF','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','MAFE','111111121',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','UNESMAFE','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','Consultorios','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','Labor/Inducción','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','Cirugía','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-11','Posparto','111111132',NULL);

-- =================== 12 Agosto (martes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-12','UMMF','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','MAFE','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','UNESMAFE','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','Consultorios','111111130',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','Labor/Inducción','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','Cirugía','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','UNINOB','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-12','Posparto','111111119',NULL);

-- =================== 13 Agosto (miercoles) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-13','UMMF','111111121',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','MAFE','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','UNESMAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','Consultorios','111111113',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','Labor/Inducción','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','Cirugía','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','UNINOB','111111124',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-13','Posparto','111111129',NULL);

-- =================== 14 Agosto (jueves) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-14','UMMF','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','MAFE','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','UNESMAFE','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','Labor/Inducción','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','Cirugía','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','UNINOB','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-14','Posparto','111111133',NULL);

--
-- =================== 15 Agosto (viernes) ===================
--Se tiene que ejecutar al final y solo
INSERT INTO @Asignaciones VALUES ('2025-08-15','UMMF','111111131',NULL);            
INSERT INTO @Asignaciones VALUES ('2025-08-15','MAFE','111111119',NULL);           
INSERT INTO @Asignaciones VALUES ('2025-08-15','UNESMAFE','111111112',NULL);       
INSERT INTO @Asignaciones VALUES ('2025-08-15','Consultorios','111111125',NULL);    
INSERT INTO @Asignaciones VALUES ('2025-08-15','Labor/Inducción','111111114',NULL); 
INSERT INTO @Asignaciones VALUES ('2025-08-15','Cirugía','111111123',NULL);         
INSERT INTO @Asignaciones VALUES ('2025-08-15','UNINOB','111111127',NULL);          
INSERT INTO @Asignaciones VALUES ('2025-08-15','Posparto','111111111',NULL);        

-- =================== 16 Agosto (sabado) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-16','UMMF','111111115',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','MAFE','111111128',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','UNESMAFE','111111133',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','Consultorios','111111121',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','Labor/Inducción','111111111',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','Cirugía','111111126',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','UNINOB','111111129',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-16','Posparto','111111125',NULL);  

-- =================== 17 Agosto (domingo) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-17','UMMF','111111119',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','MAFE','111111123',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','UNESMAFE','111111133',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','Consultorios','111111116',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','Labor/Inducción','111111128',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','Cirugía','111111127',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','UNINOB','111111112',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-17','Posparto','111111125',NULL);  

-- =================== 18 Agosto (lunes) ===================
-- (DRS Montero y Navarrete no estan por vacaciones 18–22)
INSERT INTO @Asignaciones VALUES ('2025-08-18','UMMF','111111114',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','MAFE','111111120',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','UNESMAFE','111111122',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','Consultorios','111111119',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','Labor/Inducción','111111126',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','Cirugía','111111128',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','UNINOB','111111131',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-18','Posparto','111111124',NULL);  

-- =================== 19 Agosto (martes) ===================
-- (DRS Montero y Navarrete no estan por vacaciones 18–22)
INSERT INTO @Asignaciones VALUES ('2025-08-19','UMMF','111111119',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','MAFE','111111125',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','UNESMAFE','111111132',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','Consultorios','111111130',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','Labor/Inducción','111111116',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','Cirugía','111111133',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','UNINOB','111111111',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-19','Posparto','111111129',NULL);  

-- =================== 20 Agosto (miercoles) ===================
-- (DRS Montero y Navarrete no estan por vacaciones 18–22)
INSERT INTO @Asignaciones VALUES ('2025-08-20','UMMF','111111128',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','MAFE','111111121',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','UNESMAFE','111111124',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','Consultorios','111111113',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','Labor/Inducción','111111115',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','Cirugía','111111126',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','UNINOB','111111122',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-20','Posparto','111111129',NULL);  

-- =================== 21 Agosto jueves) ===================
-- (DRS Montero y Navarrete no estan por vacaciones 18–22)
INSERT INTO @Asignaciones VALUES ('2025-08-21','UMMF','111111112',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','MAFE','111111119',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','UNESMAFE','111111127',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','Consultorios','111111120',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','Labor/Inducción','111111123',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','Cirugía','111111125',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','UNINOB','111111114',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-21','Posparto','111111133',NULL);  

--
-- =================== 22 Agosto (viernes) ===================
-- DRS Montero y Navarrete no estan por vacaciones (18–22)
INSERT INTO @Asignaciones VALUES ('2025-08-22','UMMF','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','MAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','UNESMAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','Consultorios','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','Labor/Inducción','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','Cirugía','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','UNINOB','111111124',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-22','Posparto','111111129',NULL);

-- =================== 23 Agosto (sabado) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-23','UMMF','111111126',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','MAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','UNESMAFE','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','Labor/Inducción','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','Cirugía','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-23','Posparto','111111118',NULL);

-- =================== 24 Agosto (domingo) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-24','UMMF','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','MAFE','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','UNESMAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','Consultorios','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','Labor/Inducción','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','Cirugía','111111129',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','UNINOB','111111112',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-24','Posparto','111111125',NULL);

-- =================== 25 Agosto (lunes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-25','UMMF','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','MAFE','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','UNESMAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','Labor/Inducción','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','Cirugía','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-25','Posparto','111111129',NULL);

-- =================== 26 Agosto (martes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-26','UMMF','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','MAFE','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','UNESMAFE','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','Consultorios','111111130',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','Labor/Inducción','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','Cirugía','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','UNINOB','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-26','Posparto','111111125',NULL);

-- =================== 27 Agosto (miercoles) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-27','UMMF','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','MAFE','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','UNESMAFE','111111124',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','Labor/Inducción','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','Cirugía','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-27','Posparto','111111129',NULL);

-- =================== 28 Agosto (jueves) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-28','UMMF','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','MAFE','111111118',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','UNESMAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','Consultorios','111111130',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','Labor/Inducción','111111116',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','Cirugía','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','UNINOB','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-28','Posparto','111111125',NULL);

-- =================== 29 Agosto (iernes) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-29','UMMF','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','MAFE','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','UNESMAFE','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','Consultorios','111111120',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','Labor/Inducción','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','Cirugía','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','UNINOB','111111122',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-29','Posparto','111111129',NULL);

-- =================== 30 Agosto (sabado) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-30','UMMF','111111111',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','MAFE','111111125',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','UNESMAFE','111111133',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','Consultorios','111111121',NULL);  
INSERT INTO @Asignaciones VALUES ('2025-08-30','Labor/Inducción','111111117',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','Cirugía','111111128',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','UNINOB','111111124',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-30','Posparto','111111112',NULL);      

-- =================== 31 Agosto (domingo) ===================
INSERT INTO @Asignaciones VALUES ('2025-08-31','UMMF','111111132',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','MAFE','111111123',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','UNESMAFE','111111115',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','Consultorios','111111119',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','Labor/Inducción','111111114',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','Cirugía','111111127',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','UNINOB','111111131',NULL);
INSERT INTO @Asignaciones VALUES ('2025-08-31','Posparto','111111118',NULL);

-- =================== aqui se ejecuta solo el 15 de agosto ===================
UPDATE A
   SET Obs = LTRIM(RTRIM(COALESCE(Obs + N' ', N'') + N'(ajuste feriado 15-ago)'))
FROM @Asignaciones A
WHERE A.Fecha = '2025-08-15';

-- =================== aqui se ejecutan todas las filas ===================
DECLARE 
    @f DATE, @srv NVARCHAR(100),
    @ced NVARCHAR(20), @obs NVARCHAR(200);

DECLARE curAsign CURSOR LOCAL FAST_FORWARD FOR
    SELECT Fecha, Servicio, Cedula, Obs
    FROM @Asignaciones
    ORDER BY Fecha, Servicio;

OPEN curAsign;
FETCH NEXT FROM curAsign INTO @f, @srv, @ced, @obs;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Crea/asegura la asignación y asigna el médico (SP definido en Sección 3)
    EXEC sp_InsertAsignacionTrabajo
         @Fecha = @f,
         @Servicio = @srv,
         @Cedula = @ced,
         @Observaciones = @obs;

    FETCH NEXT FROM curAsign INTO @f, @srv, @ced, @obs;
END

CLOSE curAsign;
DEALLOCATE curAsign;


GO

select * from AsignacionTrabajo
select * from TurnoTipo

