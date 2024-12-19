-- CRUD para la tabla Figura_Publica

-- CREATE: Insertar un nuevo registro
INSERT INTO Figura_Publica (nombre, apellido, alias, vigente)
VALUES ('Juan', 'Pérez', 'El Analista', 1);
INSERT INTO Figura_Publica (nombre, apellido, alias, vigente)
VALUES ('Maria', 'Jimenez', 'Mari_22', 1);

-- READ: Leer todos los registros
SELECT * FROM Figura_Publica;

-- READ: Leer un registro específico
SELECT * FROM Figura_Publica WHERE id_figura_publica = 1;

-- UPDATE: Actualizar un registro específico
UPDATE Figura_Publica
SET alias = 'El Investigador', vigente = 0
WHERE id_figura_publica = 1;

-- DELETE: Eliminar un registro específico
DELETE FROM Figura_Publica
WHERE id_figura_publica = 1;

-- CRUD para la tabla Plataforma

-- CREATE: Insertar un nuevo registro
INSERT INTO Plataforma (nombre, vigente)
VALUES ('Twitter', 1);
INSERT INTO Plataforma (nombre, vigente)
VALUES ('Facebook', 1);

-- READ: Leer todos los registros
SELECT * FROM Plataforma;

-- READ: Leer un registro específico
SELECT * FROM Plataforma WHERE id_plataforma = 1;

-- UPDATE: Actualizar un registro específico
UPDATE Plataforma
SET nombre = 'X'
WHERE id_plataforma = 1;

-- DELETE: Eliminar un registro específico
DELETE FROM Plataforma
WHERE id_plataforma = 1;


-- CRUD para la tabla Tipo Documento Identidad
-- CREATE: Insertar un nuevo registro
INSERT INTO tipo_documento_identidad (id_tipo_documento, abreviatura, descripcion, vigente)
VALUES (1, 'CC', 'Cédula de Ciudadanía', 1);


-- CRUD para la tabla Usuario

-- CREATE: Insertar un nuevo registro
INSERT INTO Usuario (id_tipo_documento, numero_documento, nombre_1, nombre_2, apellido_1, apellido_2, correo_electronico, clave, vigente)
VALUES (1, 12345678, 'Carlos', 'Eduardo', 'Ramírez', 'López', 'carlos.ramirez@example.com', 'clave123', 1);

-- READ: Leer todos los registros
SELECT * FROM Usuario;

-- READ: Leer un registro específico
SELECT * FROM Usuario WHERE id_usuario = 1;

-- UPDATE: Actualizar un registro específico
UPDATE Usuario
SET correo_electronico = 'carlos.actualizado@example.com', clave = 'PW5678'
WHERE id_usuario = 1;

-- DELETE: Eliminar un registro específico
DELETE FROM Usuario
WHERE id_usuario = 1;

-- CRUD para la tabla Afinidad_Politica

-- CREATE: Insertar un nuevo registro
INSERT INTO Afinidad_Politica (afinidad)
VALUES ('Progresista');

-- READ: Leer todos los registros
SELECT * FROM Afinidad_Politica;

-- READ: Leer un registro específico
SELECT * FROM Afinidad_Politica WHERE id_afinidad_politica = 1;

-- UPDATE: Actualizar un registro específico
UPDATE Afinidad_Politica
SET afinidad = 'Conservador'
WHERE id_afinidad_politica = 1;

-- DELETE: Eliminar un registro específico
DELETE FROM Afinidad_Politica
WHERE id_afinidad_politica = 1;


