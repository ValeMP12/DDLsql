INSERT INTO blog.usuarios (password,nickname,email,name,lastName,company,phone,country,postCode,Age)
VALUES
    ('password1','user1','user1@email.com','John','Doe','Company1',1234567890,'USA',12345, 30),
    ('password2','user2','user2@email.com','Jane','Smith','Company2',9876543210,'Canada',67890,25),
    ('password3','user3','user3@email.com','Mike','Johnson','Company3',5555555555,'UK',54321,35),
    ('password4','user4','user4@email.com','Sara','Williams','Company4',1111111111,'Australia',98765,28),
    ('password5','user5','user5@email.com','David','Brown','Company5',9999999999,'Germany',12345,32),
    ('password6','user6','user6@email.com','Emily','Jones','Company6',777777777,'France',67890,29),
    ('password7','user7','user7@email.com','Chris','Miller','Company7',3333333333,'Spain',54321,31),
    ('password8','user8','user8@email.com','Lisa','Davis','Company8',2222222222,'Italy',98765,27),
    ('password9','user9','user9@email.com','Tom','Wilson','Company9',6666666666,'Japan',12345,26),
    ('password10','user10','user10@email.com','Anna','Moore','Company10',4444444444,'Brazil',7890,33);
 ALTER TABLE blog.usuarios modify column phone int(15);
 ALTER TABLE blog.posts MODIFY COLUMN   post_id INT;
 

INSERT INTO
    blog.POSTS (titulo, fecha_publicacion, contenido, estatus)
VALUES
    (
        'Nuevo avance en la lucha contra el cambio climático',
        '2023-09-13',
        'Científicos descubren una nueva forma de capturar carbono en la atmósfera.',
        'ACTIVO'
    );

-- Noticia 2
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (1,
        'Descubren una nueva especie de mariposa en la selva amazónica',
        '2023-09-13',
        'Un equipo de biólogos ha encontrado una mariposa nunca antes vista en la región.',
        'ACTIVO'
    );

-- Noticia 3
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (2,
        'Lanzamiento exitoso del primer hotel en el espacio',
        '2023-09-13',
        'La primera estación espacial hotelera abre sus puertas para turistas adinerados.',
        'ACTIVO'
    );

-- Noticia 4
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (3,
        'Nueva vacuna contra enfermedades emergentes',
        '2023-09-13',
        'Investigadores desarrollan una vacuna prometedora contra enfermedades virales desconocidas.',
        'ACTIVO'
    );

-- Noticia 5
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (4,
        'Descubren ruinas antiguas en el fondo del océano',
        '2023-09-13',
        'Un equipo de arqueólogos submarinos encuentra evidencia de una antigua civilización.',
        'ACTIVO'
    );

-- Noticia 6
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (5,
        'Innovación en la industria de la tecnología',
        '2023-09-13',
        'Una startup revoluciona la forma en que usamos la tecnología cotidiana.',
        'ACTIVO'
    );

-- Noticia 7
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (6,
        'Descubrimiento de un nuevo planeta habitable',
        '2023-09-13',
        'Astrónomos encuentran un planeta que podría albergar vida similar a la Tierra.',
        'ACTIVO'
    );

-- Noticia 8
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (7,
        'Avance en la cura del cáncer',
        '2023-09-13',
        'Investigadores hacen un importante avance en la búsqueda de una cura definitiva para el cáncer.',
        'ACTIVO'
    );

-- Noticia 9
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (8,
        'Desarrollo de la inteligencia artificial en la medicina',
        '2023-09-13',
        'La IA está ayudando a diagnosticar enfermedades de manera más precisa y rápida.',
        'ACTIVO'
    );

-- Noticia 10
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (9,
        'Lanzamiento de un nuevo satélite de comunicaciones',
        '2023-09-13',
        'El satélite promete mejorar las comunicaciones en áreas remotas del mundo.',
        'ACTIVO'
    );

-- Noticia 11
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (10,
        'Investigación revela nuevos secretos sobre los dinosaurios',
        '2023-09-13',
        'Científicos descubren detalles fascinantes sobre la vida de los dinosaurios.',
        'ACTIVO'
    );

-- Noticia 12
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (11,
        'Desarrollo de energía renovable en crecimiento',
        '2023-09-13',
        'Las fuentes de energía limpia están ganando terreno en todo el mundo.',
        'ACTIVO'
    );

-- Noticia 13
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (12,
        'Nuevos avances en la exploración espacial',
        '2023-09-13',
        'Las misiones espaciales revelan datos emocionantes sobre el cosmos.',
        'ACTIVO'
    );

-- Noticia 14
INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (13,
        'Descubrimiento de una nueva especie de dinosaurio',
        '2023-09-13',
        'Paleontólogos encuentran restos de un dinosaurio completamente desconocido.',
        'ACTIVO'
    );


INSERT INTO
    blog.POSTS (post_id,titulo, fecha_publicacion, contenido, estatus)
VALUES
    (14,
        'Metro CDMX hoy 13 de septiembre: reportan humo en Línea 3 dirección Indios Verdes',
        '2023-09-16',
        'Pasajeros del Metro reportan humo en tren correspondiente a la Línea 3 (dirección Indios Verdes), supuestamente habría iniciado desde la estación Balderas.',
        'ACTIVO'
    );
    
    INSERT INTO blog.usuarios (password, nickname, email, name, lastName,company,phone,country,postCode,Age)
VALUES
    ('67890','Maria','mari@gmail.com','Maria','Gonzalez','TechCorp',5551234567,'Estados Unidos',90210,28),
    ('13579','Carlos','carlos@gmail.com','Carlos','Juarez','DataTech',1234529790,'México',12345,40),
    ('24680','Ana','ana@gmail.com','Ana','Cañedo','SoftDev',9886543210,'España',28001,32),
    ('98765','Pedro','pedro@gmail.com','Pedro','Martinez','CodeMasters',4445556666,'Argentina',1001,25),
    ('54321','Laura','laura@gmail.com','Laura','Pelayo','ByteSolutions',987638621,'Colombia',110111,30),
    ('11111','Sofía','sofia@gmail.com','Sofía','Orozco','TechGenius',1112223333,'Chile',7654321,22),
    ('22222','Diego','diego@gmail.com','Diego','Sanchez','InnovaTech',2223334444,'Perú',54321,35),
    ('33333','Luis','luis@gmail.com','Luis','Camarena','WebWizards',3334445555,'Ecuador',123456,29),
    ('44444','Carmen','carmen@gmail.com','Carmen','Santana','CodeCrafters',4445556666,'Brasil',987654,27),
    ('55555','Marta','marta@gmail.com','Marta','Regalado','FutureTech',5556667777,'Venezuela',654321,33);

    INSERT INTO blog.categorias(Categoria)
VALUES
('categoria 1'),
('categoria 2'),
('categoria 3'),
('categoria 4'),
('categoria 5'),
('categoria 6'),
('categoria 7'),
('categoria 8'),
('categoria 9'),
('categoria 10'),
('categoria 11'),
('categoria 12'),
('categoria 13'),
('categoria 14'),
('categoria 15'),
('categoria 16'),
('categoria 17'),
('categoria 18'),
('categoria 19'),
('categoria 20');

INSERT INTO blog.etiquetas (nombre_etiquetas)
VALUES 
('tuba'),
('trompeta'), 
('clarinete'),
('tarola'),
('tambora'),
('baquetas'),
('triangulo'),
('bateria'),
('flauta'),
('violin'),
('tololoche'),
('bajo sexto'),
('guitarra'),
('saxor'),
('congas'),
('wiro'),
('timbales'),
('saxofon'),
('trombon'),
('acordeon');

insert into blog.comentarios (comentarios_id, comentario)
Values
(1,'comentario1'),
(2,'comentario2'),
(3,'comentario3'),
(4,'comentario4'),
(5,'comentario5'),
(6,'comentario6'),
(7,'comentario7'),
(8,'comentario8'),
(9,'comentario9'),
(10,'comentario10');