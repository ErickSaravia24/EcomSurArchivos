USE [EcomSurUsuarios]
GO
CREATE PROCEDURE [dbo].[DeleteUser]
    @userId INT,
    @adminUserId INT
AS
BEGIN
    IF EXISTS(SELECT * FROM BDUsuarios WHERE fiUsuarioId = @adminUserId AND fiIdRol = 1)
    BEGIN
        DELETE FROM BDUsuarios WHERE fiUsuarioId = @userId;
        SELECT 'Usuario elminado' AS Result;
    END
    ELSE
    BEGIN
        SELECT 'tu usuario no tiene permisos para realizar esta accion.' AS Result;
    END
END