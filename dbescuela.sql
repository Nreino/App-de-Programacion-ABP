SELECT * FROM escueladb.alumnos;

INSERT INTO alumnos (nombres, apellidos, cedula, correo, fechaNacimiento, ruta_id) 
values 
('Carlos Alberto' ,'Bonilla Cantos', '0985656789', 'calberto2008@gmail.com','11052008','1'),
('Juan Jose ' ,'Rivas Coronel', '0943467789', 'Jose2008@gmail.com','12072008','2'),
('Carlos Alberto' ,'jeshua Haro', '0945656712', 'calberto2008@gmail.com','11232008','1'),
('Miriam Alexandra' ,'Bonilla Cantos', '0944386789', 'mixi1991@gmail.com','11012007','1'),
('Estiven Eduardo' ,'Ramirez Valdéz', '0945467712', 'eduard2008@gmail.com','12122007','3'),
('Juan Carlos' ,'Sayay Morante', '0945466328', 'jeanc2008@gmail.com','24122008','3'),
('Xavier Fernando' ,'Peñafiel López', '0954356729', 'xavie2008@gmail.com','23042008','2'),
('Miguel Angel' ,'Suarez Calle', '0926567789', 'mian2008@gmail.com','01012008','2');

UPDATE alumnos SET alumnos.nombres = ?, alumnos.apellidos=?,alumnos.cedula= ?, alumnos.correo= ?, alumnos.fechaNacimiento= ? WHERE alumnos.id = ?;
DELETE FROM alumnos WHERE alumnos.id=?;

