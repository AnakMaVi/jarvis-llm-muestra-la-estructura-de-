-- Estructura de la base de datos de usuarios

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS `users_db`;

-- Seleccionar la base de datos
USE `users_db`;

-- Crear la tabla de usuarios
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL UNIQUE,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password_hash` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla de roles
CREATE TABLE `roles` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL UNIQUE
);

-- Crear la tabla de permisos
CREATE TABLE `permissions` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL UNIQUE
);

-- Crear la tabla de asignación de roles y permisos
CREATE TABLE `roles_permissions` (
    `role_id` INT,
    `permission_id` INT,
    PRIMARY KEY (`role_id`, `permission_id`),
    FOREIGN KEY (`role_id`) REFERENCES `roles`(`id`),
    FOREIGN KEY (`permission_id`) REFERENCES `permissions`(`id`)
);

-- Crear la tabla de usuarios_roles
CREATE TABLE `users_roles` (
    `user_id` INT,
    `role_id` INT,
    PRIMARY KEY (`user_id`, `role_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`role_id`) REFERENCES `roles`(`id`)
);

-- Crear la tabla de registros
CREATE TABLE `records` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT,
    `action` VARCHAR(255) NOT NULL,
    `details` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
);

-- Consulta para listar los registros recientes
SELECT r.id, u.username, r.action, r.details, r.created_at
FROM records r
JOIN users u ON r.user_id = u.id
ORDER BY r.created_at DESC;