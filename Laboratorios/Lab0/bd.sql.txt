CREATE TABLE IF NOT EXISTS Log_Figura_Publica (
  `id_log_afinidad_politica` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_figura_publica` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Figura_Plataforma (
  `id_figura_plataforma` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_figura_publica` bigint NOT NULL,
  `id_plataforma` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Afinidad_Politica (
  `id_afinidad_politica` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `afinidad` tinytext NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Usuario (
  `id_log_usuario` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_usuario` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `usuario_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Plataforma (
  `id_log_plataforma` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_plataforma` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Tipo_Documento_Identidad (
  `id_tipo_documento` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `abreviatura` tinytext NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `vigente` TINYINT(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS Figura_Publica (
  `id_figura_publica` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `alias` text,
  `vigente` TINYINT(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Figura_Plataforma (
  `id_log_figura_plataforma` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_figura_plataforma` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Figura_Afinidad (
  `id_figura_afinidad` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_figura_publica` bigint NOT NULL,
  `id_afinidad_politica` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Tipo_Documento (
  `id_log_tipo_documento` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_tipo_documento` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Figura_Afinidad (
  `id_log_figura_afinidad` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_figura_afinidad` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Log_Afinidad (
  `id_log_afinidad_politica` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_afinidad_politica` bigint NOT NULL,
  `tipo_sentencia` tinytext NOT NULL,
  `campo_afectado` tinytext NOT NULL,
  `valor_antiguo` text,
  `valor_nuevo` text,
  `fecha` datetime NOT NULL,
  `dev_proceso` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS Plataforma (
  `id_plataforma` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` tinytext NOT NULL,
  `vigente` TINYINT(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS Usuario (
  `id_usuario` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_tipo_documento` bigint NOT NULL,
  `numero_documento` numeric NOT NULL,
  `nombre_1` text NOT NULL,
  `nombre_2` text,
  `apellido_1` text NOT NULL,
  `apellido_2` text,
  `correo_electronico` text NOT NULL,
  `clave` text NOT NULL,
  `vigente` TINYINT(1) NOT NULL
);

ALTER TABLE Figura_Afinidad ADD CONSTRAINT Figura_Afinidad_id_afinidad_politica_fk FOREIGN KEY (`id_afinidad_politica`) REFERENCES Afinidad_Politica (`id_afinidad_politica`);
ALTER TABLE Figura_Afinidad ADD CONSTRAINT Figura_Afinidad_id_figura_publica_fk FOREIGN KEY (`id_figura_publica`) REFERENCES Figura_Publica (`id_figura_publica`);
ALTER TABLE Figura_Plataforma ADD CONSTRAINT Figura_Plataforma_id_figura_publica_fk FOREIGN KEY (`id_figura_publica`) REFERENCES Figura_Publica (`id_figura_publica`);
ALTER TABLE Figura_Plataforma ADD CONSTRAINT Figura_Plataforma_id_plataforma_fk FOREIGN KEY (`id_plataforma`) REFERENCES Plataforma (`id_plataforma`);
ALTER TABLE Log_Afinidad ADD CONSTRAINT Log_Afinidad_id_afinidad_politica_fk FOREIGN KEY (`id_afinidad_politica`) REFERENCES Afinidad_Politica (`id_afinidad_politica`);
ALTER TABLE Log_Figura_Afinidad ADD CONSTRAINT Log_Figura_Afinidad_id_figura_afinidad_fk FOREIGN KEY (`id_figura_afinidad`) REFERENCES Figura_Afinidad (`id_figura_afinidad`);
ALTER TABLE Log_Figura_Plataforma ADD CONSTRAINT Log_Figura_Plataforma_id_figura_plataforma_fk FOREIGN KEY (`id_figura_plataforma`) REFERENCES Figura_Plataforma (`id_figura_plataforma`);
ALTER TABLE Log_Figura_Publica ADD CONSTRAINT Log_Figura_Publica_id_figura_publica_fk FOREIGN KEY (`id_figura_publica`) REFERENCES Figura_Publica (`id_figura_publica`);
ALTER TABLE Log_Plataforma ADD CONSTRAINT Log_Plataforma_id_plataforma_fk FOREIGN KEY (`id_plataforma`) REFERENCES Plataforma (`id_plataforma`);
ALTER TABLE Log_Tipo_Documento ADD CONSTRAINT Log_Tipo_Documento_id_tipo_documento_fk FOREIGN KEY (`id_tipo_documento`) REFERENCES Tipo_Documento_Identidad (`id_tipo_documento`);
ALTER TABLE Log_Usuario ADD CONSTRAINT Log_Usuario_id_usuario_fk FOREIGN KEY (`id_usuario`) REFERENCES Usuario (`id_usuario`);
ALTER TABLE Usuario ADD CONSTRAINT Usuario_id_tipo_documento_fk FOREIGN KEY (`id_tipo_documento`) REFERENCES Tipo_Documento_Identidad (`id_tipo_documento`);