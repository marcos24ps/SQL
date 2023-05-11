-- Actividad 16 - Academia - MySQL - GPT

drop schema if exists sys_pru;
create schema sys_pru;
use sys_pru;

-- Tabla de alumnos
CREATE TABLE alumnos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50)
);

-- Tabla de asignaturas
CREATE TABLE asignaturas (
  id INT PRIMARY KEY,
  nombre VARCHAR(50)
);

-- Tabla de costos de asignaturas
CREATE TABLE costos_asignaturas (
  asignatura_id INT,
  costo DECIMAL(5,2),
  PRIMARY KEY (asignatura_id, costo),
  FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
);

-- Tabla de inscripciones
CREATE TABLE inscripciones (
  id INT PRIMARY KEY,
  alumno_id INT,
  asignatura_id INT,
  mes INT,
  FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
  FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
);

-- Insertar datos en la tabla de alumnos
INSERT INTO alumnos (id, nombre) VALUES 
(1, 'Juan'),
(2, 'Maria'),
(3, 'Pedro'),
(4, 'Luis');

-- Insertar datos en la tabla de asignaturas
INSERT INTO asignaturas (id, nombre) VALUES 
(1, 'Matematicas'),
(2, 'Ingles'),
(3, 'Fisica'),
(4, 'Quimica');

-- Insertar datos en la tabla de costos de asignaturas
INSERT INTO costos_asignaturas (asignatura_id, costo) VALUES 
(1, 100.00),
(2, 80.00),
(3, 120.00);

-- Insertar datos en la tabla de inscripciones
INSERT INTO inscripciones (id, alumno_id, asignatura_id,mes) VALUES 
(1, 1, 1,3),
(2, 1, 2,3),
(3, 2, 1,3),
(4, 3, 3,2),
(5, 3, 2,2),
(6, 3, 1,1);

-- informe1. qué alumnos están matriculados y en qué asignaturas
use sys_pru;
SELECT alumnos.nombre, asignaturas.nombre as asignatura
FROM inscripciones
JOIN alumnos ON inscripciones.alumno_id = alumnos.id
JOIN asignaturas ON inscripciones.asignatura_id = asignaturas.id;

-- informe2. dime qué asignaturas NO tienen ningún alumno matriculado
SELECT asignaturas.nombre
FROM asignaturas
LEFT JOIN inscripciones ON asignaturas.id = inscripciones.asignatura_id
WHERE inscripciones.id IS NULL;

-- informe3. Saca las factura del mes para un alumno.*


use sys_pru;
select alumnos.nombre,inscripciones.mes,sum(costos_asignaturas.costo) as acumulado
from inscripciones 
join costos_asignaturas on inscripciones.id=costos_asignaturas.asignatura_id
join alumnos on inscripciones.alumno_id=alumnos.id
group by alumnos.id,mes having inscripciones.mes=3