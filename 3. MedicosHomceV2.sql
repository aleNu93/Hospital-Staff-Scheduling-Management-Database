/* =====================================================
			Directorio medico
   ===================================================== */

USE Trabajo_Final_Roles_HOMACE_V2;
GO

DECLARE @EspNombre NVARCHAR(100) = N'Ginecologia y Obstetricia';

EXEC sp_InsertEspecialidad @EspNombre;


EXEC sp_InsertMedico @Cedula=N'111111111', @Nombre=N'Anabel',   @Apellidos=N'Fuxá García',            @Email=N'anfuga@ccss.sa.cr', @Telefono=N'88888881', @CodigoMedico=N'10163';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111111', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111112', @Nombre=N'Ana',      @Apellidos=N'Marcela López Sánchez',  @Email=N'anlosa@ccss.sa.cr', @Telefono=N'88888882', @CodigoMedico=N'6115';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111112', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111113', @Nombre=N'Alexander',@Apellidos=N'Bullio Guillén',         @Email=N'albugu@ccss.sa.cr', @Telefono=N'88888883', @CodigoMedico=N'8357';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111113', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111114', @Nombre=N'Rafael',   @Apellidos=N'Calderón Torres',        @Email=N'racato@ccss.sa.cr', @Telefono=N'88888884', @CodigoMedico=N'3231';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111114', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111115', @Nombre=N'Carlos',   @Apellidos=N'Vindas Morera',          @Email=N'cavimo@ccss.sa.cr', @Telefono=N'88888885', @CodigoMedico=N'11367';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111115', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111116', @Nombre=N'Laura',    @Apellidos=N'Agüero Zamora',          @Email=N'lagza@ccss.sa.cr',  @Telefono=N'88888886', @CodigoMedico=N'10275';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111116', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111117', @Nombre=N'Adriana',  @Apellidos=N'Montero Alfaro',         @Email=N'admoal@ccss.sa.cr', @Telefono=N'88888887', @CodigoMedico=N'7958';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111117', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111118', @Nombre=N'Ana',      @Apellidos=N'Navarrete Fajardo',      @Email=N'anafa@ccss.sa.cr',  @Telefono=N'88888888', @CodigoMedico=N'4588';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111118', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111119', @Nombre=N'Natalia',  @Apellidos=N'Peñaranda Zúñiga',       @Email=N'napezu@ccss.sa.cr', @Telefono=N'88888889', @CodigoMedico=N'12183';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111119', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111120', @Nombre=N'Bernal',   @Apellidos=N'Vásquez Aguilar',        @Email=N'bevagu@ccss.sa.cr', @Telefono=N'88888890', @CodigoMedico=N'4738';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111120', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111121', @Nombre=N'Marcia',   @Apellidos=N'Villalobos Coto',        @Email=N'mavico@ccss.sa.cr', @Telefono=N'88888891', @CodigoMedico=N'7866';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111121', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111122', @Nombre=N'Daniela',  @Apellidos=N'Sequeira Calderón',      @Email=N'daseca@ccss.sa.cr', @Telefono=N'88888892', @CodigoMedico=N'15856';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111122', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111123', @Nombre=N'Ana',      @Apellidos=N'Elena Camacho Solís',    @Email=N'ancaso@ccss.sa.cr', @Telefono=N'88888893', @CodigoMedico=N'15816';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111123', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111124', @Nombre=N'Marylin',  @Apellidos=N'Acuña Castro',           @Email=N'macuca@ccss.sa.cr', @Telefono=N'88888894', @CodigoMedico=N'5640';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111124', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111125', @Nombre=N'Mónica',   @Apellidos=N'Mejía Ramírez',          @Email=N'momera@ccss.sa.cr', @Telefono=N'88888895', @CodigoMedico=N'12475';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111125', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111126', @Nombre=N'Elvis',    @Apellidos=N'Mayela Bermúdez Bonilla',@Email=N'elbebo@ccss.sa.cr', @Telefono=N'88888896', @CodigoMedico=N'12292';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111126', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111127', @Nombre=N'Briggith', @Apellidos=N'Castillo Barquero',      @Email=N'bricaba@ccss.sa.cr',@Telefono=N'88888897', @CodigoMedico=N'15989';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111127', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111128', @Nombre=N'David',    @Apellidos=N'Elizondo Carvajal',      @Email=N'daveca@ccss.sa.cr', @Telefono=N'88888898', @CodigoMedico=N'13774';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111128', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111129', @Nombre=N'Josseline',@Apellidos=N'Irigoyen Fallas',        @Email=N'josifa@ccss.sa.cr', @Telefono=N'88888899', @CodigoMedico=N'5086';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111129', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111130', @Nombre=N'Javier',   @Apellidos=N'Alejandro Núñez Sánchez',@Email=N'janusa@ccss.sa.cr', @Telefono=N'88888900', @CodigoMedico=N'14846';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111130', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111131', @Nombre=N'Luis',     @Apellidos=N'Carlos Terrientes Aguilar', @Email=N'luteagu@ccss.sa.cr', @Telefono=N'88888901', @CodigoMedico=N'15469';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111131', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111132', @Nombre=N'Arcelia',  @Apellidos=N'Zamora Miranda',         @Email=N'arzami@ccss.sa.cr', @Telefono=N'88888902', @CodigoMedico=N'4735';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111132', @Especialidad=@EspNombre;

EXEC sp_InsertMedico @Cedula=N'111111133', @Nombre=N'Shenely',  @Apellidos=N'Gray Torres',            @Email=N'shegrato@ccss.sa.cr', @Telefono=N'88888903', @CodigoMedico=N'16783';
EXEC sp_AsignarMedicoEspecialidad @Cedula=N'111111133', @Especialidad=@EspNombre;

GO

--revisar 1 por 1
--No se use la tabla MedicoRolHist
select*from Medico
select*from MedicoEspecialidad
select * from Servicio
