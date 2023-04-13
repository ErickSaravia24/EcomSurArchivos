USE [EcomSur]
GO
/****** Object:  StoredProcedure [dbo].[ProductoById]    Script Date: 12/04/2023 03:39:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER   PROCEDURE [dbo].[ProductoById]
    @productoId INT
AS
BEGIN
    SELECT fiProductoId, fcProducto, fiCantidadProducto, fdPrecio
    FROM BDProductos
    WHERE fiProductoId = @productoId;
END
