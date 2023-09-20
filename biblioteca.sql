CREATE TABLE public.alumnos
(
    id_alumno serial NOT NULL,
    nombre_alumno character varying(35) NOT NULL,
    apellido_alumno character varying(35) NOT NULL,
    CONSTRAINT id_alumno_pk PRIMARY KEY (id_alumno)
);

ALTER TABLE IF EXISTS public.alumnos
    OWNER to postgres;


CREATE TABLE public.libros
(
    id_libros serial NOT NULL,
    titulo_libros character varying(100) NOT NULL,
    autor_libros character varying(100) NOT NULL,
    fecha_publicacion_libros timestamp without time zone NOT NULL,
    CONSTRAINT id_libros_pk PRIMARY KEY (id_libros)
);

ALTER TABLE IF EXISTS public.libros
    OWNER to postgres;

CREATE TABLE public.direcciones
(
    id_direccion serial NOT NULL,
    calle_direccion character varying(30) NOT NULL,
    ciudad_direccion character varying(30) NOT NULL,
    estado_direccion character varying(30) NOT NULL,
    CONSTRAINT id_direccion_pk PRIMARY KEY (id_direccion)
);

ALTER TABLE IF EXISTS public.direcciones
    OWNER to postgres;

CREATE TABLE public.resenas
(
    id_resena serial NOT NULL,
    id_alumno integer,
    id_libro integer,
    contenido_resena character varying(255) NOT NULL,
    fecha_publicacion_resena timestamp without time zone NOT NULL,
    CONSTRAINT id_resena_pk PRIMARY KEY (id_resena),
    CONSTRAINT id_libro_fk FOREIGN KEY (id_libro)
        REFERENCES public.libros (id_libro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_alumno_fk FOREIGN KEY (id_alumno)
        REFERENCES public.alumnos (id_alumno) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.resenas
    OWNER to postgres;

ALTER TABLE IF EXISTS public.libros
    ADD COLUMN isdn_libro integer NOT NULL;

CREATE TABLE public.prestamos
(
    id_prestamo serial NOT NULL,
    id_alumno integer NOT NULL,
    id_libro integer NOT NULL,
    fecha_inicio_prestamo timestamp without time zone NOT NULL,
    fecha_regreso_prestamo timestamp without time zone NOT NULL,
    CONSTRAINT id_prestamo_pk PRIMARY KEY (id_prestamo),
    CONSTRAINT id_alumno_fk FOREIGN KEY (id_alumno)
        REFERENCES public.alumnos (id_alumno) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_libro_fk FOREIGN KEY (id_libro)
        REFERENCES public.libros (id_libro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.prestamos
    OWNER to postgres;
