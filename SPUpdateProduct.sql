USE [EcomSurProductos]


GO
CREATE OR ALTER   PROCEDURE [dbo].[UpdateProduct]
    @productoId INT,
    @producto VARCHAR(100),
    @cantidadProducto INT,
    @precio decimal(18,2)
AS
BEGIN
    UPDATE BDProductos
    SET fcProducto = @producto, fiCantidadProducto = @cantidadProducto, fdPrecio = @precio
    WHERE fiProductoId = @productoId
END
