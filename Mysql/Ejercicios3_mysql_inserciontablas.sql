# Actividades
# Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:

# Tabla zapatillas

INSERT INTO `zapatillas` (id_zapatilla, modelo, color, marca, talla) 
VALUES (1, 'XQYQN', 'Negro', 'Nike', 42),(2,'UOPMN','Rosas','Nike',39),(3,'OPNYT','Verdes','Adidas',35);

# Tabla empleados

INSERT INTO `empleados` (id_empleado, nombre, tienda, salario, fecha_incorporacion) 
VALUES (1, 'Laura', 'Alcobendas', 25.987, '2010-09-03'),(2,'Maria','Sevilla',0,'2001-04-11'),(3,'Ester','Oviedo',30165.98,'2000-11-29');

# Tabla clientes

INSERT INTO `clientes` (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal) 
VALUES (1, 'Monica', 123456789, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),(2,'Lorena',28934567,'lorena@email.com','Calle Alegria','Barcelona','Barcelona',12346),(3,'Carmen',298463759,'carmen@email.com','Calle del Color','Vigo','Pontevedra',23456);

# Tabla facturas

INSERT INTO `facturas` (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total) 
VALUES (1, 123, '2001-12-11', 1, 2, 1, 54.9),(2, 1234, '2005-05-23', 1, 1, 3, 89.91),(3, 12345, '2015-09-18', 2, 3, 3, 76.23);

# De nuevo nos hemos dado cuenta que hay algunos errores en la inserción de datos. En este ejercicios los actualizaremos para que nuestra BBDD este perfectita.
# Tabla zapatillas
# En nuestra tienda no vendemos zapatillas Rosas... ¿Cómo es posible que tengamos zapatillas de color rosa? 🤔 En realidad esas zapatillas son amarillas.

UPDATE `zapatillas`
SET color='Amarillas'
WHERE id_zapatilla=2;

# Tabla empleados
# Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar, ahora vive en A Coruña.

UPDATE `empleados`
SET tienda='A Coruña'
WHERE id_empleado=1;

# Tabla clientes
# El Numero de telefono de Monica esta mal!!! Metimos un digito de más. En realidad su número es: 123456728

UPDATE `clientes`
SET numero_telefono=123456728
WHERE id_cliente=1;

# Tabla facturas
# El total de la factura de la zapatilla cuyo id es 2 es incorrecto. En realidad es: 89,91.

UPDATE `facturas`
SET total=89.91
WHERE id_zapatilla=2;

# Happy coding😀