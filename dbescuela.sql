CREATE DATABASE escueladb;
USE escueladb;

CREATE TABLE alumnos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  cedula VARCHAR(10) UNIQUE NOT NULL,
  correo VARCHAR(100) UNIQUE NOT NULL,
  fechaNacimiento DATE NOT NULL,
  ruta_id INT NOT NULL
);

INSERT INTO alumnos (nombres, apellidos, cedula, correo, fechaNacimiento, ruta_id) 
VALUES 
('Carlos Alberto', 'Bonilla Cantos', '0985656789', 'calberto2008@gmail.com', '2008-05-11', 0),
('Juan Jose', 'Rivas Coronel', '0943467789', 'Jose2008@gmail.com', '2008-07-12', 0),
('Carlos Alberto', 'Jeshua Haro', '0945656712', 'jeshua2008@gmail.com', '2008-11-23', 0),
('Miriam Alexandra', 'Bonilla Cantos', '0944386789', 'mixi1991@gmail.com', '2007-01-11', 0),
('Estiven Eduardo', 'Ramirez Valdéz', '0945467712', 'eduard2008@gmail.com', '2007-12-12', 0),
('Juan Carlos', 'Sayay Morante', '0945466328', 'jeanc2008@gmail.com', '2008-12-24', 0),
('Xavier Fernando', 'Peñafiel López', '0954356729', 'xavie2008@gmail.com', '2008-04-23', 0),
('Miguel Angel', 'Suarez Calle', '0926567789', 'mian2008@gmail.com', '2008-01-01', 0);

ALTER TABLE alumnos DROP INDEX correo;
UPDATE alumnos 
SET nombres = 'NuevoNombre', apellidos = 'NuevoApellido', cedula = '1234567890', correo = 'nuevoemail@gmail.com', fechaNacimiento = '2000-01-01' 
WHERE id = 1;

