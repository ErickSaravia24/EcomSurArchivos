USe EcomSurUsuarios

INSERT INTO EcomSurUsuarios.dbo.BDRoles (fiName) VALUES ( 'Admin');
INSERT INTO EcomSurUsuarios.dbo.BDRoles ( fiName) VALUES ( 'Worker');
INSERT INTO EcomSurUsuarios.dbo.BDRoles ( fiName) VALUES ( 'Client');

INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Ver productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Editar productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Eliminar productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Ver usuarios');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Agregar productos');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Agregar usuarios');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'Editar usuarios');
INSERT INTO dbo.BDPermisos (fiName) VALUES ( 'eliminar usuarios');
	
INSERT INTO dbo.BDRolesPermisos(fiIdRol, fiIdPermiso)
VALUES (1, 1), (1, 2), (1, 3), (1, 4),(1, 5), (1, 6),(1, 7),(1, 8),
	   (2, 1), (2, 2), (2, 3), (2, 5),
		(3, 1)


