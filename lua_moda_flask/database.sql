CREATE DATABASE IF NOT EXISTS moda_db;
USE moda_db;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    imagen VARCHAR(255) DEFAULT NULL,
    descripcion VARCHAR(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS mensajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(120) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO productos (nombre, categoria, precio, imagen, descripcion) VALUES
('Blazer Milano', 'Mujer', 149900, 'blazer.jpg', 'Blazer elegante para looks casuales o formales.'),
('Vestido Aura', 'Mujer', 119900, 'vestido.jpg', 'Vestido moderno con corte cómodo y versátil.'),
('Camisa Urban', 'Hombre', 89900, 'camisa.jpg', 'Camisa de estilo urbano para todos los días.'),
('Jean Classic', 'Unisex', 129900, 'jean.jpg', 'Jean clásico de corte moderno.'),
('Bolso Nova', 'Accesorios', 79900, 'bolso.jpg', 'Bolso compacto para complementar cualquier outfit.'),
('Gafas Luna', 'Accesorios', 59900, 'gafas.jpg', 'Gafas con diseño minimalista y moderno.');
