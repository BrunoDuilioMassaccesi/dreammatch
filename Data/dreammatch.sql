USE [dreammatch]
GO
/****** Object:  Table [dbo].[Clubes]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[Desafios]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[OlvideMicontraseña]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[Pruebas]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[PruebasAgendadas]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[PruebasDisponibles]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[PruebasRealizadas]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[PruebasRecomendadas]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[Registro}]    Script Date: 14/11/2024 11:00:05 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/11/2024 11:00:05 ******/
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
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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