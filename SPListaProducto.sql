USE [EcomSurProductos]

GO
CREATE OR ALTER   PROCEDURE [dbo].[ListProducts]
AS
BEGIN
    select * from EcomSurProductos.dbo.BDProductos
END