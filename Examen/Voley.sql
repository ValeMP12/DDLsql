/* Para accerder a la base de datos */
mysql -h localhot -u root -p 

    
/*Para crear una base de datos*/
CREATE DATABASE voley;
/*Designar que base de datos va a utilizar*/
USE voley;
/*Crear la tabla de la base de datos*/

CREATE TABLE IF NOT EXISTS Partidos(
    id_partido INTEGER NOT NULL,
    fecha TIMESTAMP NOT NULL  ,
    equipo_local VARCHAR(15) NOT NULL,
    equipo_visitante VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_partido)
);

CREATE TABLE IF NOT EXISTS Entrenadores(
    id_entrenador INTEGER NOT NULL,
    nombre_equipo VARCHAR(15) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_entrenador)
);

CREATE TABLE IF NOT EXISTS Arbitros(
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    id_arbitro INTEGER NOT NULL,
    Telefono INTEGER(12) NOT NULL,
    id_partido INTEGER NOT NULL,
    PRIMARY KEY (id_arbitro),
    FOREIGN KEY (id_partido) REFERENCES Partidos(id_partido)
);

CREATE TABLE IF NOT EXISTS Equipos(
    id_equipos INTEGER NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    id_entrenador INTEGER NOT NULL,
    PRIMARY KEY (id_equipos),
    FOREIGN KEY (id_entrenador) REFERENCES Entrenadores(id_entrenador)
);

CREATE TABLE IF NOT EXISTS Estadisticas(
    id_estadisticas INTEGER NOT NULL,
    Asistencias INTEGER(4) NOT NULL,
    Bloqueos INTEGER(4) NOT NULL,
    Ataques INTEGER(4) NOT NULL,
    Aces INTEGER(3) NOT NULL,
    Errores INTEGER(4) NOT NULL,
    id_partido INTEGER NOT NULL,
    PRIMARY KEY (id_estadisticas),
    FOREIGN KEY (id_partido) REFERENCES Partidos(id_partido)
);

CREATE TABLE IF NOT EXISTS Jugadores(
    id_jugador INTEGER NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    Domicilio VARCHAR(30) NOT NULL,
    Telefono INT(12)NOT NULL,
    #Jugador INT(3) NOT NULL,
    Equipo VARCHAR(20) NOT NULL,
    id_estadisticas INTEGER NOT NULL,
    id_equipos INTEGER NOT NULL,
    PRIMARY KEY (id_jugador),
    FOREIGN KEY (id_estadisticas) REFERENCES Estadisticas(id_estadisticas),
    FOREIGN KEY (id_equipos) REFERENCES Equipos(id_equipos)
);