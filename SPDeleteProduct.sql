USE [EcomSurProductos]

GO
Create or ALTER   PROCEDURE [dbo].[DeleteProduct]
    @productoId INT
AS
BEGIN
    DELETE FROM BDProductos
    WHERE fiProductoId = @productoId
END


