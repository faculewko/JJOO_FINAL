USE [master]
GO
/****** Object:  Database [base de datos jjoo]    Script Date: 27/8/2024 08:29:43 ******/
CREATE DATABASE [base de datos jjoo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'base de datos jjoo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\base de datos jjoo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'base de datos jjoo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\base de datos jjoo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [base de datos jjoo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [base de datos jjoo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [base de datos jjoo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [base de datos jjoo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [base de datos jjoo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [base de datos jjoo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [base de datos jjoo] SET ARITHABORT OFF 
GO
ALTER DATABASE [base de datos jjoo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [base de datos jjoo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [base de datos jjoo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [base de datos jjoo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [base de datos jjoo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [base de datos jjoo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [base de datos jjoo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [base de datos jjoo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [base de datos jjoo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [base de datos jjoo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [base de datos jjoo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [base de datos jjoo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [base de datos jjoo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [base de datos jjoo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [base de datos jjoo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [base de datos jjoo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [base de datos jjoo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [base de datos jjoo] SET RECOVERY FULL 
GO
ALTER DATABASE [base de datos jjoo] SET  MULTI_USER 
GO
ALTER DATABASE [base de datos jjoo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [base de datos jjoo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [base de datos jjoo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [base de datos jjoo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [base de datos jjoo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'base de datos jjoo', N'ON'
GO
ALTER DATABASE [base de datos jjoo] SET QUERY_STORE = OFF
GO
USE [base de datos jjoo]
GO
/****** Object:  User [alumno]    Script Date: 27/8/2024 08:29:43 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Deporte]    Script Date: 27/8/2024 08:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deporte](
	[Id_deporte] [int] NOT NULL,
	[Nombre_deporte] [varchar](20) NOT NULL,
	[foto] [text] NOT NULL,
 CONSTRAINT [PK_Deporte] PRIMARY KEY CLUSTERED 
(
	[Id_deporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportista]    Script Date: 27/8/2024 08:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportista](
	[id_deportista] [int] NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
	[Apellido] [varchar](10) NOT NULL,
	[FechaNaciemiento] [date] NOT NULL,
	[idPais] [int] NOT NULL,
	[idDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportista] PRIMARY KEY CLUSTERED 
(
	[id_deportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 27/8/2024 08:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Deporte] ([Id_deporte], [Nombre_deporte], [foto]) VALUES (1, N'Futbol', N'https://img.freepik.com/foto-gratis/jugador-futbol-masculino-pelota-campo-hierba_23-2150821492.jpg')
INSERT [dbo].[Deporte] ([Id_deporte], [Nombre_deporte], [foto]) VALUES (2, N'Natacion', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSBeHI1QGEv_M5Px08X_giWOm63zCED8CPA&s')
INSERT [dbo].[Deporte] ([Id_deporte], [Nombre_deporte], [foto]) VALUES (3, N'Basquet', N'https://www.shutterstock.com/image-photo/junior-level-basketball-player-bouncing-600nw-2195727415.jpg')
INSERT [dbo].[Deporte] ([Id_deporte], [Nombre_deporte], [foto]) VALUES (4, N'Tenis', N'https://s3.abcstatics.com/media/bienestar/2019/08/02/tenis-abecedario-kgNF--1248x698@abc.jpg')
GO
INSERT [dbo].[Deportista] ([id_deportista], [Nombre], [Apellido], [FechaNaciemiento], [idPais], [idDeporte]) VALUES (1, N'Julian', N'Alvarez', CAST(N'2000-09-05' AS Date), 1, 1)
INSERT [dbo].[Deportista] ([id_deportista], [Nombre], [Apellido], [FechaNaciemiento], [idPais], [idDeporte]) VALUES (2, N'Michael ', N'Phelps', CAST(N'1990-04-03' AS Date), 2, 2)
INSERT [dbo].[Deportista] ([id_deportista], [Nombre], [Apellido], [FechaNaciemiento], [idPais], [idDeporte]) VALUES (3, N'Leticia', N'Romero', CAST(N'1995-05-02' AS Date), 3, 3)
INSERT [dbo].[Deportista] ([id_deportista], [Nombre], [Apellido], [FechaNaciemiento], [idPais], [idDeporte]) VALUES (4, N'Novak', N'Djokovic', CAST(N'1999-03-07' AS Date), 4, 4)
GO
INSERT [dbo].[Paises] ([IdPais], [nombre], [bandera], [FechaFundacion]) VALUES (1, N'argentina', N'https://c.files.bbci.co.uk/D348/production/_95588045_178392703.jpg', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [nombre], [bandera], [FechaFundacion]) VALUES (2, N'estados unidos', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU6wXJtulxZNywdV-nx_7wuIMvIKJSJ_yEyQ&s', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [nombre], [bandera], [FechaFundacion]) VALUES (3, N'españa', N'https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2023/08/23/bandera-espana-freepik-1.jpeg', CAST(N'1492-09-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [nombre], [bandera], [FechaFundacion]) VALUES (4, N'serbia', N'https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2023/08/23/bandera-espana-freepik-1.jpeg', CAST(N'1786-03-02' AS Date))
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([Id_deporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_Deporte]
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([IdPais])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_Paises]
GO
USE [master]
GO
ALTER DATABASE [base de datos jjoo] SET  READ_WRITE 
GO
