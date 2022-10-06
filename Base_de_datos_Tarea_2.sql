--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-10-05 22:29:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3350 (class 1262 OID 16402)
-- Name: Estudiantes_CC; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Estudiantes_CC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "Estudiantes_CC" OWNER TO postgres;

\connect "Estudiantes_CC"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16408)
-- Name: Libro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Libro" (
    id_libro integer NOT NULL,
    titulo text NOT NULL,
    autor text NOT NULL,
    paginas integer,
    sede text
);


ALTER TABLE public."Libro" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16415)
-- Name: datos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos (
    dni bigint NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    direccion character varying(100),
    fecha_nacimient date
);


ALTER TABLE public.datos OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16445)
-- Name: edificios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.edificios (
    id_edificio integer NOT NULL,
    nombre_edificio text NOT NULL,
    facultad text,
    programa_curricular text
);


ALTER TABLE public.edificios OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16432)
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horario (
    id_horario bigint NOT NULL,
    id_estudiante integer,
    id_materia integer,
    hora time with time zone
);


ALTER TABLE public.horario OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16420)
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    codigo bigint NOT NULL,
    nombre_materia character varying,
    numero_creditos bigint,
    cupos bigint,
    edificio integer
);


ALTER TABLE public.materias OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16427)
-- Name: semilleros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.semilleros (
    codigo bigint NOT NULL,
    nombre text,
    id_lider bigint,
    facultad text NOT NULL
);


ALTER TABLE public.semilleros OWNER TO postgres;

--
-- TOC entry 3339 (class 0 OID 16408)
-- Dependencies: 209
-- Data for Name: Libro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (7425896, 'Algebra Lineal', 'Grossman', 500, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (7598454, 'Introduccion a las Bases de datos', 'Alan Person', 678, 'Medellin');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (7854854, 'Calculo Vectorial', 'Tromba', 765, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (7985452, 'Introduction to set theory', 'Hrbacek Jech', 420, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (3698520, 'Computer Algebra, Concepts and Techniques', 'E. A. Lamagna. ', 369, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (9865574, 'Algorithms for Computer Algebra', 'K.O. Geddes,  S. R. Czapor, G. Labahn', 789, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (7425612, 'Computational Number Theory', 'A. Das', 685, 'Bogota');
INSERT INTO public."Libro" (id_libro, titulo, autor, paginas, sede) VALUES (8574545, 'Computer Algebra, An Algorithm-Oriented Introduction. Springer', 'W. Koepf.', 482, 'Medellin');


--
-- TOC entry 3340 (class 0 OID 16415)
-- Dependencies: 210
-- Data for Name: datos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1031148677, 'Tania Vanesa', 'Perez', 'Carrera 5 No 85 -27', '1990-08-08');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1031148607, 'Vanesa', 'Parra', 'Carrera 15 No 5 -71', '1995-08-08');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1010596802, 'Andres', 'Casas', 'Calle 78 No 9 -1', '2000-01-09');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1032856345, 'Victor', 'Peña', 'Carrera 151 No 15 -19', '2001-11-12');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1031148907, 'Camila Carolina', 'Cardenas', 'Av 15 No 81 -51', '1995-08-13');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1031848609, 'David', 'Herrera', 'Carrera 24 No 45A -28', '1998-01-01');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1131144600, 'Alan', 'Acosta', 'Carrera 7 No 5 -71 Cota', '1993-05-24');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1010155854, 'Mateo', 'Rojas', 'Carrera 45 No 49A -2', '1990-03-01');
INSERT INTO public.datos (dni, nombre, apellido, direccion, fecha_nacimient) VALUES (1131143330, 'Oscar', 'Acosta', 'Calle 7 No 51 -85', '2004-05-15');


--
-- TOC entry 3344 (class 0 OID 16445)
-- Dependencies: 214
-- Data for Name: edificios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.edificios (id_edificio, nombre_edificio, facultad, programa_curricular) VALUES (405, 'YU Takeuchi', 'Ciencias', 'Matematicas');
INSERT INTO public.edificios (id_edificio, nombre_edificio, facultad, programa_curricular) VALUES (404, 'Posgrados Fisica y Matematicas', 'Ciencias', 'Fisica');
INSERT INTO public.edificios (id_edificio, nombre_edificio, facultad, programa_curricular) VALUES (401, 'Edifcio Ingenieria Viejo', 'Ingenieria', 'Ingenieria Sistemas');


--
-- TOC entry 3343 (class 0 OID 16432)
-- Dependencies: 213
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (1, 1031148607, 145256, '09:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (2, 1031148607, 745854, '07:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (3, 1010596802, 145256, '11:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (4, 1032856345, 145256, '08:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (5, 1032856345, 745854, '11:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (6, 1031848609, 278487, '14:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (7, 1131144600, 298548, '14:00:00-05');
INSERT INTO public.horario (id_horario, id_estudiante, id_materia, hora) VALUES (8, 1031148907, 298476, '16:00:00-05');


--
-- TOC entry 3341 (class 0 OID 16420)
-- Dependencies: 211
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (145256, 'Fundamentos de Matematicas', 4, 60, 404);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (741589, 'Sistemas Numericos', 4, 60, 405);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (785413, 'Introduccion a la Programacion y a las Ciencias de las Computacion', 3, 80, 404);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (745854, 'Algebra Lineal Basica', 4, 40, 405);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (100085, 'Programacion Orientada a Objetos', 3, 100, 401);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (285475, 'Introduccion a la Teoria de Conjuntos', 4, 50, 404);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (298548, 'Analis Numerico', 4, 20, 405);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (278487, 'Introduccion a la Teoria de la Computacion', 4, 15, 401);
INSERT INTO public.materias (codigo, nombre_materia, numero_creditos, cupos, edificio) VALUES (298476, 'Criptografia', 3, 45, 405);


--
-- TOC entry 3342 (class 0 OID 16427)
-- Dependencies: 212
-- Data for Name: semilleros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.semilleros (codigo, nombre, id_lider, facultad) VALUES (1452, 'DIARC  Semliilero inteligencia Artificial y ciencias conductuales
', 1031148607, 'Ciencias');
INSERT INTO public.semilleros (codigo, nombre, id_lider, facultad) VALUES (748, 'Ciberseguridad', 1010596802, 'Ingenieria');
INSERT INTO public.semilleros (codigo, nombre, id_lider, facultad) VALUES (4458, 'Biotecnologia', 1031848609, 'Ciencias');


--
-- TOC entry 3184 (class 2606 OID 16414)
-- Name: Libro Libro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT "Libro_pkey" PRIMARY KEY (id_libro);


--
-- TOC entry 3186 (class 2606 OID 16419)
-- Name: datos datos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (dni);


--
-- TOC entry 3196 (class 2606 OID 16451)
-- Name: edificios edificios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edificios
    ADD CONSTRAINT edificios_pkey PRIMARY KEY (id_edificio);


--
-- TOC entry 3192 (class 2606 OID 16478)
-- Name: horario horario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id_horario);


--
-- TOC entry 3194 (class 2606 OID 16480)
-- Name: horario id_horario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT id_horario UNIQUE (id_horario);


--
-- TOC entry 3188 (class 2606 OID 16426)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3190 (class 2606 OID 16460)
-- Name: semilleros semilleros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semilleros
    ADD CONSTRAINT semilleros_pkey PRIMARY KEY (codigo, facultad);


--
-- TOC entry 3197 (class 2606 OID 16452)
-- Name: materias fk_edifcio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT fk_edifcio FOREIGN KEY (edificio) REFERENCES public.edificios(id_edificio) NOT VALID;


--
-- TOC entry 3198 (class 2606 OID 16461)
-- Name: horario fk_est_horario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_est_horario FOREIGN KEY (id_estudiante) REFERENCES public.datos(dni);


--
-- TOC entry 3199 (class 2606 OID 16469)
-- Name: horario fk_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_materia FOREIGN KEY (id_materia) REFERENCES public.materias(codigo) NOT VALID;


-- Completed on 2022-10-05 22:29:32

--
-- PostgreSQL database dump complete
--

