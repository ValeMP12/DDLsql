/* Para accerder a la base de datos */
mysql -h localhot -u root -p 

    
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
