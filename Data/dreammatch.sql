USE [dreammatch]

/****** Object:  Table [dbo].[Clubes]    Script Date: 14/10/2024 14:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clubes](
	[ClubID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[LugarEstablecimiento] [varchar](50) NOT NULL,
	[Escudo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clubes] PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pruebas]    Script Date: 14/10/2024 14:30:22 ******/
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
/****** Object:  Table [dbo].[PruebasAgendadas]    Script Date: 14/10/2024 14:30:22 ******/
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
	[IdPDisponibles] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasDisponibles]    Script Date: 14/10/2024 14:30:22 ******/
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
/****** Object:  Table [dbo].[PruebasRealizadas]    Script Date: 14/10/2024 14:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasRealizadas](
	[IdPRealizadas] [int] NOT NULL,
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
/****** Object:  Table [dbo].[PruebasRecomendadas]    Script Date: 14/10/2024 14:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasRecomendadas](
	[IdPRecomendadas] [int] NOT NULL,
	[Lugar] [varchar](50) NULL,
	[dia] [date] NULL,
	[Hora] [time](7) NULL,
	[ClubID] [varchar](50) NULL,
 CONSTRAINT [PK_PruebasRecomendadas] PRIMARY KEY CLUSTERED 
(
	[IdPRecomendadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/10/2024 14:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[Gmail] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Altura] [float] NOT NULL,
	[peso] [float] NOT NULL,
	[Nacionalidad] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Foto] [varchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO