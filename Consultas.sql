SELECT nombre,apellido FROM datos WHERE extract(year from (fecha_nacimient))>1993;

SELECT nombre,apellido,fecha_nacimient FROM datos WHERE extract(year from (fecha_nacimient))<1993;

SELECT datos.nombre,datos.apellido, horario.id_materia, materias.nombre_materia 
FROM datos 
INNER JOIN horario ON datos.dni = horario.id_estudiante
INNER JOIN materias ON horario.id_materia = materias.codigo;

SELECT * FROM datos WHERE apellido LIKE 'P%';

SELECT * FROM edificios LIMIT 1;

SELECT * FROM materias WHERE nombre_materia = 'Programacion Orientada a Objetos';

SELECT * FROM semilleros
LEFT JOIN edificios ON semilleros.facultad = edificios.facultad;

SELECT * FROM horario
RIGHT JOIN materias ON horario.id_materia = materias.codigo;

SELECT * FROM horario
INNER JOIN materias ON horario.id_materia = materias.codigo;

SELECT nombre_materia, SUM(cupos) FROM horario
INNER JOIN materias ON horario.id_materia = materias.codigo
GROUP BY nombre_materia;

SELECT nombre_materia, COUNT(cupos) FROM horario
INNER JOIN materias ON horario.id_materia = materias.codigo
GROUP BY nombre_materia;

SELECT AVG(paginas) FROM "Libro";

SELECT MAX(paginas) FROM "Libro";

SELECT MIN(fecha_nacimient) FROM datos;

SELECT * FROM datos
FULL JOIN horario ON datos.dni = horario.id_estudiante;

SELECT hora, COUNT(hora)
FROM datos 
INNER JOIN horario ON datos.dni = horario.id_estudiante
INNER JOIN materias ON horario.id_materia = materias.codigo
GROUP BY horario.hora;

SELECT *
FROM semilleros
INNER JOIN datos ON datos.dni = semilleros.id_lider
INNER JOIN edificios ON semilleros.facultad = edificios.facultad;

SELECT datos.nombre, COUNT(datos.nombre)
FROM semilleros
INNER JOIN datos ON datos.dni = semilleros.id_lider
INNER JOIN edificios ON semilleros.facultad = edificios.facultad
GROUP BY datos.nombre;

SELECT * FROM materias
WHERE cupos=(
    SELECT MAX(cupos) FROM materias
    );

SELECT * FROM materias
WHERE cupos=(
    SELECT MIN(cupos) FROM materias
    );





