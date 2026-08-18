Para implementar la consulta `query_recent_users.sql` que lista registros recientes de los usuarios, necesitamos tener una estructura de base de datos que incluya columnas que representen fecha y hora. Por ejemplo, asumamos que tenemos una tabla llamada `users` con las siguientes columnas:

- `id`: ID del usuario (entero).
- `name`: Nombre del usuario (texto).
- `email`: Correo electrónico del usuario (texto).
- `created_at`: Fecha y hora de creación del usuario (timestamp).

El objetivo es listar registros que se crearon después de una fecha y hora específica. Supongamos que queremos listar registros más recientes de hace 24 horas.

Aquí está el código de la consulta `query_recent_users.sql`:

```sql
SELECT id, name, email, created_at
FROM users
WHERE created_at > NOW() - INTERVAL '24 hours';
```

### Explicación del Codigo:

1. **SELECT**: Seleccionamos las columnas que queremos mostrar: `id`, `name`, `email`, y `created_at`.

2. **FROM**: Indicamos de dónde obtenemos los datos, que en este caso es la tabla `users`.

3. **WHERE**: Filtramos los registros donde la columna `created_at` sea posterior a 24 horas antes de la fecha y hora actual. La función `NOW()` devuelve la fecha y hora actual, y `INTERVAL '24 hours'` calcula la diferencia de 24 horas.

Este script generará una consulta SQL que mostrará los registros más recientes de los usuarios que se crearon en el último día.