USE [EcomSurProductos]

GO
CREATE OR ALTER   PROCEDURE [dbo].[DeleteProduct]
    @productoId INT
AS
BEGIN
    DELETE FROM BDProductos
    WHERE fiProductoId = @productoId
END


