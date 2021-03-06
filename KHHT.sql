USE [KHHT]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountLopHocs]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountLopHocs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDLopHoc] [int] NULL,
	[IDAccount] [int] NULL,
	[IsDisabled] [bit] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AccountLopHocs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [nvarchar](10) NULL,
	[IDKhoaDaoTao] [int] NULL,
	[HoVaTen] [nvarchar](max) NULL,
	[MailVL] [nvarchar](max) NULL,
	[PhanLoai] [int] NOT NULL,
	[DaXem] [bit] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Accounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTaoHocKis]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTaoHocKis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKeHoachDaoTao] [int] NOT NULL,
	[IDHocKi] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DaoTaoHocKis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVienMonHocs]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVienMonHocs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDMonHoc] [int] NOT NULL,
	[IDGiangVien] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.GiangVienMonHocs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKis]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenHocKi] [nvarchar](max) NULL,
	[LoaiHocKi] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.HocKis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhanTienQuyets]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhanTienQuyets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDMonHoc] [int] NULL,
	[IDMonHocTienQuyet] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.HocPhanTienQuyets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeHoachDaoTaos]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeHoachDaoTaos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhoaDaoTao] [int] NOT NULL,
	[TenKeHoachDaoTao] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.KeHoachDaoTaos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeHoachHocTaps]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeHoachHocTaps](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKeHoachDaoTao] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[HocLai] [bit] NOT NULL,
	[HocVuot] [bit] NOT NULL,
	[CaiThien] [bit] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.KeHoachHocTaps] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaBoMons]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaBoMons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaBoMon] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.KhoaBoMons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaDaoTaos]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaDaoTaos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaDaoTao] [nvarchar](max) NULL,
	[NienKhoa] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[IDLoaiHinhDaoTao] [int] NULL,
 CONSTRAINT [PK_dbo.KhoaDaoTaos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHinhDaoTaos]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHinhDaoTaos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHinh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LoaiHinhDaoTaos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocs]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhoaDaoTao] [int] NULL,
	[TenLop] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LopHocs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHocHocKis]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHocHocKis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDMonHoc] [int] NOT NULL,
	[IDHocKi] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MonHocHocKis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHocs]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHocs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhoaBoMon] [int] NOT NULL,
	[MaMonHoc] [nvarchar](max) NULL,
	[TenMonHoc] [nvarchar](max) NULL,
	[HocPhanTienQuyet] [bit] NOT NULL,
	[HocPhanHocTruoc] [bit] NOT NULL,
	[SoTiet] [int] NOT NULL,
	[SoTietLyThuyet] [int] NOT NULL,
	[SoTietThucHanh] [int] NOT NULL,
	[LoaiMonHoc] [int] NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MonHocs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoaiTaiKhoans]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiTaiKhoans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PhanLoaiTaiKhoans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVienKeHoachHocTaps]    Script Date: 7/25/2021 2:14:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVienKeHoachHocTaps](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSinhVien] [int] NOT NULL,
	[IDKeHoachHocTap] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SinhVienKeHoachHocTaps] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountLopHocs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountLopHocs_dbo.Accounts_IDAccount] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[Accounts] ([ID])
GO
ALTER TABLE [dbo].[AccountLopHocs] CHECK CONSTRAINT [FK_dbo.AccountLopHocs_dbo.Accounts_IDAccount]
GO
ALTER TABLE [dbo].[AccountLopHocs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccountLopHocs_dbo.LopHocs_IDLopHoc] FOREIGN KEY([IDLopHoc])
REFERENCES [dbo].[LopHocs] ([ID])
GO
ALTER TABLE [dbo].[AccountLopHocs] CHECK CONSTRAINT [FK_dbo.AccountLopHocs_dbo.LopHocs_IDLopHoc]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.KhoaDaoTaos_IDKhoaDaoTao] FOREIGN KEY([IDKhoaDaoTao])
REFERENCES [dbo].[KhoaDaoTaos] ([ID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.KhoaDaoTaos_IDKhoaDaoTao]
GO
ALTER TABLE [dbo].[KhoaDaoTaos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KhoaDaoTaos_dbo.LoaiHinhDaoTaos_IDLoaiHinhDaoTao] FOREIGN KEY([IDLoaiHinhDaoTao])
REFERENCES [dbo].[LoaiHinhDaoTaos] ([ID])
GO
ALTER TABLE [dbo].[KhoaDaoTaos] CHECK CONSTRAINT [FK_dbo.KhoaDaoTaos_dbo.LoaiHinhDaoTaos_IDLoaiHinhDaoTao]
GO
ALTER TABLE [dbo].[LopHocs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LopHocs_dbo.KhoaDaoTaos_IDKhoaDaoTao] FOREIGN KEY([IDKhoaDaoTao])
REFERENCES [dbo].[KhoaDaoTaos] ([ID])
GO
ALTER TABLE [dbo].[LopHocs] CHECK CONSTRAINT [FK_dbo.LopHocs_dbo.KhoaDaoTaos_IDKhoaDaoTao]
GO
