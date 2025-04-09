
create database porfolio;
use portfolio;
CREATE TABLE `lenguaje` (
  `id_lenguaje` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_lenguaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `proyecto_lenguaje` (
  `id_proyecto` int(11) NOT NULL,
  `id_lenguaje` int(11) NOT NULL,
  KEY `FKjgwri64gyeb13gtqs7qnn7p24` (`id_lenguaje`),
  KEY `FK4802oj79n264qip7jexkowfg` (`id_proyecto`),
  CONSTRAINT `FK4802oj79n264qip7jexkowfg` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`),
  CONSTRAINT `FKjgwri64gyeb13gtqs7qnn7p24` FOREIGN KEY (`id_lenguaje`) REFERENCES `lenguaje` (`id_lenguaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insertar datos en la tabla Lenguaje
INSERT INTO Lenguaje ( id_lenguaje, nombre, imagen) VALUES
(1, 'Java', 'data:image/png;base64,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'),
(2, 'Python', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s'),
(3, 'JavaScript', 'https://cdn.sanity.io/images/3do82whm/next/a69e3ba2441d35dd1a7945e826064708f30c10a9-1000x667.jpg?w=720&h=480&fit=clip&auto=format');

-- Insertar datos en la tabla Proyecto
INSERT INTO Proyecto (Id_Proyecto, nombre, descripcion, imagen, url) VALUES
(1, 'Proyecto 1', 'Descripción del Proyecto 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s', 'https://proyecto1.com'),
(2, 'Proyecto 2', 'Descripción del Proyecto 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s', 'https://proyecto2.com'),
(3, 'Proyecto 3', 'Descripción del Proyecto 3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s', 'https://proyecto3.com');

-- Insertar datos en la tabla intermedia proyecto_lenguaje
INSERT INTO proyecto_lenguaje (id_proyecto, id_lenguaje) VALUES
(1, 1), -- Proyecto 1 usa Java
(1, 2), -- Proyecto 1 usa Python
(2, 3), -- Proyecto 2 usa JavaScript
(3, 1), -- Proyecto 3 usa Java
(3, 3); -- Proyecto 3 usa JavaScript

INSERT INTO lenguaje (nombre, imagen) VALUES ('asdadasd', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s'), ('Spring Boot', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s');
 
INSERT INTO proyecto (nombre, descripcion, imagen, url)
VALUES ('Gestor de tareas', 'App de gestión de tareas.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKnoHZFuIwEy9_rQHoYH-JxEHAvdN1AFuPw&s', 'https://github.com/Rodrigo-HM/tareas');
 
-- Relación ProyectoLenguaje (proyecto 1 usa Java y Spring Boot)
INSERT INTO proyecto_lenguaje (id_proyecto, id_lenguaje) VALUES (1, 1), (1, 2);


