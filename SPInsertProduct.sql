USE [EcomSurProductos]

GO
CREATE OR ALTER   PROCEDURE [dbo].[InsertProduct]
    @Product varchar(50),
    @Amount int,
    @Price decimal(18,2)
AS
BEGIN
    INSERT INTO BDProductos (fcProducto, fiCantidadProducto, fdPrecio)
    VALUES (@Product, @Amount, @Price)

   
END