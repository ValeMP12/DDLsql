--Clase De Formación Cívica y Ética 
SELECT * FROM alumnos WHERE nombre_alumno LIKE 'W%';
SELECT * FROM alumnos WHERE apellido_alumno LIKE '%che';
SELECT * FROM alumnos WHERE apellido_alumno IN ('Al') AND apellido_alumno IN ('m') ;
SELECT * FROM alumnos WHERE apellido_alumno LIKE '%Al'AND nombre_alumno LIKE '%a';
SELECT COUNT (id_libro) FROM libros WHERE precio = 50;
SELECT * FROM alumnos ;
SELECT COUNT (id_alumno) FROM alumnos WHERE nombre_alumno = 'Stepha';
SELECT MIN (precio) FROM libros;
SELECT MAX (precio) FROM libros;
SELECT SUM (precio) FROM libros WHERE id_libro >0;
SELECT AVG (precio) FROM libros WHERE id_libro >0;
SELECT COUNT (id_direccion), estado_direccion FROM direcciones GROUP BY estado_direccion ORDER BY COUNT (id_direccion)ASC;
SELECT COUNT (id_libro), precio FROM libros GROUP BY precio ORDER BY COUNT (id_libro)ASC;
SELECT * FROM alumnos LEFT JOIN resenas ON alumnos.id_alumno = resenas.id_alumno;
SELECT * FROM resenas RIGHT JOIN alumnos ON resenas.id_alumno = alumnos.id_alumno;
SELECT * FROM libros LEFT JOIN prestamos ON libros.id_libro = prestamos.id_libro; 
SELECT * FROM libros INNER JOIN prestamos ON libros.id_libro = prestamos.id_libro; 
SELECT * FROM libros FULL OUTER JOIN prestamos ON libros.id_libro = prestamos.id_libro; 
SELECT SUM (precio) AS suma_precio FROM libros HAVING SUM (precio) > 1000;





SELECT * FROM libros WHERE precio > (SELECT AVG (precio) FROM libros WHERE id_libro >0);
SELECT contenido_resena FROM resenas WHERE fecha_publicacion_resena < '2023/12/31';
SELECT * FROM libros WHERE precio > (SELECT AVG (precio) FROM libros WHERE id_libro >0);
SELECT * FROM libros WHERE precio NOT IN (SELECT AVG (precio) FROM libros WHERE id_libro >0);
--SELECT * FROM alumnos WHERE nombre_alumno NOT IN (SELECT (direcciones) FROM estado_direccion WHERE 'Aguascalientes');
SELECT * FROM "miPromedio";
SELECT * FROM "fecha";
DELETE FROM resenas WHERE id_resena = 101;
SELECT * FROM "fecha";
SELECT * FROM "mifechadepublicacionestatica";
REFRESH MATERIALIZED VIEW "mifechadepublicacionestatica";
SELECT * FROM "mifechadepublicacionestatica";
DELETE FROM resenas WHERE id_resena BETWEEN 74 AND 80;
