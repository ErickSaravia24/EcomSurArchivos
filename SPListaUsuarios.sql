USE [EcomSurUsuarios]
GO
CREATE OR ALTER PROCEDURE [dbo].[spObtenerUsuariosPorId] 
    @fiUsuarioId INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM EcomSurUsuarios.dbo.BDUsuarios WHERE fiUsuarioId = @fiUsuarioId AND fiIdRol = 1)
    BEGIN
        SELECT *
        FROM EcomSurUsuarios.dbo.BDUsuarios
    END
    ELSE
    BEGIN
        PRINT 'El usuario no tiene permisos para consultar la información de los usuarios.'
    END
END