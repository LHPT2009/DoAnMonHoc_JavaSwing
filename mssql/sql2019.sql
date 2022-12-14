USE [detai12]
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 10/3/2022 8:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[idsv] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](200) NULL,
	[mssv] [int] NULL,
	[toan] [float] NULL,
	[van] [float] NULL,
	[tienganh] [float] NULL,
	[diemtb] [float] NULL,
	[idtaikhoan] [int] NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[idsv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 10/3/2022 8:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[idtaikhoan] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[idtaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sinhvien] ON 

INSERT [dbo].[sinhvien] ([idsv], [hoten], [mssv], [toan], [van], [tienganh], [diemtb], [idtaikhoan]) VALUES (1, N'Nguyễn Văn A', 191112312, 5, 5, 5, 5, 1)
INSERT [dbo].[sinhvien] ([idsv], [hoten], [mssv], [toan], [van], [tienganh], [diemtb], [idtaikhoan]) VALUES (2, N'Trần Thị 4', 191112312, 6, 6, 8, 7, 2)
INSERT [dbo].[sinhvien] ([idsv], [hoten], [mssv], [toan], [van], [tienganh], [diemtb], [idtaikhoan]) VALUES (3, N'Dương thị thu C', 191121323, 8, 8, 8, 8, 3)
SET IDENTITY_INSERT [dbo].[sinhvien] OFF
GO
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([idtaikhoan], [username], [password]) VALUES (1, N'tung', N'tung')
INSERT [dbo].[taikhoan] ([idtaikhoan], [username], [password]) VALUES (2, N'an', N'an')
INSERT [dbo].[taikhoan] ([idtaikhoan], [username], [password]) VALUES (3, N'huynh', N'huynh')
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_taikhoan] FOREIGN KEY([idtaikhoan])
REFERENCES [dbo].[taikhoan] ([idtaikhoan])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_taikhoan]
GO
