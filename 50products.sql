USE [master]
GO
/****** Object:  Database [Product]    Script Date: 08.07.2023 11:23:27 ******/
CREATE DATABASE [Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Product] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product] SET RECOVERY FULL 
GO
ALTER DATABASE [Product] SET  MULTI_USER 
GO
ALTER DATABASE [Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Product] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product', N'ON'
GO
ALTER DATABASE [Product] SET QUERY_STORE = ON
GO
ALTER DATABASE [Product] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Product]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08.07.2023 11:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [int] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
	[test] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (1, N'Майонез', N'Продукты', 45, 0, 40, N'шт', N'Heinz', N'США', N'Топ саплайер', CAST(N'2023-07-06' AS Date), CAST(N'2023-08-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (2, N'Ролтон', N'Продукты', 13, 9, 120, N'пачки', N'Своя линия', N'Украина', N'Атб перевозка', CAST(N'2023-07-06' AS Date), CAST(N'2024-07-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (3, N'Кефир', N'Продукты', 51, 0, 70, N'шт', N'Простаквашино', N'Украина', N'Топ саплайер', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (4, N'Туалетная бумага', N'Гигиена', 80, 10, 80, N'пачки', N'Rula', N'Германия', N'За кордон', CAST(N'2023-06-29' AS Date), CAST(N'2025-06-29' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (5, N'Жид. мыло', N'Гигиена', 49, 20, 210, N'шт', N'Ушастый нянь', N'Россия', N'За кордон', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (6, N'Мивина', N'Продукты', 9, 0, 400, N'пачки', N'Своя линия', N'Украина', N'Атб перевозка', CAST(N'2023-07-07' AS Date), CAST(N'2026-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (7, N'Кока кола', N'Продукты', 9, 0, 236, N'шт', N'Живчик', N'Украина', N'Топ перевоз', CAST(N'2023-07-02' AS Date), CAST(N'2023-12-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (8, N'Фанта', N'Продукты', 21, 0, 30, N'шт', N'Фанта', N'США', N'За кордон', CAST(N'2023-07-07' AS Date), CAST(N'2023-12-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (9, N'Кавунчик', N'Продукты', 130, 0, 13, N'шт', N'Херсон сити', N'Украина', N'Кавун вперед', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (10, N'Апельсин', N'Продукты', 69, 0, 70, N'шт', N'Мадагаскарский мэм', N'Мадагаскар', N'За кордон', CAST(N'2023-06-29' AS Date), CAST(N'2023-07-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (11, N'Банан', N'Продкуты', 48, 25, 9, N'шт', N'Эквадорский кайф', N'Эквадор', N'За кордон', CAST(N'2023-06-29' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (12, N'Хлопья', N'Продукты', 34, 0, 15, N'пачки', N'Несквик', N'США', N'За кордон', CAST(N'2023-07-23' AS Date), CAST(N'2024-07-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (13, N'Мука', N'Продукты', 67, 0, 320, N'пачки', N'Свое борошно', N'Украина', N'Атб перевозка', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (14, N'Сахар', N'Продукты', 42, 10, 400, N'пачки', N'Сахарное желание', N'Украина', N'За кордон', CAST(N'2023-07-02' AS Date), CAST(N'2025-07-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (15, N'Вино красное', N'Алкоголь', 230, 5, 114, N'шт', N'Итальяни паперони', N'Италия', N'За кордон', CAST(N'2023-07-02' AS Date), CAST(N'2027-07-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (16, N'Вино белое', N'Алкоголль', 250, 0, 116, N'шт', N'Итальяни паперони', N'Италия', N'За кордон', CAST(N'2023-07-01' AS Date), CAST(N'2027-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (17, N'Шампанское "МОЕТ"', N'Алкоголь', 3000, 0, 33, N'шт', N'Франция багет топ', N'Франция', N'Топ саплайер', CAST(N'2027-07-07' AS Date), CAST(N'2027-07-07' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (18, N'Пиво ', N'Алкоголь', 320, 0, 78, N'ящики', N'Gorona inc.', N'США', N'Топ саплайер', CAST(N'2023-06-24' AS Date), CAST(N'2025-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (19, N'Гречка', N'Продукты', 79, 0, 200, N'шт', N'Своя линия', N'Украина', N'Атб перевозка', CAST(N'2023-05-18' AS Date), CAST(N'2026-06-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (20, N'Карри', N'Специи', 15, 0, 190, N'пачки', N'Своя линия', N'Украина', N'Сильпо бест', CAST(N'2023-03-04' AS Date), CAST(N'2026-03-04' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (21, N'Йогурт ', N'Продукты', 49, 15, 56, N'шт', N'Данон', N'Украина', N'Топ саплайер', CAST(N'2023-07-02' AS Date), CAST(N'2023-07-14' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (22, N'Колбаса', N'Продукты', 78, 0, 48, N'шт', N'Конкурент', N' Польша', N'За кордон', CAST(N'2023-07-02' AS Date), CAST(N'2023-09-02' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (23, N'Сыр', N'Продукты', 45, 10, 62, N'шт', N'Премьер', N'Польша', N'За кордон', CAST(N'2023-06-27' AS Date), CAST(N'2023-07-27' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (24, N'Хлеб', N'Продукты', 21, 3, 319, N'пачка', N'Своя пекарня', N'Украина', N'Сильпо бест', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-14' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (25, N'Кетчур', N'Продукты', 45, 0, 218, N'шт', N'Heinz', N'США', N'Топ саплайер', CAST(N'2023-07-06' AS Date), CAST(N'2023-08-06' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (26, N'Энергетик', N'Продукты', 39, 0, 114, N'шт', N'Monster', N'США', N'За кордон', CAST(N'2023-07-06' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (27, N'Чипсы', N'Продукты', 26, 0, 119, N'пачки', N'Lays', N'Украина', N'Топ саплайер', CAST(N'2023-07-02' AS Date), CAST(N'2024-06-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (28, N'Сок', N'Продукты', 48, 4, 167, N'шт', N'Наш сок', N'Украина', N'Атб перевозка', CAST(N'2023-07-03' AS Date), CAST(N'2024-07-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (29, N'Сидр', N'Алкоголь', 34, 0, 155, N'шт', N'BeerMix', N'Дания', N'За кордон', CAST(N'2023-06-23' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (30, N'Мороженное', N'Продукты', 21, 0, 113, N'шт', N'Три ведмедя', N'Украина', N'Атб перевозка', CAST(N'2023-07-01' AS Date), CAST(N'2023-09-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (31, N'Пельмешки', N'Продукты', 79, 13, 82, N'пачки', N'Три ведмедя', N'Украина', N'Топ саплайер', CAST(N'2023-06-03' AS Date), CAST(N'2024-06-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (32, N'Вареники', N'Продукты', 74, 0, 87, N'пачки', N'Три ведмедя', N'Украина', N'Топ саплайер', CAST(N'2023-06-03' AS Date), CAST(N'2024-06-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (33, N'Творог', N'Продукты', 48, 0, 91, N'пачки', N'Своя линия', N'Украина', N'Сильпо бест', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (34, N'Сардельки', N'Продукты', 36, 0, 44, N'пачки', N'Своя линия', N'Украина', N'Сильпо бест', CAST(N'2023-07-03' AS Date), CAST(N'2023-08-03' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (35, N'Сардельки', N'Продукты', 58, 0, 28, N'пачки', N'Вкусняшки', N'Украина', N'Топ саплайер', CAST(N'2023-07-06' AS Date), CAST(N'2023-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (36, N'Сырок', N'Продукты', 14, 0, 32, N'шт', N'Taste world', N'Германия', N'За кордон', CAST(N'2023-07-04' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (37, N'Тархун', N'Продукты', 24, 15, 21, N'шт', N'Бон Буассон', N'Украина', N'Топ саплайер', CAST(N'2023-06-05' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (38, N'Батончик', N'Продукты', 33, 0, 66, N'шт', N'Сникерс', N'США', N'За кордон', CAST(N'2023-05-31' AS Date), CAST(N'2024-05-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (39, N'Торт', N'Продукты', 218, 0, 9, N'шт', N'Киев Фабрика', N'Украина', N'Топ саплайер', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (40, N'Эклер', N'Продукты', 41, 0, 17, N'пачки', N'Киев Фабрика', N'Укарина', N'Топ саплайер', CAST(N'2023-07-03' AS Date), CAST(N'2023-07-31' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (41, N'Минералка', N'Продукты', 24, 0, 221, N'шт', N'Бонаква', N'Украина', N'Атб перевозка', CAST(N'2023-07-01' AS Date), CAST(N'2025-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (42, N'Грибы', N'Продукты', 76, 3, 66, N'пачки', N'Лесной грибничок', N'Украина', N'Топ саплайер', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (43, N'Оливки', N'Продукты', 65, 0, 41, N'банка', N'Оливочный кайф', N'Дания', N'За кордон', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-28' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (44, N'Пончик', N'Продукты', 31, 0, 12, N'шт', N'Атб пекарня', N'Украина', N'Атб перевозка', CAST(N'2023-06-28' AS Date), CAST(N'2023-07-09' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (45, N'Молоко', N'Продукты', 46, 0, 57, N'шт', N'Простаквашино', N'Украина', N'Топ саплайер', CAST(N'2023-07-03' AS Date), CAST(N'2023-07-18' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (46, N'Килька', N'Продукты', 56, 0, 44, N'банка', N'Титаник', N'Польша', N'За кордон', CAST(N'2023-07-01' AS Date), CAST(N'2024-07-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (47, N'Водка', N'Алкоголь', 151, 9, 119, N'шт', N'Наша водочка', N'Украина', N'Сильпо бест', CAST(N'2023-05-23' AS Date), CAST(N'2025-05-23' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (48, N'Виски', N'Алкоголь', 229, 0, 112, N'шт', N'Jack Daniels', N'США', N'За кордон', CAST(N'2023-05-31' AS Date), CAST(N'2025-06-01' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (49, N'Текила', N'Алкоголь', 312, 4, 31, N'шт', N'Текилкочка', N'Болгария', N'За кордон', CAST(N'2023-06-29' AS Date), CAST(N'2024-08-24' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date], [test]) VALUES (50, N'Чай', N'Продукты', 34, 0, 56, N'шт', N'FuzeTea', N'Венгрия', N'За кордон', CAST(N'2023-07-04' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [Product] SET  READ_WRITE 
GO
