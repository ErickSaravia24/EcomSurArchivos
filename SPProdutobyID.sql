USE [EcomSurProductos]
GO

CREATE OR ALTER PROCEDURE [dbo].[ProductoById]
    @productoId INT
AS
BEGIN
    SELECT fiProductoId, fcProducto, fiCantidadProducto, fdPrecio
    FROM BDProductos
    WHERE fiProductoId = @productoId;
END
