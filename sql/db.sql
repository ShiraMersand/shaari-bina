USE [SR_project]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 27/08/2020 12:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[location_desc] [nvarchar](50) NOT NULL,
	[is_new] [bit] NOT NULL,
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 27/08/2020 12:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Videos]    Script Date: 27/08/2020 12:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[video_id] [int] IDENTITY(1,1) NOT NULL,
	[location_id] [int] NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[num_detected] [int] NOT NULL,
	[num_permitted] [int] NOT NULL,
	[is_model_true] [bit] NULL,
	[is_valid] [bit] NULL,
	[is_new] [bit] NOT NULL,
	[user_id_update] [int] NULL,
	[date_update] [datetime] NULL,
	[src] [nvarchar](50) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[video_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[locations] ON 

INSERT [dbo].[locations] ([location_id], [location_desc], [is_new]) VALUES (1, N'"aaa"', 1)
SET IDENTITY_INSERT [dbo].[locations] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [email], [password], [first_name], [last_name]) VALUES (1, N'sghg@gmail.com', N'123456', N'ddd', N'dxx')
INSERT [dbo].[Users] ([user_id], [email], [password], [first_name], [last_name]) VALUES (2, N'2', N'ngrd', N'vtsrd', N'v')
INSERT [dbo].[Users] ([user_id], [email], [password], [first_name], [last_name]) VALUES (5, N'rut150998@gmail.com', N'111', N'uuuuu', N'v')
INSERT [dbo].[Users] ([user_id], [email], [password], [first_name], [last_name]) VALUES (6, N'rut150998@gmail.com', N'111', N'uuuuu', N'v')
INSERT [dbo].[Users] ([user_id], [email], [password], [first_name], [last_name]) VALUES (7, N'1', N'2', N'ss', N'ss')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Videos] ON 

INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (1, NULL, CAST(N'2020-07-27T15:49:53.173' AS DateTime), CAST(N'2020-07-27T15:49:53.173' AS DateTime), 2, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (2, NULL, CAST(N'2020-07-27T15:50:14.573' AS DateTime), CAST(N'2020-07-27T15:50:14.573' AS DateTime), 2, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (3, NULL, CAST(N'2020-07-27T15:50:25.853' AS DateTime), CAST(N'2020-07-27T15:50:25.853' AS DateTime), 2, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (4, NULL, CAST(N'2020-07-27T15:50:34.427' AS DateTime), CAST(N'2020-07-27T15:50:34.427' AS DateTime), 2, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (5, NULL, CAST(N'2020-07-27T15:58:17.093' AS DateTime), CAST(N'2020-07-27T15:58:17.093' AS DateTime), 3, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (6, NULL, CAST(N'2020-07-27T15:58:35.533' AS DateTime), CAST(N'2020-07-27T15:58:35.533' AS DateTime), 4, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (7, NULL, CAST(N'2020-07-27T15:58:45.797' AS DateTime), CAST(N'2020-07-27T15:58:45.797' AS DateTime), 5, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (8, NULL, CAST(N'2020-07-27T16:10:35.887' AS DateTime), CAST(N'2020-07-27T16:10:35.887' AS DateTime), 0, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (9, NULL, CAST(N'2020-07-27T16:11:17.443' AS DateTime), CAST(N'2020-07-27T16:11:17.443' AS DateTime), 1, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (10, NULL, CAST(N'2020-07-27T16:11:27.167' AS DateTime), CAST(N'2020-07-27T16:11:27.167' AS DateTime), 1, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (11, NULL, CAST(N'2020-07-27T16:11:59.707' AS DateTime), CAST(N'2020-07-27T16:11:59.707' AS DateTime), 1, 3, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (12, NULL, CAST(N'2020-07-27T16:22:46.067' AS DateTime), CAST(N'2020-07-27T16:22:46.067' AS DateTime), 3, 1, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (13, NULL, CAST(N'2020-07-27T16:23:07.283' AS DateTime), CAST(N'2020-07-27T16:23:07.283' AS DateTime), 4, 1, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (14, NULL, CAST(N'2020-07-27T16:23:17.217' AS DateTime), CAST(N'2020-07-27T16:23:17.217' AS DateTime), 5, 1, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (15, NULL, CAST(N'2020-07-27T16:25:31.477' AS DateTime), CAST(N'2020-07-27T16:25:31.477' AS DateTime), 3, 1, NULL, 1, 0, NULL, NULL, N'output/0.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (16, NULL, CAST(N'2020-07-27T16:25:50.170' AS DateTime), CAST(N'2020-07-27T16:25:50.170' AS DateTime), 4, 1, NULL, 1, 0, NULL, NULL, N'output/1.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (17, NULL, CAST(N'2020-07-27T16:26:00.253' AS DateTime), CAST(N'2020-07-27T16:26:00.253' AS DateTime), 4, 1, NULL, 1, 0, NULL, NULL, N'output/2.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (18, NULL, CAST(N'2020-07-27T16:26:08.520' AS DateTime), CAST(N'2020-07-27T16:26:08.520' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/3.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (19, NULL, CAST(N'2020-07-27T16:33:20.400' AS DateTime), CAST(N'2020-07-27T16:33:20.400' AS DateTime), 3, 1, NULL, 1, 0, NULL, NULL, N'output/0.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (20, NULL, CAST(N'2020-07-27T16:33:34.310' AS DateTime), CAST(N'2020-07-27T16:33:34.310' AS DateTime), 4, 1, NULL, 1, 0, NULL, NULL, N'output/1.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (21, NULL, CAST(N'2020-07-27T16:33:44.237' AS DateTime), CAST(N'2020-07-27T16:33:44.237' AS DateTime), 4, 1, NULL, 1, 0, NULL, NULL, N'output/2.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (22, NULL, CAST(N'2020-07-27T16:33:53.553' AS DateTime), CAST(N'2020-07-27T16:33:53.553' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/3.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (23, NULL, CAST(N'2020-07-27T16:37:03.353' AS DateTime), CAST(N'2020-07-27T16:37:03.353' AS DateTime), 1, 1, NULL, 0, 0, NULL, NULL, N'output/0.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (24, NULL, CAST(N'2020-07-27T16:37:09.287' AS DateTime), CAST(N'2020-07-27T16:37:09.287' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/1.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (25, NULL, CAST(N'2020-07-27T16:37:21.897' AS DateTime), CAST(N'2020-07-27T16:37:21.897' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/2.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (26, NULL, CAST(N'2020-07-27T16:37:27.043' AS DateTime), CAST(N'2020-07-27T16:37:27.043' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/3.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (27, NULL, CAST(N'2020-07-27T16:37:33.283' AS DateTime), CAST(N'2020-07-27T16:37:33.283' AS DateTime), 3, 1, NULL, 1, 0, NULL, NULL, N'output/4.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (28, NULL, CAST(N'2020-07-27T16:37:39.993' AS DateTime), CAST(N'2020-07-27T16:37:39.993' AS DateTime), 2, 1, NULL, 1, 0, NULL, NULL, N'output/5.avi')
INSERT [dbo].[Videos] ([video_id], [location_id], [start_time], [end_time], [num_detected], [num_permitted], [is_model_true], [is_valid], [is_new], [user_id_update], [date_update], [src]) VALUES (29, NULL, CAST(N'2020-07-27T16:37:45.517' AS DateTime), CAST(N'2020-07-27T16:37:45.517' AS DateTime), 1, 1, NULL, 0, 0, NULL, NULL, N'output/6.avi')
SET IDENTITY_INSERT [dbo].[Videos] OFF
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_locations] FOREIGN KEY([location_id])
REFERENCES [dbo].[locations] ([location_id])
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_locations]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_Users] FOREIGN KEY([user_id_update])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_Users]
GO
