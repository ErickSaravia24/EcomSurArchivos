USe EcomSurUsuarios
EXEC dbo.spInsertarUsuario
    @fcNombre = 'Juan',
    @fcAmaterno = 'Pérez',
    @fcApaterno = 'González',
    @fcCalle = 'Calle 123',
    @fcNumero = '456',
    @fcColonia = 'Colonia Centro',
    @fcFechaCreacion = '2023-04-12 11:00:00',
    @fcCorreo = 'juan.perez@example.com',
    @fcPassword = 'mypassword',
    @fiIdRol = 1;

	INSERT INTO EcomSurUsuarios.dbo.BDRoles (fiName) VALUES ( 'Admin');
INSERT INTO EcomSurUsuarios.dbo.BDRoles ( fiName) VALUES ( 'Worker');
INSERT INTO EcomSurUsuarios.dbo.BDRoles ( fiName) VALUES ( 'Client');

INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Ver productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Editar productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Eliminar productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Ver usuarios');
	

INSERT INTO dbo.BDRolesPermisos(fiIdRol, fiIdPermiso)
VALUES (1, 1), (1, 2), (1, 3), (1, 4), 
	   (2, 1), (2, 2), (2, 3), 
		(3, 1)


		DELETE FROM dbo.BDPermisos
		DELETE FROM dbo.BDRoles
		DELETE FROM dbo.BDRolesPermisos
		 DELETE FROM EcomSurUsuarios.dbo.BDUsuarios 
		 DELETE FROM EcomSurProductos.dbo.BDUsuarios 
		select * from dbo.BDPermisos
		select * from dbo.BDRoles
			select * from dbo.BDRolesPermisos

			SELECT 
    EU.fcNombre,
    EU.fcApaterno,
    EU.fcAmaterno,
    EU.fcCalle,
    EU.fcNumero,
    EU.fcColonia,
    EU.fcFechaCreacion,
    EU.fcCorrero,
	EU.fcPassword
  
FROM 
    EcomSurUsuarios.dbo.BDUsuarios EU
    INNER JOIN EcomSurProductos.dbo.BDUsuarios EP ON EU.fiUsuarioId = EP.fiUsuarioId


	select * from EcomSurUsuarios.dbo.BDUsuarios
	select * from EcomSurProductos.dbo.BDUsuarios
