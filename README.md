# 🚗 **Gestor de Ingresos y Egresos Escolares (GIEE)** 📊

*El sistema **Gestor de Ingresos y Egresos Escolares (GIEE)** está diseñado para **registrar** y **gestionar** la información relacionada con los vehículos de una institución educativa, incluyendo detalles de mantenimiento y reparaciones. Además, genera reportes sobre los costos asociados a estos servicios, todo de manera fácil e intuitiva para el usuario.*

## 📈 **Modelo Relacional**
![imagen (67)](https://github.com/user-attachments/assets/f9f37a34-890a-4848-be7c-639c1dc48f77)

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
(Se incluye el diagrama del modelo relacional, el cual puede proporcionar una visión más clara sobre las relaciones entre las entidades en el sistema.)

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

**Restricciones:**
- `id`: Clave primaria.
- `cedula` y `correo`: Campos únicos.
- `ruta_id`: Clave foránea que referencia a la tabla `rutas`.



### Script del modelo físico 
(PAOLA)


### 🖥️ **Aplicación Java con JFrame**

La aplicación cuenta con una interfaz gráfica desarrollada con **JFrame**, que permite a los usuarios realizar diversas operaciones relacionadas con los alumnos.

#### **Diseño de Interfaz**

La interfaz incluye las siguientes funcionalidades:

- **Registro, modificación y eliminación de alumnos**: El usuario puede agregar nuevos alumnos, actualizar información existente y eliminar registros de alumnos.
- **Visualización de los registros en una tabla**: Los datos de los alumnos se muestran de forma organizada en una tabla dentro de la interfaz.
- **Selección y edición de alumnos**: El usuario puede seleccionar un alumno de la tabla y editar su información directamente desde la interfaz.


### Validaciones
Validaciones de campo vacios 
Evitar la insercion de registros duplicados 

### Acceso a Datos 
La aplicacion se conecta a una base de datos MySQL mediante la clase **conexion**. Las operaciones CRUDse implementan en la clase **Alumno**, que incluye:
- **insertAlumno()** : Insertar un nuevo alumno. 
- **mostrarAlumno()** : Muestra los alumnos registrados. 
- **seleccionarAlumno()** : Selecciona un alumno para editar.
- **modificarAlumno()** : Modifica un registro existente.
- **eliminarAlumno()** : Eliminar un registro.

###Subida del Proyecto a GitHub
**Organizacion del Reprositorio**
El repositorio debe contener la siguientes estructura:
GIEE/
├── src/
|
|
|
|
|
|














#### **Integrantes:**
- **Reino**
- **Salavarria**
- **Mantilla**

#### **Curso:**
- 2do **Informática "A"**
  
  
