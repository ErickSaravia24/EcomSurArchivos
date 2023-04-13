
EXEC sp_addlinkedserver
    @server = 'EcomSurUsuarios',
    @srvproduct = '',
    @provider = 'SQLNCLI',
    @datasrc = 'localhost',
    @catalog = 'ecomSurUsuarios';
	EXEC sp_addlinkedsrvlogin
    @rmtsrvname = 'EcomSurUsuarios',
    @useself = 'False',
    @locallogin = NULL,
    @rmtuser = 'sa',
    @rmtpassword = '12345678';
	SELECT * FROM sys.objects WHERE name = 'BDUsuarios'
	USE EcomSurUsuarios
GO
	CREATE VIEW dbo.BDUsuarios AS
SELECT * FROM EcomSurUsuarios.EcomSurUsuarios.dbo.BDUsuarios;

GO

EXEC sp_addlinkedserver
    @server = 'EcomSurProductos',
    @srvproduct = '',
    @provider = 'SQLNCLI',
    @datasrc = 'localhost',
    @catalog = 'ecomSurProductos';
	EXEC sp_addlinkedsrvlogin
    @rmtsrvname = 'EcomSurProductos',
    @useself = 'False',
    @locallogin = NULL,
    @rmtuser = 'sa',
    @rmtpassword = '12345678';

USE EcomSurProductos
GO
SELECT * FROM sys.objects WHERE name = 'BDUsuarios'
CREATE VIEW dbo.BDUsuarios AS
SELECT *
FROM EcomSurProductos.EcomSurProductos.dbo.BDUsuarios
GO


USE EcomSurProductos;
GO

CREATE VIEW dbo.ProductosUsuarios 
GO

AS
