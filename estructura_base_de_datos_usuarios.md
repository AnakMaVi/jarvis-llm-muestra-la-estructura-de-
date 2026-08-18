-- Base de Datos: Usuarios_DB

-- Tabla: Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(100) UNIQUE NOT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    Rol VARCHAR(50) NOT NULL,
    FechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Consulta para listar los registros recientes (ultimos 10 registros)
SELECT *
FROM Usuarios
ORDER BY FechaCreacion DESC
LIMIT 10;