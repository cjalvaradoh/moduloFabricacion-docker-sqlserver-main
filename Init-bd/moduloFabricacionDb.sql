-- Creación de la base de datos
CREATE DATABASE moduloFabricacion;
GO

-- Seleccionar la base de datos para trabajar
USE moduloFabricacion;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [AspNetRoles]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [AspNetUserClaims]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [AspNetUserLogins]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [AspNetUserRoles]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [AspNetUsers]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Rol] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [AspNetUserTokens]    Script Date: 28/09/2024 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- Tabla de Departamentos
CREATE TABLE departamentos (
    id_departamento VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
GO

-- Tabla de Maquinas
CREATE TABLE maquinas (
    id_maquina VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_departamento VARCHAR(10) NOT NULL,
    CONSTRAINT FK_maquinas_departamento FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);
GO

-- Tabla de Categoría de Productos
CREATE TABLE categoria_productos (
    id_categoria VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
GO

-- Tabla de Productos
CREATE TABLE productos (
    id_producto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    unidad_medida VARCHAR(50) NOT NULL,
    tiempo_estimado_produccion DECIMAL(10,2) NOT NULL,
    id_categoria VARCHAR(10) NOT NULL,
    CONSTRAINT FK_productos_categoria FOREIGN KEY (id_categoria) REFERENCES categoria_productos(id_categoria)
);
GO

-- Tabla de Operarios
CREATE TABLE operarios (
    id_operario VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado VARCHAR(10) NOT NULL CHECK (estado IN ('Activo', 'Inactivo')) DEFAULT 'Activo',
    tiempo_hora DECIMAL(5,2),
    thumbnail_url VARCHAR(255) NOT NULL,
    foto_url VARCHAR(255) NOT NULL
);
GO

-- Agregar id_departamento a operarios
ALTER TABLE operarios ADD id_departamento VARCHAR(10) NOT NULL;
ALTER TABLE operarios ADD CONSTRAINT FK_operarios_departamento FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento);


-- Tabla de Ordenes de Producción
CREATE TABLE ordenes_produccion (
    id_orden VARCHAR(10) PRIMARY KEY,
    id_producto VARCHAR(10) NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    estado VARCHAR(20) CHECK (estado IN ('Pendiente', 'En proceso', 'Finalizada', 'Cancelada')) NOT NULL,
    fecha_inicio DATETIME,
    fecha_entrega DATETIME,
    CONSTRAINT FK_ordenes_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
GO

-- Tabla de Seguimiento de Producción
CREATE TABLE seguimiento_produccion (
    id_seguimiento VARCHAR(10) PRIMARY KEY,
    id_orden VARCHAR(10) NOT NULL,
    id_operario VARCHAR(10) NOT NULL,
    estado VARCHAR(25) CHECK (estado IN ('Pendiente', 'En proceso', 'Finalizada', 'Cancelada')) NOT NULL,
    avance DECIMAL(5,2) CHECK (avance BETWEEN 0 AND 100),
    tiempo_trabajado DECIMAL(10,2),
    material_consumido DECIMAL(10,2),
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    comentarios TEXT,
    CONSTRAINT FK_seguimiento_orden FOREIGN KEY (id_orden) REFERENCES ordenes_produccion(id_orden),
    CONSTRAINT FK_seguimiento_operario FOREIGN KEY (id_operario) REFERENCES operarios(id_operario)
);
GO

-- Tabla de Materiales
CREATE TABLE materiales (
    id_material VARCHAR(10) PRIMARY KEY,
    nombre_material VARCHAR(255) NOT NULL,
    descripcion TEXT,
    stock DECIMAL(10,2) NOT NULL,
    costo_por_unidad DECIMAL(10,2) NOT NULL,
    ancho DECIMAL(10,2),
    largo DECIMAL(10,2),
    alto DECIMAL(10,2),
    tipo VARCHAR(20) CHECK (tipo IN ('Materia Prima', 'Insumo')) NOT NULL,
    thumbnail_url VARCHAR(255),
    foto_url VARCHAR(255)
);
GO

-- Tabla de Orden de Materiales
CREATE TABLE orden_materiales (
    id_orden_material VARCHAR(10) PRIMARY KEY,
    id_orden VARCHAR(10) NOT NULL,
    id_material VARCHAR(10) NOT NULL,
    cantidad_utilizada DECIMAL(10,2) NOT NULL,
    desperdicio DECIMAL(10,2),
    CONSTRAINT FK_orden_material_orden FOREIGN KEY (id_orden) REFERENCES ordenes_produccion(id_orden),
    CONSTRAINT FK_orden_material_material FOREIGN KEY (id_material) REFERENCES materiales(id_material)
);
GO

-- Tabla de Detalle Producto-Material
CREATE TABLE detalle_producto_material (
    id_detalle VARCHAR(10) PRIMARY KEY,
    id_producto VARCHAR(10) NOT NULL,
    id_material VARCHAR(10) NOT NULL,
    cantidad_requerida DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_detalle_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    CONSTRAINT FK_detalle_material FOREIGN KEY (id_material) REFERENCES materiales(id_material)
);
GO

-- Tabla de Reportes
CREATE TABLE reportes (
    id_reporte VARCHAR(10) PRIMARY KEY,
    id_orden VARCHAR(10),
    id_producto VARCHAR(10),
    cantidad DECIMAL(10,2),
    tiempo_produccion DECIMAL(10,2),
    estado VARCHAR(20) CHECK (estado IN ('Pendiente', 'En proceso', 'Finalizada', 'Cancelada')) NOT NULL,
    fecha_generacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_reportes_orden FOREIGN KEY (id_orden) REFERENCES ordenes_produccion(id_orden),
    CONSTRAINT FK_reportes_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
GO

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'91a7d9b8-dc89-40e4-b927-292b8a8e499a', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b0709fde-aea1-4bd6-b67e-9792068c443c', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b81e895c-f066-4d20-bf2a-df386e041d5d', N'91a7d9b8-dc89-40e4-b927-292b8a8e499a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Rol], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b81e895c-f066-4d20-bf2a-df386e041d5d', N'Juan Perez', N'Admin', N'juan.perez', N'JUAN.PEREZ', N'juanperez@correo.com', N'JUANPEREZ@CORREO.COM', 0, N'AQAAAAIAAYagAAAAEGJHDM8E8iVbVuv9n3QJFSm8wwer4ZYXRAXu/JezOgzJG1ZxWNkdc7l4axDnvlaVsg==', N'OCRWKASPUBT5SXWGAGXIR34GOTMGRYZX', N'423a9440-eff8-424d-abc2-691df9b62bfe', NULL, 0, 0, NULL, 1, 0)
GO

INSERT INTO departamentos (id_departamento, nombre)  
VALUES  
('DEP001','Diseño y planificación'),  
('DEP002','Corte y ensamblado'),  
('DEP003','Acabado'),
('DEP004','Instalación');
GO

INSERT INTO maquinas (id_maquina, nombre, id_departamento)  
VALUES  
('MAQ001','Fresadora/CNC de 3 Ejes','DEP002'),  
('MAQ002','Laminadora de Prensa en Caliente/Frío','DEP003'),  
('MAQ003','Sierra de Panel Automática con Guía Láser','DEP002'),
('MAQ004','Máquina de Cantos Automática','DEP004'),
('MAQ005','Taladradora de Columnas con Plantillas', 'DEP003'),
('MAQ006','Pistola de Lacado UV','DEP004');
GO

INSERT INTO categoria_productos  (id_categoria, nombre)  
VALUES  
('CAPR01', 'Puertas para interiores'),  
('CAPR02', 'Puertas para exteriores'),  
('CAPR03', 'Puertas de seguridad');
GO

INSERT INTO productos (id_producto, nombre, descripcion, unidad_medida, tiempo_estimado_produccion, id_categoria)  
VALUES  
('PR001', 'Puerta entamborada', 'Puerta de madera con núcleo sólido', 'Unidad', 6.00, 'CAPR01'),  
('PR002', 'Puerta Plegable', 'Puerta con sistema plegable', 'Unidad', 5.00, 'CAPR01'),    
('PR003', 'Puerta Amparo', 'Puerta de vidrio templado', 'Unidad', 7.50, 'CAPR02');
GO


INSERT INTO operarios (id_operario, nombre, estado, tiempo_hora, thumbnail_url, foto_url,id_departamento) 
VALUES 
('OPE001','Hugo García', 'Activo', 7.00, 'ruta/thumb_hugo.jpg', 'ruta/foto_hugo.jpg','DEP002'),
('OPE002','Leo Martínez', 'Inactivo',  0.00, 'ruta/thumb_leo.jpg', 'ruta/foto_leo.jpg','DEP003'),
('OPE003','Omar González', 'Inactivo', 0.00, 'ruta/thumb_omar.jpg', 'ruta/foto_omar.jpg','DEP004');


INSERT INTO materiales (id_material, nombre_material, descripcion, stock, costo_por_unidad, ancho, largo, alto, tipo, thumbnail_url, foto_url) VALUES
('M1001', 'MDF Estándar 18mm', 'Tablero para núcleo de puertas entamboradas', 200, 195.00, 1220, 2440, 18, 'Materia Prima', 'https://ejemplo.com/thumb/mdf.jpg', 'https://ejemplo.com/full/mdf.jpg'),
('M1002', 'MDF Alta Densidad 25mm', 'Para puertas premium (Amparo)', 200, 312.00, 1220, 2440, 25, 'Materia Prima', 'https://ejemplo.com/thumb/mdf-hd.jpg', 'https://ejemplo.com/full/mdf-hd.jpg'),
('M1003', 'Tablero Melaminado Blanco', 'MDF pre-revestido (ahorra tiempo)', 200, 273.00, 1220, 2440, 18, 'Materia Prima', 'https://ejemplo.com/thumb/melamina.jpg', 'https://ejemplo.com/full/melamina.jpg'),
('M1004', 'Madera de Cedro', 'Listones para marcos/plegables', 300, 62.00, 100, 2400, 20, 'Materia Prima', 'https://ejemplo.com/thumb/cedro.jpg', 'https://ejemplo.com/full/cedro.jpg'),
('M1005', 'Perfil Aluminio Corredizo', 'Rieles para puertas corredizas', 25, 390.00, 50, 3000, 15, 'Materia Prima', 'https://ejemplo.com/thumb/aluminio.jpg', 'https://ejemplo.com/full/aluminio.jpg'),
('M1006', 'Lámina Melamina Toscana', 'Revestimiento decorativo', 350, 117.00, 1220, 2440, 0.8, 'Materia Prima', 'https://ejemplo.com/thumb/mel-toscana.jpg', 'https://ejemplo.com/full/mel-toscana.jpg'),
('M1007', 'Film PVC Texturizado', 'Efecto 3D para puertas Amparo', 350, 195.00, 1000, 2000, 0.5, 'Materia Prima', 'https://ejemplo.com/thumb/pvc-text.jpg', 'https://ejemplo.com/full/pvc-text.jpg'),
('M1008', 'Vidrio Templado 6mm', 'Para puertas con ventanas', 200, 468.00, 1000, 2000, 6, 'Materia Prima', 'https://ejemplo.com/thumb/vidrio.jpg', 'https://ejemplo.com/full/vidrio.jpg'),
('M1009', 'Contrachapado de Pino 12mm', 'Refuerzos internos', 200, 180.00, 1220, 2440, 12, 'Materia Prima', 'https://ejemplo.com/thumb/contrachapado.jpg', 'https://ejemplo.com/full/contrachapado.jpg');

--Insumos
INSERT INTO materiales (id_material, nombre_material, descripcion, stock, costo_por_unidad, ancho, largo, alto, tipo, thumbnail_url, foto_url) VALUES
('M1010', 'Bisagra Cazoleta 35mm', 'Para puertas entamboradas', 300, 23.00, 35, 35, 12, 'Insumo', 'https://ejemplo.com/thumb/bisagra.jpg', 'https://ejemplo.com/full/bisagra.jpg'),
('M1011', 'Bisagra Piano 50cm', 'Para puertas plegables', 100, 39.00, 25, 500, 3, 'Insumo', 'https://ejemplo.com/thumb/bis-piano.jpg', 'https://ejemplo.com/full/bis-piano.jpg'),
('M1012', 'Ruedas Nylon (x4)', 'Para puertas corredizas de PVC', 175, 156.00, 40, 40, 25, 'Insumo', 'https://ejemplo.com/thumb/ruedas.jpg', 'https://ejemplo.com/full/ruedas.jpg'),
('M1013', 'Manija Moderna Níquel', 'Acabado metálico', 180, 78.00, 120, 30, 15, 'Insumo', 'https://ejemplo.com/thumb/manija.jpg', 'https://ejemplo.com/full/manija.jpg'),
('M1014', 'Canto PVC 2mm', 'Borde autoadhesivo', 120, 15.60, 2, 2000, 18, 'Insumo', 'https://ejemplo.com/thumb/canto.jpg', 'https://ejemplo.com/full/canto.jpg'),
('M1015', 'Tornillos para Madera #8x50mm (x100)', 'Ensamblaje de marcos', 5000, 45.00, NULL, NULL, NULL, 'Insumo', 'https://ejemplo.com/thumb/tornillos.jpg', 'https://ejemplo.com/full/tornillos.jpg'),
('M1016', 'Tornillos Autorroscantes para Aluminio (x50)', 'Fijación de herrajes', 5000, 60.00, NULL, NULL, NULL, 'Insumo', 'https://ejemplo.com/thumb/torn-al.jpg', 'https://ejemplo.com/full/torn-al.jpg'),
('M1017', 'Pegamento para Madera (1kg)', 'Adhesivo profesional', 150, 75.00, NULL, NULL, NULL, 'Insumo', 'https://ejemplo.com/thumb/pegamento.jpg', 'https://ejemplo.com/full/pegamento.jpg'),
('M1018', 'Silicona Neutra (280ml)', 'Sellado de juntas', 170, 35.00, NULL, NULL, NULL, 'Insumo', 'https://ejemplo.com/thumb/silicona.jpg', 'https://ejemplo.com/full/silicona.jpg'),
('M1019', 'Fresa para Bisagras 35mm', 'Instalación profesional', 140, 120.00, 35, 35, 12, 'Insumo', 'https://ejemplo.com/thumb/fresa.jpg', 'https://ejemplo.com/full/fresa.jpg');

INSERT INTO ordenes_Produccion (id_orden, id_producto, cantidad, estado, fecha_inicio, fecha_entrega)
VALUES 
('IO001', 'PR001', 25, 'En proceso', '2025-03-01', '2025-04-01'),
('IO002','PR002', 30, 'En proceso', '2025-03-01', '2025-04-05'),
('IO003','PR003', 12, 'En proceso', '2025-03-01', '2025-04-20');


INSERT INTO seguimiento_Produccion (id_seguimiento, id_orden, estado, avance, tiempo_trabajado, material_consumido, id_operario, fecha_actualizacion) 
VALUES 
('SEG001', 'IO001', 'En proceso', .40, 5.50, 60, 'OPE001', '2025-04-01'),
('SEG002', 'IO002', 'En proceso', .25, 2.30, 20, 'OPE002', '2025-04-05'),
('SEG003', 'IO003', 'En proceso', .60, 6.00, 70, 'OPE003', '2025-04-20');


INSERT INTO reportes (id_reporte, id_orden, id_producto, cantidad, tiempo_produccion, estado, fecha_generacion) 
VALUES 
('REP001','IO001', 'PR001', 50, 5.5, 'En proceso', '2025-04-20'),
('REP002','IO002','PR002', 32, 2.3, 'En proceso', '2025-04-20'),
('REP003','IO003','PR003', 32, 2.3, 'En proceso', '2025-04-20');


INSERT INTO orden_Materiales (id_orden_material, id_orden, id_material, cantidad_utilizada, desperdicio)
VALUES 
-- Puerta Entambonada
('ORMA01','IO001', 'M1001', 1250, 50),   
('ORMA02','IO001', 'M1004', 50, 2),  
('ORMA03','IO001', 'M1008', 75, 3),  
('ORMA04','IO001', 'M1011', 50, 2),

-- Puerta Plegable
('ORMA05','IO002', 'M1004', 30, 1),
('ORMA06','IO002', 'M1009', 30, 1),
('ORMA07','IO002', 'M1006', 600, 12),
('ORMA08','IO002', 'M1011', 38, 1),
('ORMA010','IO002', 'M1015', 11, 1),
('ORMA011','IO002', 'M1017', 11, 0),

-- Puerta Amparo
('ORMA012','IO002', 'M1002', 12, 0),
('ORMA013','IO002', 'M1007', 12, 1),
('ORMA015','IO002', 'M1010', 24, 1),
('ORMA016','IO002', 'M1014', 48, 2),
('ORMA017','IO002', 'M1017', 12, 0),
('ORMA018','IO002', 'M1018', 12, 1);


INSERT INTO detalle_producto_material (id_detalle, id_producto, id_material, cantidad_requerida)
VALUES 
-- Puerta Entambonada
('DPM001','PR001','M1001', 1),  
('DPM002','PR001','M1004',4),   
('DPM003','PR001','M1008',0.5),      
('DPM004','PR001','M1010',3),   
('DPM005','PR001','M1013',1),  
('DPM006','PR001','M1015',20),
('DPM007','PR001','M1010',0.5),  

-- Puerta Plegable
('DPM008','PR002','M1004',6),
('DPM009','PR002','M1009',2),
('DPM010','PR002','M1006',2),
('DPM011','PR002','M1011',4),
('DPM012','PR002','M1012',1),
('DPM013','PR002','M1015',30),
('DPM014','PR002','M1017',0.8),

-- Puerta Amparo
('DPM015','PR003','M1002',1),
('DPM016','PR003','M1007',2.5),
('DPM017','PR003','M1009',4),
('DPM018','PR003','M1010',5),
('DPM019','PR003','M1014',0.6),
('DPM020','PR003','M1017',1),
('DPM021','PR003','M1018',1);
