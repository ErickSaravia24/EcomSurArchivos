USE [EcomSurProductos]

GO
Create or ALTER   PROCEDURE [dbo].[ListProducts]
AS
BEGIN
    select * from EcomSurProductos.dbo.BDProductos
END