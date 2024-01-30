/*Actividad hecha por Jafet melara y Kevin Vladimir Rodriguez*/

create DATABASE actividad_C1


USE actividad_C1



CREATE TABLE tb_Cargos(
id_cargo INT PRIMARY KEY,
nombre_cargo VARCHAR(50) NOT NULL
);

CREATE TABLE tb_Departamentos(
id_departamentos INT PRIMARY KEY,
nombre_departamento VARCHAR(200) NOT NULL 
);


CREATE TABLE tb_Proyectos(
id_proyectos INT PRIMARY KEY,
nombre_proyecto VARCHAR(200) NOT NULL 

);

CREATE TABLE tb_Empleados(
id_empleado INT PRIMARY KEY,
nombre_empleado VARCHAR(50) NOT NULL,
apellido_empleado VARCHAR(50) NOT NULL,
salario_empleado money NOT NULL,
fecha_inicio DATE NOT NULL,
id_departamentos INT
CONSTRAINT fk_empleados_departamentos
FOREIGN KEY (id_departamentos)
REFERENCES tb_Departamentos(id_departamentos),
id_cargo INT,
CONSTRAINT fk_cargos_empleados
FOREIGN KEY (id_cargo)
REFERENCES tb_Cargos(id_cargo)
);



CREATE TABLE tb_Asignaciones(
id_asignacion INT PRIMARY KEY,
asignacion_empleado VARCHAR(50) NOT NULL,
id_proyectos INT
CONSTRAINT fk_proyectos_asignaciones
FOREIGN KEY (id_proyectos)
REFERENCES tb_Proyectos (id_proyectos),
id_empleado INT
CONSTRAINT fk_asignaciones_empleado
FOREIGN KEY (id_empleado)
REFERENCES tb_Empleados (id_empleado),
);