-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2021 a las 18:44:34
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lefufapp2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `Categoria_id` int(11) NOT NULL,
  `Categoria_nombre` varchar(254) DEFAULT NULL,
  `Categoria_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`Categoria_id`, `Categoria_nombre`, `Categoria_estado`) VALUES
(1, 'kits 1 planta', 1),
(2, 'kits 3 planta', 1),
(3, 'kits 10 planta', 1),
(4, 'kit 20 plantas exterior', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `Contacto_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Contacto_nombre` varchar(254) DEFAULT NULL,
  `Contacto_email` varchar(254) DEFAULT NULL,
  `Contacto_telefono` int(11) DEFAULT NULL,
  `Contacto_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`Contacto_id`, `Usuario_id`, `Contacto_nombre`, `Contacto_email`, `Contacto_telefono`, `Contacto_estado`) VALUES
(1, 5, 'Soporte Tecnico', 'soportecliente@lefufu.cl', 98765432, 1),
(2, 5, 'Atencion al cliente', 'atencioncliente@lefufu.cl', 98798776, 1),
(3, 5, 'Soporte de ventas', 'soporteventas@lefufu.cl', 95647342, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultivo`
--

CREATE TABLE `cultivo` (
  `Cultivo_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Tipo_id` int(11) NOT NULL,
  `Sensores_id` int(11) DEFAULT NULL,
  `Cultivo_apodo` varchar(254) DEFAULT NULL,
  `Cultivo_imagen` varchar(254) DEFAULT NULL,
  `Cultivo_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cultivo`
--

INSERT INTO `cultivo` (`Cultivo_id`, `Usuario_id`, `Tipo_id`, `Sensores_id`, `Cultivo_apodo`, `Cultivo_imagen`, `Cultivo_estado`) VALUES
(4, 1, 8, 7, 'hola', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F7d333420-4155-46ea-bd98-a128603e5fc86433124497437769083.jpg?alt=media&token=b2c88d41-de3c-44b3-81c5-202214692a57', 1),
(5, 16, 15, 9, 'cocina', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F0c18a7fb-70d3-4ac4-828a-34579fc2f0c67270139355637674964.jpg?alt=media&token=84a67a30-0535-46d6-abf8-22d745a01b4e', 1),
(6, 16, 13, NULL, 'hola', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F62744237-de66-4efb-b19f-dda8ba255ab38117956457179299552.jpg?alt=media&token=b73b468b-0181-4b78-a52b-d50220d755fb', 0),
(7, 19, 7, 13, 'cultivo 1', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2Fd8fa9082-e707-43a2-a9c8-3260e8b412e6637279425046895873.jpg?alt=media&token=947d4afd-6a0b-4092-abe2-167bc529759d', 0),
(8, 20, 11, 11, 'ß', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F65880448-acdf-46c9-a735-333271e7f68e6857511693730317157.jpg?alt=media&token=8c966185-b2aa-4e9e-b2a0-982c794f2568', 1),
(9, 19, 7, NULL, 'cultivo1', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F5a3cea11-840b-4cbe-9d82-e72acd442c0a4140834742486298776.jpg?alt=media&token=f1efa83c-fbd7-4a9b-a916-77d6c5fdcbff', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_la_empresa`
--

CREATE TABLE `datos_de_la_empresa` (
  `Datos_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Datos_mision` varchar(254) DEFAULT NULL,
  `Datos_vision` varchar(254) DEFAULT NULL,
  `Datos_comentario` varchar(254) DEFAULT NULL,
  `Datos_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_de_la_empresa`
--

INSERT INTO `datos_de_la_empresa` (`Datos_id`, `Usuario_id`, `Datos_mision`, `Datos_vision`, `Datos_comentario`, `Datos_estado`) VALUES
(1, 12, 'Ser especialistas en la innovación y desarrollo de los sistemas para la automatización de cultivos y satisfacer las necesidades de nuestros clientes ofreciéndoles y productos de calidad.', 'Ser una empresa productora y comercializadora de sistemas de cuidado para cultivos, caracterizados por la calidad y innovación constante de nuestros procesos, manteniendo la vocación, honestidad y responsabilidad de satisfacer a nuestros clientes.\r\n', 'Somos una empresa con un enfoque futurista, donde nuestro principal objetivo se centra en estar a la vanguardia de la tecnología de la información y del mundo digital. Buscamos ofrecerles a nuestros clientes un servicio de calidad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden`
--

CREATE TABLE `detalle_orden` (
  `Detalle_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  `Orden_id` int(11) NOT NULL,
  `Detalle_fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_orden`
--

INSERT INTO `detalle_orden` (`Detalle_id`, `Producto_id`, `Orden_id`, `Detalle_fecha`) VALUES
(16, 2, 122, '2021-12-01'),
(17, 2, 123, '2021-12-01'),
(18, 2, 124, '2021-12-01'),
(19, 2, 125, '2021-12-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_usuario`
--

CREATE TABLE `horario_usuario` (
  `Horario_id` int(11) NOT NULL,
  `Horario_inicio` time DEFAULT NULL,
  `Horario_fin` time DEFAULT NULL,
  `Horario_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario_usuario`
--

INSERT INTO `horario_usuario` (`Horario_id`, `Horario_inicio`, `Horario_fin`, `Horario_estado`) VALUES
(1, '08:00:00', '16:00:00', 0),
(3, '08:15:00', '16:00:00', 1),
(4, '07:56:00', '23:56:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacion`
--

CREATE TABLE `instalacion` (
  `Instalacion_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Orden_id` int(11) NOT NULL,
  `Instalacion_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instalacion`
--

INSERT INTO `instalacion` (`Instalacion_id`, `Usuario_id`, `Orden_id`, `Instalacion_estado`) VALUES
(15, 5, 124, 2),
(16, 9, 125, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `Orden_id` int(11) NOT NULL,
  `Usuario_id` int(11) DEFAULT NULL,
  `Orden_Fecha` date DEFAULT NULL,
  `Orden_cantidad_productos` int(11) DEFAULT NULL,
  `Orden_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`Orden_id`, `Usuario_id`, `Orden_Fecha`, `Orden_cantidad_productos`, `Orden_estado`) VALUES
(122, 1, '2021-12-01', 1, 1),
(123, 1, '2021-12-15', 1, 1),
(124, 16, '2021-12-02', 1, 2),
(125, 16, '2021-12-03', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Producto_id` int(11) NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  `Producto_nombre` varchar(254) DEFAULT NULL,
  `Producto_descripcion` varchar(1020) DEFAULT NULL,
  `Producto_precio` int(11) DEFAULT NULL,
  `Producto_estado` int(11) DEFAULT NULL,
  `Producto_stock` int(11) DEFAULT NULL,
  `Producto_foto` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Producto_id`, `Categoria_id`, `Producto_nombre`, `Producto_descripcion`, `Producto_precio`, `Producto_estado`, `Producto_stock`, `Producto_foto`) VALUES
(2, 4, 'kit interior 10 planta', 'kit para espacios abiertos', 60000, 1, 25, 'kit 11p.jpg'),
(3, 2, 'kit interior 3 plantas', 'kit para espacios cerrados', 150000, 1, 30, 'kit 11p.jpg'),
(4, 3, 'kit interior 5 plantas', 'kit para espacios pequeños', 250000, 1, 20, 'kit 11p.jpg'),
(9, 2, 'Kit exterior', 'Kit enfocado a plantas que esten en exteriores sirve para un solo cultivo', 25000, 1, 23, 'kit 11p.jpg'),
(10, 2, 'kit exterior 3 plantas', 'Kit enfocado a plantas que esten en exteriores sirve para un solo cultivo', 50000, 1, 50, 'kit 11p.jpg'),
(11, 2, 'prueba  producto', 'cocina', 12000, 1, 666, 'prueba pana perro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `Publicacion_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Publicacion_nombre` varchar(254) DEFAULT NULL,
  `Publicacion_descripcion` varchar(254) DEFAULT NULL,
  `Publicacion_imagen` varchar(250) DEFAULT NULL,
  `Publicacion_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`Publicacion_id`, `Usuario_id`, `Publicacion_nombre`, `Publicacion_descripcion`, `Publicacion_imagen`, `Publicacion_estado`) VALUES
(16, 5, 'Consejo del dia ', 'Siempre recuerda regar tus plantas un promedio de tres veces a la semana, pero ten cuidado con la cantidad de agua que ocuparas para regar por que mucha agua puede resultar en que tu cultivo tenga problemas.', NULL, 1),
(17, 9, 'Consejo del dia', 'Ten cuidado con las vitaminas que ocupes para tus plantas, recuerda siempre diluirlas antes en agua esto debido a que vienen concentradas y puede generar problemas en tus plantas', NULL, 1),
(19, 16, 'cocina', 'este es mi primer cultivo', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F0c18a7fb-70d3-4ac4-828a-34579fc2f0c67270139355637674964.jpg?alt=media&token=84a67a30-0535-46d6-abf8-22d745a01b4e', 1),
(20, 16, 'cocina', 'este es mi primer cultivo', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F04049f5e-b594-412c-93e4-2aa42b425f73142869382568571524.jpg?alt=media&token=f8d56726-309f-4e79-b73a-25464e074957', 1),
(21, 16, 'cocina', 'hola', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2Fb1326cd7-aab5-4b86-a454-8484aac3f40a3067542815968190518.jpg?alt=media&token=4a05ec1a-86b9-4f93-830c-63eb851b8efe', 0),
(22, 9, 'Consejo', 'esto es una prueba', NULL, 1),
(23, 20, 'ß', 'cacha wn se puede compartir', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F65880448-acdf-46c9-a735-333271e7f68e6857511693730317157.jpg?alt=media&token=8c966185-b2aa-4e9e-b2a0-982c794f2568', 1),
(24, 19, 'cultivo1', 'ta buena la cazuela ????', 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2Fimage_picker8234041324259071110.jpg?alt=media&token=0aa0ea18-35d8-4a37-a16c-db4de67bf824', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `Rol_id` int(11) NOT NULL,
  `Rol_nombre` varchar(254) DEFAULT NULL,
  `Rol_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`Rol_id`, `Rol_nombre`, `Rol_estado`) VALUES
(1, 'Admin', 1),
(2, 'Usuario', 1),
(3, 'Trabajador', 1),
(4, 'Trabajador bodega', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensores`
--

CREATE TABLE `sensores` (
  `Sensores_id` int(11) NOT NULL,
  `Sensores_estado` int(11) DEFAULT NULL,
  `Sensores_minima` int(11) DEFAULT NULL,
  `Sensores_maxima` int(11) DEFAULT NULL,
  `Sensores_humedad` int(20) DEFAULT NULL,
  `Sensores_nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensores`
--

INSERT INTO `sensores` (`Sensores_id`, `Sensores_estado`, `Sensores_minima`, `Sensores_maxima`, `Sensores_humedad`, `Sensores_nombre`) VALUES
(7, 1, 1, 99, -1, '08:3A:F2:A9:75:F0'),
(9, 1, 50, 50, 60, '08:3B:H2:A9:75:F0'),
(10, 1, 1, 99, -1, '08:3A:F2:A9:75:F0'),
(11, 1, 1, 99, -1, '08:3A:F2:A9:75:F0'),
(12, 1, 1, 99, -1, '08:3A:F2:A9:75:F0'),
(13, 1, 1, 99, -1, '08:3A:F2:A9:75:F0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cultivo`
--

CREATE TABLE `tipo_cultivo` (
  `Tipo_id` int(11) NOT NULL,
  `Tipo_nombre` varchar(254) DEFAULT NULL,
  `Tipo_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_cultivo`
--

INSERT INTO `tipo_cultivo` (`Tipo_id`, `Tipo_nombre`, `Tipo_estado`) VALUES
(6, 'Tomate', 1),
(7, 'Cannabis', 1),
(8, 'Lechuga', 1),
(9, 'Papas', 1),
(10, 'zapallo', 1),
(11, 'Savila', 1),
(12, 'Cactus interiores ', 1),
(13, 'Lavanda', 1),
(14, 'Orquidea', 1),
(15, 'Sandía', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Usuario_id` int(11) NOT NULL,
  `Rol_id` int(11) DEFAULT NULL,
  `Horario_id` int(11) DEFAULT NULL,
  `Usuario_nombre` varchar(254) DEFAULT NULL,
  `Usuario_correo` varchar(254) DEFAULT NULL,
  `Usuario_contrasena` varchar(254) DEFAULT NULL,
  `Usuario_direccion` varchar(254) DEFAULT NULL,
  `Usuario_telefono` int(11) DEFAULT NULL,
  `Usuario_estado` int(11) DEFAULT NULL,
  `Usuario_foto` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Usuario_id`, `Rol_id`, `Horario_id`, `Usuario_nombre`, `Usuario_correo`, `Usuario_contrasena`, `Usuario_direccion`, `Usuario_telefono`, `Usuario_estado`, `Usuario_foto`) VALUES
(1, 2, NULL, 'Jose Feliciano', 'jose@gmail.com', '$2y$10$f5nXm6VYSze2HvmCfIbLuuNJaBKAbXfRu1WKHh4vq52ObBfa8rUIS', 'Las Maitas #2004', 923456789, 1, 'no_user.png'),
(5, 3, 3, 'Diego Ortega', 'gallina@lefufu.cl', '$2y$10$YsG99QMz8c30LiPBL2cucu6Dpf8Bzotrp95gwQIUDA269ULkwuyrW', 'Los Olivos 247', 56998656, 1, 'no_user.png'),
(9, 3, 2, 'Raul Rivera', 'raul@lefufu.cl', '$2a$10$TenCSyXkv6c.N/AwZRdaneI80KtUYvV3Zl9u6xIzB2GjW0KzE4AnK', 'tucapel #4532', 56998656, 1, 'no_user.png'),
(12, 1, 1, 'Mauricio Acuña', 'mauri@lefufu.cl', '$2y$10$8pQa/ETGd7LX/UrcWkBjvOhWL/L2m4ncuXnZMUm2FFo.5Sb41mkG2', 'Pasaje 2 #125', 56998656, 1, 'barril shiny_1.png'),
(13, 4, 1, 'Jose Rodriguez', 'jose@lefufu.cl', '$2a$10$TenCSyXkv6c.N/AwZRdaneI80KtUYvV3Zl9u6xIzB2GjW0KzE4AnK', 'Lautaro 4487', 56998656, 1, 'no_user.png'),
(14, 2, NULL, 'juanita lopez', 'juanita@gmail.com', '$2a$10$TenCSyXkv6c.N/AwZRdaneI80KtUYvV3Zl9u6xIzB2GjW0KzE4AnK', 'akuya pa ya', 98989898, 1, 'no_user.png'),
(15, 2, 1, 'kevin', 'kevin@gmail.com', '$2y$10$Og3fi.CPmtUuScCHuMw0W.bFJvcEwMyS/PN0gS2TcPPYV5UrUKvF.', 'linderos 97', 283828982, 1, 'no_user.png'),
(16, 2, NULL, 'esteban', 'esteban@gmail.com', '$2y$10$wncG7iZThs6REDRoOYeYS..Pt9ptzHKn3ED9WWCZ7mFpJIb/95Mqa', 'linderos 9798', 956473845, 1, 'https://firebasestorage.googleapis.com/v0/b/lefufudb.appspot.com/o/subir%2F4878b00f-8d0b-45b6-94f6-05b738ff3f215293748378342288927.jpg?alt=media&token=b11f66c2-8c94-44e3-a4a7-d9b970e06756'),
(17, 3, 1, 'alan', 'alan@lefufu.cl', '$2y$10$MIQz8eQFwDF0VcgREjzVRu.CyQ1SK6akYou67FiMK87VNQXnhNyTa', 'diego portales 1416', 923452345, 1, NULL),
(18, 1, 1, 'perico los palotes', 'lospalotes@gmail.com', '$2a$10$TenCSyXkv6c.N/AwZRdaneI80KtUYvV3Zl9u6xIzB2GjW0KzE4AnK', 'el arbolito al lado de inacap', 923452345, 1, 'prueba pana perro.jpg'),
(19, 2, NULL, 'dieguez', 'dieguez@gmail.com', '$2y$10$yhnjPN9z7Fibt7seQ3xuE.ps4pptGx4Cb1GcUcYG7g7ESBBkHLIpC', 'Francisco Urzúa 3991a', 997877339, 1, NULL),
(20, 2, NULL, 'Daniel Rojas', 'cld.rojasz@gmail.com', '$2y$10$0U.Ll6C1.HoS/nt7IK39LehejKnFuLUvWQRb9Aso4liR7v8jivPE6', 'dirección', 684321553, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`Categoria_id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`Contacto_id`),
  ADD KEY `FK_Relationship_14` (`Usuario_id`);

--
-- Indices de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD PRIMARY KEY (`Cultivo_id`),
  ADD KEY `FK_Association_1` (`Usuario_id`),
  ADD KEY `FK_Association_2` (`Tipo_id`),
  ADD KEY `FK_Association_6` (`Sensores_id`);

--
-- Indices de la tabla `datos_de_la_empresa`
--
ALTER TABLE `datos_de_la_empresa`
  ADD PRIMARY KEY (`Datos_id`),
  ADD KEY `FK_Relationship_13` (`Usuario_id`);

--
-- Indices de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD PRIMARY KEY (`Detalle_id`),
  ADD KEY `FK_Relationship_10` (`Orden_id`),
  ADD KEY `FK_Relationship_9` (`Producto_id`);

--
-- Indices de la tabla `horario_usuario`
--
ALTER TABLE `horario_usuario`
  ADD PRIMARY KEY (`Horario_id`);

--
-- Indices de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD PRIMARY KEY (`Instalacion_id`),
  ADD KEY `FK_Relationship_11` (`Usuario_id`),
  ADD KEY `FK_Relationship_12` (`Orden_id`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`Orden_id`),
  ADD KEY `FK_Association_7` (`Usuario_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Producto_id`),
  ADD KEY `FK_Association_10` (`Categoria_id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`Publicacion_id`),
  ADD KEY `FK_Association_5` (`Usuario_id`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`Rol_id`);

--
-- Indices de la tabla `sensores`
--
ALTER TABLE `sensores`
  ADD PRIMARY KEY (`Sensores_id`);

--
-- Indices de la tabla `tipo_cultivo`
--
ALTER TABLE `tipo_cultivo`
  ADD PRIMARY KEY (`Tipo_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usuario_id`),
  ADD KEY `FK_Association_8` (`Rol_id`),
  ADD KEY `FK_Association_9` (`Horario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `Categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Contacto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  MODIFY `Cultivo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `datos_de_la_empresa`
--
ALTER TABLE `datos_de_la_empresa`
  MODIFY `Datos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  MODIFY `Detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `horario_usuario`
--
ALTER TABLE `horario_usuario`
  MODIFY `Horario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  MODIFY `Instalacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `Orden_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `Publicacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  MODIFY `Rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sensores`
--
ALTER TABLE `sensores`
  MODIFY `Sensores_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_cultivo`
--
ALTER TABLE `tipo_cultivo`
  MODIFY `Tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`);

--
-- Filtros para la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD CONSTRAINT `FK_Association_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`),
  ADD CONSTRAINT `FK_Association_2` FOREIGN KEY (`Tipo_id`) REFERENCES `tipo_cultivo` (`Tipo_id`),
  ADD CONSTRAINT `FK_Association_6` FOREIGN KEY (`Sensores_id`) REFERENCES `sensores` (`Sensores_id`);

--
-- Filtros para la tabla `datos_de_la_empresa`
--
ALTER TABLE `datos_de_la_empresa`
  ADD CONSTRAINT `FK_Relationship_13` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`);

--
-- Filtros para la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD CONSTRAINT `FK_Relationship_10` FOREIGN KEY (`Orden_id`) REFERENCES `orden` (`Orden_id`),
  ADD CONSTRAINT `FK_Relationship_9` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`Producto_id`);

--
-- Filtros para la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`),
  ADD CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`Orden_id`) REFERENCES `orden` (`Orden_id`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `FK_Association_7` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_Association_10` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria_producto` (`Categoria_id`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `FK_Association_5` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`Usuario_id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_Association_8` FOREIGN KEY (`Rol_id`) REFERENCES `rol_usuario` (`Rol_id`),
  ADD CONSTRAINT `FK_Association_9` FOREIGN KEY (`Horario_id`) REFERENCES `horario_usuario` (`Horario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
