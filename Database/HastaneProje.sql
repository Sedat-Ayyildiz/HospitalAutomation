USE [HastaneProje]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [tinyint] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTC] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreterler]    Script Date: 15.06.2023 04:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreterler](
	[Sekreterid] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](20) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (3, N'SEDAT', N'AYYILDIZ', N'11111111111', N'5345343434', N'1111', N'ERKEK')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
GO
ALTER TABLE [dbo].[Tbl_Randevular] ADD  CONSTRAINT [DF_Tbl_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
