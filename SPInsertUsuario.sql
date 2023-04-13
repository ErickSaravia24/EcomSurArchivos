USE [EcomSurUsuarios]

GO
CREATE OR ALTER   PROCEDURE [dbo].[spInsertarUsuario] 
    @fcNombre VARCHAR(50),
    @fcAmaterno VARCHAR(50),
    @fcApaterno VARCHAR(50),
    @fcCalle VARCHAR(50),
    @fcNumero VARCHAR(10),
    @fcColonia VARCHAR(50),
    @fcFechaCreacion DATETIME,
    @fcCorreo VARCHAR(50),
    @fcPassword VARCHAR(50),
    @fiIdRol INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TempUsuario TABLE (
        fiUsuarioId INT
    );

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
        @fcFechaCreacion,
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
        @fcFechaCreacion,
        @fiIdRol
    );
END
