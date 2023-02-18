USE [master]
GO
/****** Object:  Database [examen_jose_laboriel_62018000]    Script Date: 17-Feb-23 10:58:50 PM ******/
CREATE DATABASE [examen_jose_laboriel_62018000]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'examen_jose_laboriel_62018000', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\examen_jose_laboriel_62018000.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'examen_jose_laboriel_62018000_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\examen_jose_laboriel_62018000_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [examen_jose_laboriel_62018000].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ARITHABORT OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET  ENABLE_BROKER 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET  MULTI_USER 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET DB_CHAINING OFF 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET QUERY_STORE = OFF
GO
USE [examen_jose_laboriel_62018000]
GO
/****** Object:  Table [dbo].[abonos]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abonos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NULL,
	[credito_id] [int] NULL,
	[fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[descripcion] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras_detalle]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[compra_id] [int] NULL,
	[producto_id] [int] NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[creditos]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[creditos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NULL,
	[venta_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[encargos]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encargos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[compra_id] [int] NULL,
	[fecha_de_entrega_prevista] [datetime] NOT NULL,
	[fecha_de_entrega] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gastos_casa]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gastos_casa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NULL,
	[descripcion] [varchar](40) NULL,
	[cantidad] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gastos_negocio]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gastos_negocio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](40) NULL,
	[monto] [decimal](15, 3) NOT NULL,
	[fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NULL,
	[existencias] [int] NOT NULL,
	[ganancia_del_30] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[precio] [decimal](15, 3) NOT NULL,
	[preveedor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NULL,
	[al_credito] [bit] NOT NULL,
	[fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas_detalle]    Script Date: 17-Feb-23 10:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[venta_id] [int] NULL,
	[producto_id] [int] NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](15, 3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[abonos] ON 

INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (1, 8, 5, CAST(N'2020-11-24T11:12:15.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (2, 6, 3, CAST(N'2002-09-07T13:45:06.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (3, 7, 3, CAST(N'2015-06-09T20:13:38.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (4, 9, 4, CAST(N'2002-06-18T02:32:17.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (5, 8, 6, CAST(N'2001-11-03T20:33:29.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (6, 10, 1, CAST(N'2006-03-13T02:27:21.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (7, 7, 3, CAST(N'2010-01-30T14:43:43.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (8, 8, 7, CAST(N'2002-02-05T01:21:48.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (9, 7, 7, CAST(N'2014-06-29T19:52:00.000' AS DateTime))
INSERT [dbo].[abonos] ([id], [cliente_id], [credito_id], [fecha]) VALUES (10, 6, 6, CAST(N'2015-09-27T03:02:26.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[abonos] OFF
GO
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (1, N'Jose', N'Laboriel', N'94470132')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (2, N'Karla', N'Bonilla', N'23139929')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (3, N'Monica', N'Pineda', N'34932301')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (4, N'Pedro', N'Picapiedra', N'39291911')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (5, N'Leonel', N'Messi', N'94470130')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (6, N'Naun', N'Torres', N'32192921')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (7, N'Juan', N'Pineda', N'34992191')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (8, N'Monserrat', N'Castro', N'23929911')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (9, N'Plutarco', N'Smith', N'23923292')
INSERT [dbo].[clientes] ([id], [nombre], [apellido], [telefono]) VALUES (10, N'Jean', N'Wilson', N'93291211')
SET IDENTITY_INSERT [dbo].[clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[compras] ON 

INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (1, CAST(N'2015-12-25T09:13:01.000' AS DateTime), N'GIwypOI9n1')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (2, CAST(N'2002-07-30T22:23:35.000' AS DateTime), N'fs1eJAK6MX')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (3, CAST(N'2001-09-09T10:30:44.000' AS DateTime), N'vPOlesuoGQ')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (4, CAST(N'2001-01-17T12:19:15.000' AS DateTime), N'cxrRw8jmA5')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (5, CAST(N'2019-03-29T23:54:35.000' AS DateTime), N'mCQdQcjG84')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (6, CAST(N'2010-02-21T09:33:51.000' AS DateTime), N'eVpIdduhWQ')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (7, CAST(N'2006-12-24T07:47:23.000' AS DateTime), N'mxhblicUSZ')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (8, CAST(N'2002-10-13T05:55:45.000' AS DateTime), N'ouOKIKWPzK')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (9, CAST(N'2012-02-18T18:11:55.000' AS DateTime), N'TBUmLZlR2c')
INSERT [dbo].[compras] ([id], [fecha], [descripcion]) VALUES (10, CAST(N'2011-08-15T09:37:59.000' AS DateTime), N'49Wo7RMdAk')
SET IDENTITY_INSERT [dbo].[compras] OFF
GO
SET IDENTITY_INSERT [dbo].[compras_detalle] ON 

INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (1, 1, 5, 2, CAST(827.022 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (2, 9, 8, 3, CAST(155.976 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (3, 9, 11, 5, CAST(544.947 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (4, 5, 13, 2, CAST(504.703 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (5, 9, 13, 3, CAST(769.033 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (6, 9, 12, 10, CAST(211.797 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (7, 8, 11, 7, CAST(707.494 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (8, 2, 5, 3, CAST(681.216 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (9, 1, 5, 1, CAST(43.680 AS Decimal(15, 3)))
INSERT [dbo].[compras_detalle] ([id], [compra_id], [producto_id], [cantidad], [precio]) VALUES (10, 7, 9, 6, CAST(344.168 AS Decimal(15, 3)))
SET IDENTITY_INSERT [dbo].[compras_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[creditos] ON 

INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (1, 4, 7)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (2, 10, 3)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (3, 5, 3)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (4, 2, 8)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (5, 9, 4)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (6, 10, 9)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (7, 8, 3)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (8, 8, 10)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (9, 5, 7)
INSERT [dbo].[creditos] ([id], [cliente_id], [venta_id]) VALUES (10, 10, 3)
SET IDENTITY_INSERT [dbo].[creditos] OFF
GO
SET IDENTITY_INSERT [dbo].[encargos] ON 

INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (1, 7, CAST(N'2003-11-27T19:21:22.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (2, 6, CAST(N'2009-06-06T06:29:41.000' AS DateTime), CAST(N'2023-02-21T22:49:30.000' AS DateTime))
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (3, 10, CAST(N'2014-01-11T20:13:09.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (4, 9, CAST(N'2008-04-06T07:24:09.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (5, 10, CAST(N'2010-09-13T01:03:53.000' AS DateTime), CAST(N'2023-02-25T22:49:02.000' AS DateTime))
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (6, 2, CAST(N'2005-05-30T08:19:29.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (7, 10, CAST(N'2004-12-24T16:09:17.000' AS DateTime), CAST(N'2023-03-23T22:49:06.000' AS DateTime))
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (8, 9, CAST(N'2008-12-24T13:32:22.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (9, 3, CAST(N'2011-02-07T16:34:09.000' AS DateTime), NULL)
INSERT [dbo].[encargos] ([id], [compra_id], [fecha_de_entrega_prevista], [fecha_de_entrega]) VALUES (10, 7, CAST(N'2007-01-20T02:12:23.000' AS DateTime), CAST(N'2023-02-16T22:49:25.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[encargos] OFF
GO
SET IDENTITY_INSERT [dbo].[gastos_casa] ON 

INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (1, 9, NULL, 75, CAST(N'2021-08-17T11:15:47.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (2, 1, NULL, 118, CAST(N'2000-05-27T07:07:55.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (3, 8, NULL, 159, CAST(N'2005-07-05T02:45:13.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (4, 1, NULL, 233, CAST(N'2015-11-28T00:13:47.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (5, 9, NULL, 465, CAST(N'2009-07-08T22:27:03.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (6, 10, NULL, 865, CAST(N'2009-04-29T07:09:31.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (7, 14, NULL, 513, CAST(N'2004-03-30T13:38:41.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (8, 12, NULL, 64, CAST(N'2007-05-24T18:02:33.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (9, 13, NULL, 474, CAST(N'2021-11-05T20:01:33.000' AS DateTime))
INSERT [dbo].[gastos_casa] ([id], [producto_id], [descripcion], [cantidad], [fecha]) VALUES (10, 1, NULL, 79, CAST(N'2020-02-18T04:26:35.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[gastos_casa] OFF
GO
SET IDENTITY_INSERT [dbo].[gastos_negocio] ON 

INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (1, NULL, CAST(517.649 AS Decimal(15, 3)), CAST(N'2007-03-01T11:15:52.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (2, NULL, CAST(514.082 AS Decimal(15, 3)), CAST(N'2002-05-11T08:03:30.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (3, NULL, CAST(446.838 AS Decimal(15, 3)), CAST(N'2003-07-08T14:23:21.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (4, NULL, CAST(390.235 AS Decimal(15, 3)), CAST(N'2020-07-08T05:56:31.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (5, N'Gasto de pavimentacion', CAST(953.026 AS Decimal(15, 3)), CAST(N'2004-01-28T02:31:46.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (6, NULL, CAST(476.592 AS Decimal(15, 3)), CAST(N'2013-07-08T19:02:26.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (7, NULL, CAST(840.749 AS Decimal(15, 3)), CAST(N'2016-10-04T02:42:56.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (8, N'Reparacion de aires', CAST(364.488 AS Decimal(15, 3)), CAST(N'2022-09-18T16:14:38.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (9, NULL, CAST(657.979 AS Decimal(15, 3)), CAST(N'2011-10-18T02:02:01.000' AS DateTime))
INSERT [dbo].[gastos_negocio] ([id], [descripcion], [monto], [fecha]) VALUES (10, N'Compra de refrigerador', CAST(261.264 AS Decimal(15, 3)), CAST(N'2005-11-24T10:34:23.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[gastos_negocio] OFF
GO
SET IDENTITY_INSERT [dbo].[inventario] ON 

INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (1, 8, 669, 1)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (2, 7, 136, 0)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (3, 1, 147, 1)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (4, 9, 295, 0)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (5, 11, 929, 1)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (6, 8, 701, 0)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (7, 8, 886, 1)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (8, 14, 402, 0)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (9, 7, 216, 1)
INSERT [dbo].[inventario] ([id], [producto_id], [existencias], [ganancia_del_30]) VALUES (10, 14, 60, 1)
SET IDENTITY_INSERT [dbo].[inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (1, N'Harina', CAST(95.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (5, N'Sal', CAST(10.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (7, N'Huevo', CAST(9.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (8, N'Pasta dental', CAST(25.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (9, N'Coca cola 3L', CAST(70.000 AS Decimal(15, 3)), 3)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (10, N'Pepsi', CAST(70.000 AS Decimal(15, 3)), 5)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (11, N'Leche 1L', CAST(25.000 AS Decimal(15, 3)), 4)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (12, N'Frijoles ', CAST(17.000 AS Decimal(15, 3)), 6)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (13, N'Papel higienico', CAST(45.000 AS Decimal(15, 3)), 9)
INSERT [dbo].[productos] ([id], [nombre], [precio], [preveedor_id]) VALUES (14, N'Pan molde', CAST(35.000 AS Decimal(15, 3)), 7)
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[proveedores] ON 

INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (1, N'Gustavo', N'Pineda', N'93291922')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (2, N'Juan', N'Pineda', N'99392223')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (3, N'Plutarco', N'Garcia', N'93292921')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (4, N'Monica', N'Torres', N'23929921')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (5, N'Juan', N'Perez', N'29329919')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (6, N'Speedy', N'Gonzales', N'93283112')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (7, N'Karla', N'Mungia', N'23929311')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (8, N'Hugo', N'Ji', N'92391291')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (9, N'Ozuna', N'Perez', N'93929291')
INSERT [dbo].[proveedores] ([id], [nombre], [apellido], [telefono]) VALUES (10, N'Messi', N'Mbappe', N'33192911')
SET IDENTITY_INSERT [dbo].[proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (1, 8, 1, CAST(N'2021-03-13T20:30:08.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (2, 8, 1, CAST(N'2004-03-08T02:12:00.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (3, 8, 1, CAST(N'2007-12-29T04:16:26.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (4, 9, 1, CAST(N'2010-02-16T19:06:04.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (5, 2, 1, CAST(N'2011-01-03T18:14:21.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (6, 6, 1, CAST(N'2002-04-04T19:09:42.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (7, 3, 1, CAST(N'2011-06-20T04:03:13.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (8, 10, 1, CAST(N'2007-08-19T22:33:51.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (9, 1, 1, CAST(N'2017-02-01T22:04:18.000' AS DateTime))
INSERT [dbo].[ventas] ([id], [cliente_id], [al_credito], [fecha]) VALUES (10, 7, 1, CAST(N'2019-05-26T21:27:32.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ventas] OFF
GO
SET IDENTITY_INSERT [dbo].[ventas_detalle] ON 

INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (1, 4, 10, 3, CAST(360.284 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (2, 9, 12, 4, CAST(384.296 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (3, 8, 11, 2, CAST(635.918 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (4, 9, 1, 5, CAST(978.019 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (5, 6, 10, 6, CAST(781.407 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (6, 3, 5, 7, CAST(723.213 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (7, 4, 9, 4, CAST(934.195 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (8, 2, 8, 7, CAST(2.238 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (9, 9, 7, 2, CAST(842.864 AS Decimal(15, 3)))
INSERT [dbo].[ventas_detalle] ([id], [venta_id], [producto_id], [cantidad], [precio]) VALUES (10, 5, 10, 340, CAST(991.463 AS Decimal(15, 3)))
SET IDENTITY_INSERT [dbo].[ventas_detalle] OFF
GO
ALTER TABLE [dbo].[abonos]  WITH CHECK ADD FOREIGN KEY([cliente_id])
REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[abonos]  WITH CHECK ADD FOREIGN KEY([credito_id])
REFERENCES [dbo].[creditos] ([id])
GO
ALTER TABLE [dbo].[compras_detalle]  WITH CHECK ADD FOREIGN KEY([compra_id])
REFERENCES [dbo].[compras] ([id])
GO
ALTER TABLE [dbo].[compras_detalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[creditos]  WITH CHECK ADD FOREIGN KEY([cliente_id])
REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[creditos]  WITH CHECK ADD FOREIGN KEY([venta_id])
REFERENCES [dbo].[ventas] ([id])
GO
ALTER TABLE [dbo].[encargos]  WITH CHECK ADD FOREIGN KEY([compra_id])
REFERENCES [dbo].[compras] ([id])
GO
ALTER TABLE [dbo].[gastos_casa]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD FOREIGN KEY([preveedor_id])
REFERENCES [dbo].[proveedores] ([id])
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([cliente_id])
REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[ventas_detalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[ventas_detalle]  WITH CHECK ADD FOREIGN KEY([venta_id])
REFERENCES [dbo].[ventas] ([id])
GO
USE [master]
GO
ALTER DATABASE [examen_jose_laboriel_62018000] SET  READ_WRITE 
GO
