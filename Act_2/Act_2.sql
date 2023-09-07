/* Para accerder a la base de datos */
mysql -h localhost -u root -p 
/*Para crear una base de datos*/
CREATE DATABASE blog;
/*Designar que base de datos va a utilizar*/
USE blog;
/*Crear la tabla de la base de datos*/

CREATE TABLE IF NOT EXISTS usuarios (
    usuarios_id INTEGER UNSIGNED AUTO_INCREMENT,
    login VARCHAR(30) NOT NULL,
    password  VARCHAR(30) NOT NULL,
    nickname VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    PRIMARY KEY (usuarios_id)
);


CREATE TABLE IF NOT EXISTS categorias (
    categorias_id INTEGER UNSIGNED AUTO_INCREMENT,
    categoria VARCHAR(30),
    PRIMARY KEY (categorias_id)
);

CREATE TABLE IF NOT EXISTS etiquetas (
    etiquetas_id INTEGER UNSIGNED AUTO_INCREMENT,
    nombre_etiqueta VARCHAR(30),
    PRIMARY KEY (etiquetas_id)
);
CREATE TABLE IF NOT EXISTS posts (
    post_id INTEGER UNSIGNED AUTO_INCREMENT,
    titulo VARCHAR (150),
    fecha_publicacion TIMESTAMP,
    contenido TEXT,
    estatus CHAR(8),
    PRIMARY KEY (post_id)
);
ALTER TABLE posts ADD usuario_id INTEGER;
ALTER TABLE posts ADD categoria_id INTEGER; 

CREATE TABLE IF NOT EXISTS comentarios(
    comentarios_id INTEGER,
    comentario TEXT,
    PRIMARY KEY (comentarios_id)

);
ALTER TABLE comentarios ADD usuario_id INTEGER;
ALTER TABLE comentarios ADD post_id_id INTEGER; 

CREATE TABLE IF NOT EXISTS post_etiquetas(
    post_etiquetas_id INTEGER UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY (post_etiquetas_id)
);
ALTER TABLE post_etiquetas ADD post_id INTEGER;
ALTER TABLE post_etiquetas ADD etiquetas_id INTEGER;

ALTER TABLE posts ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(usuarioid);
ALTER TABLE posts ADD FOREIGN KEY (categoria_id) REFERENCES categorias(categoriasid);

ALTER TABLE  comentarios ADD FOREIGN KEY (usuario_id) REFERENCES comentarios(comentarios_id);
ALTER TABLE comentarios ADD FOREIGN KEY (post_id_id) REFERENCES posts(post_id);

ALTER TABLE posts CHANGE  post_id post_id INTEGER;

ALTER TABLE post_etiquetas ADD FOREIGN KEY ( etiquetas_id) REFERENCES etiquetas(etiquetasid);
ALTER TABLE post_etiquetas CHANGE  post_etiquetas_id post_etiquetas_id INTEGER;

ALTER TABLE post_etiquetas ADD FOREIGN KEY (post_id) REFERENCES posts(post_id);

/*Borrar*/
ALTER TABLE usuarios DROP COLUMN login;

/*Agregar*/

ALTER TABLE usuarios ADD name VARCHAR(30) NOT NULL;
ALTER TABLE usuarios ADD `lastName` VARCHAR(30) NOT NULL;
ALTER TABLE usuarios ADD company VARCHAR(30) NOT NULL;
ALTER TABLE usuarios ADD phone INTEGER(12) NOT NULL;
ALTER TABLE usuarios ADD country VARCHAR(30) NOT NULL;
ALTER TABLE usuarios ADD postCode INTEGER(5) NOT NULL;

/*Agregar tabla post 250 caracteres */
ALTER TABLE posts MODIFY COLUMN contenido VARCHAR(250);

/*Agregar el UNIQUE*/

ALTER TABLE usuarios MODIFY COLUMN nickname VARCHAR(30) UNIQUE;

ALTER TABLE usuarios ADD Age INTEGER(3) NOT NULL;

ALTER TABLE usuarios ADD CONSTRAINT  Age CHECK (Age>=18);

/*Crear tabla de mensajeria */

CREATE TABLE  IF NOT EXISTS mensajeria (
    mensaje_id INTEGER,
    emisor VARCHAR(30),
    receptor VARCHAR(30),
    fecha_de_creacion TIMESTAMP
) ;

ALTER TABLE mensajeria MODIFY COLUMN emisor VARCHAR(30) NOT NULL;
ALTER TABLE mensajeria MODIFY COLUMN receptor VARCHAR(30) NOT NULL;
ALTER TABLE mensajeria MODIFY COLUMN mensaje_id VARCHAR(30) PRIMARY KEY;