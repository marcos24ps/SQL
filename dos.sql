drop schema if exists alumnos;
create schema alumnos;

use alumnos;
drop table if exists alasimp;
drop table if exists alumnos;
drop table if exists asignaturas;
drop table if exists importes;
/*
CREATE TABLE `alumnos`.`alumnos` (
  `idalumno` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idalumno`));
  
  CREATE TABLE `alumnos`.`asignaturas` (
  `idasign` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  CONSTRAINT nombre_un unique(nombre),
  PRIMARY KEY (`idasign`));
  
  CREATE TABLE `alumnos`.`importes` (
  `idimp` INT NOT NULL AUTO_INCREMENT,
  `Importe` decimal(20,2) NOT NULL,
  PRIMARY KEY (`idimp`));
  
  CREATE TABLE `alumnos`.`alasimp` (
  `idalasimp` INT NOT NULL AUTO_INCREMENT,
  `idalumno` INT NOT NULL,
  `idasign` INT NOT NULL,
  `idimp` INT NOT NULL,
  CONSTRAINT fk_alasimp_alumno FOREIGN KEY (idalumno) REFERENCES alumnos(idalumno),
  CONSTRAINT fk_alasimp_asignaturas FOREIGN KEY (idasign) REFERENCES asignaturas(idasign),
  CONSTRAINT fk_alasimp_importes FOREIGN KEY (idimp) REFERENCES importes(idimp),
  PRIMARY KEY (`idalasimp`));
  
  insert into alumnos(nombre,apellido) values('Pepe','Perez');
  insert into alumnos(nombre,apellido) values('Juan','Fernandez');
  
  insert into asignaturas(nombre) values('Matematicas');
  insert into asignaturas(nombre) values('Fisica');
  insert into asignaturas(nombre) values('Quimica');
  insert into asignaturas(nombre) values('Ingles');
  */
  