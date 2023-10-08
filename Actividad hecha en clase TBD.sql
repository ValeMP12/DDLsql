





CREATE database blog;

CREATE table usuarios(
usuarioid INTEGER NOT NULL AUTO_INCREMENT, 
login VARCHAR(30) NOT NULL,
password VARCHAR(32) NOT NULL,
nickname VARCHAR(40) NOT NULL,
email VARCHAR(40) NOT NULL UNIQUE,
PRIMARY KEY (usuarioid) 

);

CREATE table etiquetas(
etiquetasid INTEGER NOT NULL AUTO_INCREMENT,
nombre_etiquetas VARCHAR(30),
PRIMARY KEY (etiquetasid) 

);

CREATE table categorias(
categoriasid INTEGER NOT NULL AUTO_INCREMENT,
categoria VARCHAR(30),
PRIMARY KEY (categoriasid) 

);