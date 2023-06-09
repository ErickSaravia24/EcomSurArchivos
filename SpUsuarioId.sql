USE [EcomSurUsuarios]

GO
CREATE OR ALTER PROCEDURE [dbo].[spConsultarUsuarioPorIdYRol]
    @fiIdUsuario INT,
    @fiIdUsuario2 INT
AS
BEGIN
    IF EXISTS(SELECT * FROM EcomSurUsuarios.dbo.BDUsuarios WHERE fiUsuarioId = @fiIdUsuario AND fiIdRol = 1)
    BEGIN
        SELECT * FROM EcomSurUsuarios.dbo.BDUsuarios WHERE fiUsuarioId = @fiIdUsuario2
    END
    ELSE
    BEGIN
        PRINT 'El usuario no tiene los permisos necesarios para consultar usuarios.'
    END
END