USE [EcomSur]
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 12/04/2023 03:39:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[UpdateProduct]
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
