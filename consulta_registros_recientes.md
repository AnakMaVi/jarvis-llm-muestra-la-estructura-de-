# Consulta para Listar los Registros Recientes

Esta consulta se diseña para seleccionar los registros recientes de una tabla de usuarios en una base de datos. Se asume que la tabla está organizada con campos que representan la fecha de registro de cada usuario.

## Esquema de la Tabla de Usuarios

La tabla de usuarios generalmente tiene los siguientes campos:

- `id`: Identificador único del usuario.
- `nombre`: Nombre del usuario.
- `email`: Correo electrónico del usuario.
- `fecha_registro`: Fecha en que el usuario se registró.

## Consulta

La consulta para listar los registros recientes se puede expresar de la siguiente manera:

```sql
SELECT id, nombre, email, fecha_registro
FROM usuarios
ORDER BY fecha_registro DESC
LIMIT 10;
```

### Explicación

- **SELECT id, nombre, email, fecha_registro**: Se seleccionan los campos necesarios para identificar y listar a los usuarios.
- **FROM usuarios**: Se especifica la tabla de usuarios como la fuente de datos.
- **ORDER BY fecha_registro DESC**: Se ordena los registros de forma descendente por la fecha de registro, de manera que los registros más recientes se aparezcan primero.
- **LIMIT 10**: Se limita la cantidad de resultados a 10, para listar los 10 registros más recientes.

### Consideraciones

- La cantidad de registros a mostrar (`LIMIT 10`) puede ajustarse según la necesidad y el tamaño de la base de datos.
- Si la tabla tiene columnas adicionales, se pueden agregar a la consulta según sea necesario.
- Se asume que la fecha de registro está almacenada en una columna de tipo fecha compatible con la consulta SQL.

### Ejemplo de Resultados

Una consulta similar podría devolver resultados como:

| id  | nombre        | email                 | fecha_registro |
|-----|---------------|----------------------|----------------|
| 123 | Juan Pérez    | juan.perez@example.com | 2023-10-01    |
| 456 | María González | maria.gonzalez@example.com | 2023-10-02    |
| 789 | Laura Rodríguez | laura.rodriguez@example.com | 2023-10-03    |
```

Este es el código fuente para la consulta de listar registros recientes de la tabla de usuarios.