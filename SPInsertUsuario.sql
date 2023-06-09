USE [EcomSurUsuarios]

GO
CREATE OR ALTER PROCEDURE [dbo].[spInsertarUsuario] 
    @fcNombre VARCHAR(50),
    @fcAmaterno VARCHAR(50),
    @fcApaterno VARCHAR(50),
    @fcCalle VARCHAR(50),
    @fcNumero VARCHAR(10),
    @fcColonia VARCHAR(50), 
    @fcCorreo VARCHAR(50),
    @fcPassword VARCHAR(50),
    @fiIdRol INT,
    @fiIdUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TempUsuario TABLE (
        fiUsuarioId INT
    );

    DECLARE @fiRol INT = (SELECT fiIdRol FROM EcomSurUsuarios.dbo.BDUsuarios WHERE fiUsuarioId = @fiIdUsuario);

    IF (@fiRol = 1 OR @fiRol IS NULL)
    BEGIN
        INSERT INTO EcomSurUsuarios.dbo.BDUsuarios (      
            fcNombre,
            fcAmaterno,
            fcApaterno,
            fcCalle,
            fcNumero,
            fcColonia,
            fcFechaCreacion,
            fcCorrero,
            fcPassword,
            fiIdRol
        )
        OUTPUT inserted.fiUsuarioId INTO @TempUsuario(fiUsuarioId)
        VALUES (
            @fcNombre,
            @fcAmaterno,
            @fcApaterno,
            @fcCalle,
            @fcNumero,
            @fcColonia,
            GETDATE(),
            @fcCorreo,
            @fcPassword,
            @fiIdRol
        );

        DECLARE @fiUsuarioId INT = (SELECT fiUsuarioId FROM @TempUsuario);

        INSERT INTO EcomSurProductos.dbo.BDUsuarios (
            fiUsuarioId,
            fcNombre,
            fcAmaterno,
            fcApaterno,
            fcCalle,
            fcNumero,
            fcColonia,
            fcFechaCreacion,
            fiIdRol
        )
        VALUES (
            @fiUsuarioId,
            @fcNombre,
            @fcAmaterno,
            @fcApaterno,
            @fcCalle,
            @fcNumero,
            @fcColonia,
            GETDATE(),
            @fiIdRol
        );
    END
    ELSE
    BEGIN
        PRINT 'El usuario con id ' + CAST(@fiIdUsuario AS VARCHAR) + ' no tiene permisos para registrar usuarios.'
    END
END
