# 🚗 **Gestor de Ingresos y Egresos Escolares (GIEE)** 📊

*el GIEE centraliza la gestión de la información de los alumnos, ayudando a la institución a mantener un control organizado de quiénes ingresan (registro) y quiénes salen (eliminación o actualización de registros) del sistema escolar. Esto resulta útil para mantener la integridad y actualización de los datos académicos, facilitando procesos administrativos en el entorno educativo.*

## 📈 **Modelo Relacional**
![image](https://github.com/user-attachments/assets/5f123103-db60-4fb5-a255-5a56c721afc9)

### 📝 **Contexto del Problema**

*La **gestión eficiente** de la información en las instituciones educativas es un factor crucial para asegurar una administración organizada, transparente y funcional. El sistema **Gestor de Ingresos y Egresos Escolares (GIEE)** tiene como objetivo **automatizar** el proceso de registro de alumnos y sus rutas escolares, además de proporcionar una plataforma para la administración efectiva de los datos de los estudiantes.*

*Este sistema se enfoca también en la **gestión de vehículos**, permitiendo el registro y administración de estos, así como el seguimiento detallado de las reparaciones y mantenimientos realizados. Esto proporcionará a los usuarios un control más preciso sobre los costos operativos relacionados con los vehículos y optimizará la toma de decisiones en cuanto a mantenimiento y reparaciones.*

### 📋 **Análisis de Requerimientos**

#### **Funcionalidades Principales del Sistema**

1. **Gestor de Alumnos**:
   - **Registro de nuevos alumnos**.
   - **Modificación** *de la información de alumnos existentes.*
   - **Eliminación segura** *de registros.*
   - **Visualización** *y consulta de datos de los alumnos.*

2. **Interfaz Gráfica**:
   - *Diseño **intuitivo** basado en* **JFrame**.
   - *Implementación de **validaciones** para evitar entradas incorrectas o incompletas.*

3. **Acceso a Base de Datos**:
   - *Conexión a una base de datos* **MySQL**.
   - Implementación de operaciones **CRUD** (Crear, Leer, Actualizar, Eliminar) para el manejo de los datos.

### 🗂️ **Diagrama del Modelo Lógico**
*Se incluye el diagrama del modelo relacional, el cual puede proporcionar una visión más clara sobre las relaciones entre las entidades en el sistema.*

---

### 📝 **Tabla: alumnos**

| **Campo**         | **Tipo de Dato**    | **Descripción**                                              |
|-------------------|---------------------|--------------------------------------------------------------|
| `id`              | `INT AUTO_INCREMENT PRIMARY KEY` | Identificador único de cada alumno.                           |
| `nombres`         | `VARCHAR(100)`      | Nombres del alumno.                                           |
| `apellidos`       | `VARCHAR(100)`      | Apellidos del alumno.                                         |
| `cedula`          | `VARCHAR(10)`       | Número único de identificación del alumno.                   |
| `correo`          | `VARCHAR(100)`      | Correo electrónico único del alumno.                          |
| `fechaNacimiento` | `DATE`              | Fecha de nacimiento del alumno.                               |
| `ruta_id`         | `INT`               | Identificador de la ruta asignada al alumno.                  |

#### **Restricciones:**
- `id`: Clave primaria.
- `cedula` y `correo`: Campos únicos.
- `ruta_id`: Clave foránea que referencia a la tabla `rutas`.

---

### 🔧 **Script del modelo físico**

```sql
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

  
