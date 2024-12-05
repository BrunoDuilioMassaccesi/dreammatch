USE [dreammatch]
GO
/****** Object:  Database [dreammatch]    Script Date: 27/11/2024 15:40:11 ******/
CREATE DATABASE [dreammatch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dreammatch', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dreammatch.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dreammatch_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dreammatch_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dreammatch] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dreammatch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dreammatch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dreammatch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dreammatch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dreammatch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dreammatch] SET ARITHABORT OFF 
GO
ALTER DATABASE [dreammatch] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dreammatch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dreammatch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dreammatch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dreammatch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dreammatch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dreammatch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dreammatch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dreammatch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dreammatch] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dreammatch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dreammatch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dreammatch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dreammatch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dreammatch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dreammatch] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dreammatch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dreammatch] SET RECOVERY FULL 
GO
ALTER DATABASE [dreammatch] SET  MULTI_USER 
GO
ALTER DATABASE [dreammatch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dreammatch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dreammatch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dreammatch] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dreammatch] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dreammatch', N'ON'
GO
ALTER DATABASE [dreammatch] SET QUERY_STORE = OFF
GO
USE [dreammatch]
GO
/****** Object:  User [alumno]    Script Date: 27/11/2024 15:40:12 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Clubes]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clubes](
	[ClubID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[LugarEstablecimiento] [varchar](50) NOT NULL,
	[Escudo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clubes] PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Desafios]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Desafios](
	[IdDesafiosDream] [int] IDENTITY(1,1) NOT NULL,
	[DesafiosBasicos] [varchar](50) NULL,
	[DesafiosIntermedios] [varchar](50) NULL,
	[DesafiosDificiles] [varchar](50) NULL,
	[UsuarioID] [int] NOT NULL,
 CONSTRAINT [PK_Desafios] PRIMARY KEY CLUSTERED 
(
	[IdDesafiosDream] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OlvideMicontraseña]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OlvideMicontraseña](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[gmail] [varchar](50) NULL,
	[UsuarioID] [int] NOT NULL,
 CONSTRAINT [PK_OlvideMicontraseña] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pruebas]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pruebas](
	[PruebaID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NOT NULL,
	[FechaPrueba] [datetime] NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Cupos] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[IdPRealizadas] [int] NOT NULL,
	[IdPDisponibles] [int] NOT NULL,
	[IdPRecomendadas] [int] NOT NULL,
	[IdPAgendadas] [int] NOT NULL,
 CONSTRAINT [PK_Purebas] PRIMARY KEY CLUSTERED 
(
	[PruebaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasAgendadas]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasAgendadas](
	[IdPAgendadas] [int] NOT NULL,
	[Lugar] [varchar](50) NULL,
	[dia] [date] NULL,
	[hora] [time](7) NULL,
	[ClubID] [int] NOT NULL,
	[IdPRecomendadas] [int] NULL,
	[IdPDisponibles] [int] NULL,
 CONSTRAINT [PK_PruebasAgendadas] PRIMARY KEY CLUSTERED 
(
	[IdPAgendadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasDisponibles]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasDisponibles](
	[IdPDisponibles] [int] NOT NULL,
	[Lugar] [varchar](50) NULL,
	[dia] [date] NULL,
	[hora] [time](7) NULL,
	[ClubID] [int] NOT NULL,
 CONSTRAINT [PK_PruebasDisponibles] PRIMARY KEY CLUSTERED 
(
	[IdPDisponibles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasRealizadas]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasRealizadas](
	[IdPRealizadas] [int] IDENTITY(1,1) NOT NULL,
	[devolucion] [varchar](50) NULL,
	[Lugar] [varchar](50) NULL,
	[Dia] [date] NULL,
	[ClubID] [int] NOT NULL,
 CONSTRAINT [PK_PruebasRealizadas] PRIMARY KEY CLUSTERED 
(
	[IdPRealizadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasRecomendadas]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasRecomendadas](
	[IdPRecomendadas] [int] IDENTITY(1,1) NOT NULL,
	[Lugar] [varchar](50) NULL,
	[dia] [date] NULL,
	[Hora] [time](7) NULL,
	[ClubID] [int] NOT NULL,
 CONSTRAINT [PK_PruebasRecomendadas] PRIMARY KEY CLUSTERED 
(
	[IdPRecomendadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro}]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro}](
	[RegistroID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Gmail] [varchar](50) NULL,
	[AnioNacimiento] [varchar](50) NULL,
	[UsuarioID] [int] NOT NULL,
 CONSTRAINT [PK_Registro}] PRIMARY KEY CLUSTERED 
(
	[RegistroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/11/2024 15:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) NULL,
	[Gmail] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Pais] [varchar](50) NULL,
	[Nacimiento] [date] NULL,
	[Foto] [text] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioID], [NombreUsuario], [Gmail], [Contraseña], [Telefono], [Pais], [Nacimiento], [Foto]) VALUES (1, N'Lucas', N'lucas@gmail.com', N'123', NULL, NULL, CAST(N'2007-02-11' AS Date), NULL)
INSERT [dbo].[Usuario] ([UsuarioID], [NombreUsuario], [Gmail], [Contraseña], [Telefono], [Pais], [Nacimiento], [Foto]) VALUES (2, N'Lucas', N'lucas@gmail.com', N'123', NULL, NULL, CAST(N'2007-11-22' AS Date), NULL)
INSERT [dbo].[Usuario] ([UsuarioID], [NombreUsuario], [Gmail], [Contraseña], [Telefono], [Pais], [Nacimiento], [Foto]) VALUES (3, N'Bruno', N'bruno@gmail.com', N'Homero', NULL, NULL, CAST(N'2007-03-25' AS Date), N'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTT7vjKd30hc083SDHDxLOvAST3MX1tBkNvg2-PxDAzns5qRi3vJIEc459b6cNiH0EIVEFogJPjuJQVnNw')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Desafios]  WITH CHECK ADD  CONSTRAINT [FK_Desafios_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Desafios] CHECK CONSTRAINT [FK_Desafios_Usuario]
GO
ALTER TABLE [dbo].[OlvideMicontraseña]  WITH CHECK ADD  CONSTRAINT [FK_OlvideMicontraseña_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[OlvideMicontraseña] CHECK CONSTRAINT [FK_OlvideMicontraseña_Usuario]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_Clubes] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_Clubes]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_PruebasAgendadas] FOREIGN KEY([IdPAgendadas])
REFERENCES [dbo].[PruebasAgendadas] ([IdPAgendadas])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_PruebasAgendadas]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_PruebasDisponibles] FOREIGN KEY([IdPDisponibles])
REFERENCES [dbo].[PruebasDisponibles] ([IdPDisponibles])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_PruebasDisponibles]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_PruebasRealizadas1] FOREIGN KEY([IdPRealizadas])
REFERENCES [dbo].[PruebasRealizadas] ([IdPRealizadas])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_PruebasRealizadas1]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_PruebasRecomendadas] FOREIGN KEY([IdPRecomendadas])
REFERENCES [dbo].[PruebasRecomendadas] ([IdPRecomendadas])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_PruebasRecomendadas]
GO
ALTER TABLE [dbo].[Pruebas]  WITH CHECK ADD  CONSTRAINT [FK_Pruebas_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Pruebas] CHECK CONSTRAINT [FK_Pruebas_Usuario]
GO
ALTER TABLE [dbo].[PruebasAgendadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasAgendadas_Clubes] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[PruebasAgendadas] CHECK CONSTRAINT [FK_PruebasAgendadas_Clubes]
GO
ALTER TABLE [dbo].[PruebasAgendadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasAgendadas_Clubes1] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[PruebasAgendadas] CHECK CONSTRAINT [FK_PruebasAgendadas_Clubes1]
GO
ALTER TABLE [dbo].[PruebasAgendadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasAgendadas_PruebasDisponibles] FOREIGN KEY([IdPDisponibles])
REFERENCES [dbo].[PruebasDisponibles] ([IdPDisponibles])
GO
ALTER TABLE [dbo].[PruebasAgendadas] CHECK CONSTRAINT [FK_PruebasAgendadas_PruebasDisponibles]
GO
ALTER TABLE [dbo].[PruebasAgendadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasAgendadas_PruebasRecomendadas] FOREIGN KEY([IdPRecomendadas])
REFERENCES [dbo].[PruebasRecomendadas] ([IdPRecomendadas])
GO
ALTER TABLE [dbo].[PruebasAgendadas] CHECK CONSTRAINT [FK_PruebasAgendadas_PruebasRecomendadas]
GO
ALTER TABLE [dbo].[PruebasDisponibles]  WITH CHECK ADD  CONSTRAINT [FK_PruebasDisponibles_Clubes] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[PruebasDisponibles] CHECK CONSTRAINT [FK_PruebasDisponibles_Clubes]
GO
ALTER TABLE [dbo].[PruebasRealizadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasRealizadas_Clubes] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[PruebasRealizadas] CHECK CONSTRAINT [FK_PruebasRealizadas_Clubes]
GO
ALTER TABLE [dbo].[PruebasRecomendadas]  WITH CHECK ADD  CONSTRAINT [FK_PruebasRecomendadas_Clubes] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubes] ([ClubID])
GO
ALTER TABLE [dbo].[PruebasRecomendadas] CHECK CONSTRAINT [FK_PruebasRecomendadas_Clubes]
GO
ALTER TABLE [dbo].[Registro}]  WITH CHECK ADD  CONSTRAINT [FK_Registro}_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Registro}] CHECK CONSTRAINT [FK_Registro}_Usuario]
GO
USE [master]
GO
ALTER DATABASE [dreammatch] SET  READ_WRITE 
GO
