USE [master]
GO
/****** Object:  Database [PlayGround]    Script Date: 31/8/2024 1:37:56 AM ******/
CREATE DATABASE [PlayGround]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlayGround', FILENAME = N'D:\SQLSERVER2019\PlayGround.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlayGround_log', FILENAME = N'D:\SQLSERVER2019\PlayGround_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PlayGround] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlayGround].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlayGround] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlayGround] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlayGround] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlayGround] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlayGround] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlayGround] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlayGround] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlayGround] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlayGround] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlayGround] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlayGround] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlayGround] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlayGround] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlayGround] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlayGround] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlayGround] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlayGround] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlayGround] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlayGround] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlayGround] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlayGround] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlayGround] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlayGround] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PlayGround] SET  MULTI_USER 
GO
ALTER DATABASE [PlayGround] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlayGround] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlayGround] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlayGround] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlayGround] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlayGround] SET QUERY_STORE = OFF
GO
USE [PlayGround]
GO
/****** Object:  UserDefinedTableType [dbo].[SearchResultsType]    Script Date: 31/8/2024 1:37:56 AM ******/
CREATE TYPE [dbo].[SearchResultsType] AS TABLE(
	[Id] [int] NOT NULL,
	[WebTitle] [nvarchar](1000) NULL,
	[WebAddress] [nvarchar](2000) NULL,
	[SearchDescription] [nvarchar](max) NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[SearchHistory]    Script Date: 31/8/2024 1:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebTitle] [nvarchar](1000) NULL,
	[WebAddress] [nvarchar](2000) NULL,
	[SearchDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_SearchHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpLog]    Script Date: 31/8/2024 1:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjName] [nvarchar](150) NULL,
	[Data] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_SpLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SearchHistory] ON 

INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (1, N'Healthcare System in the Kingdom of Saudi Arabia: An Expat ...', N'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10250784/', N'May 9, 2023 ... Abstract. Saudi Arabia has made significant progress in its healthcare system through increased healthcare spending, improved healthcare ...', 1, CAST(N'2024-08-31T20:00:00.000' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (2, N'Healthcare System in the Kingdom of Saudi Arabia: An Expat ...', N'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10250784/', N'May 9, 2023 ... Abstract. Saudi Arabia has made significant progress in its healthcare system through increased healthcare spending, improved healthcare ...', 1, CAST(N'2024-08-31T01:32:10.603' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (3, N'Salman of Saudi Arabia - Wikipedia', N'https://en.wikipedia.org/wiki/Salman_of_Saudi_Arabia', N'Salman bin Abdulaziz Al Saud is King of Saudi Arabia, reigning since 2015, and was also Prime Minister of Saudi Arabia from 2015 to 2022.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (4, N'King Saud University: Home Page', N'https://www.ksu.edu.sa/en', N'KSU published 23% of academic research in Saudi Arabia · Latest News · Excellence Ceremony for the Graduation of the 60th Batch of Female Students at King Saud ...', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (5, N'King of Saudi Arabia - Wikipedia', N'https://en.wikipedia.org/wiki/King_of_Saudi_Arabia', N'King of Saudi Arabia ; Salman bin Abdulaziz Al Saud since 23 January 2015 ; Salman bin Abdulaziz Al Saud since 23 January 2015.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (6, N'Salman of Saudi Arabia | King, Father, Siblings, & Son | Britannica', N'https://www.britannica.com/biography/Salman-of-Saudi-Arabia', N'Aug 20, 2024 ... Salman is king of Saudi Arabia (2015– ) and the last of the sons of Abdulaziz ibn Saud to rule the country. His son Mohammed bin Salman has ...', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (7, N'KAUST: King Abdullah University of Science and Technology', N'https://www.kaust.edu.sa/', N'KAUST aspires to be a destination for scientific and technological education and research. By inspiring discoveries to address global challenges, ...', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (8, N'History | The Embassy of The Kingdom of Saudi Arabia', N'https://www.saudiembassy.net/history', N'Saudi Leaders: King Abdulaziz; King Saud; King Faisal; King Khalid; King Fahd; King Abdullah; King Salman; Crown Prince Mohammad bin Salman bin ...', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (9, N'President Kennedy visits Saud bin Abdul Aziz, King of Saudi Arabia ...', N'https://www.jfklibrary.org/asset-viewer/archives/jfkwhp-1962-01-27-a', N'President Kennedy visits Saud bin Abdul Aziz, King of Saudi Arabia, 11:00AM. Collection: White House Photographs.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (10, N'Saudi Arabia''s King Abdullah bin Abdulaziz dies - BBC News', N'https://www.bbc.com/news/world-middle-east-30945324', N'Jan 23, 2015 ... Saudi King Abdullah bin Abdulaziz has died in hospital, royal officials announce, weeks after being admitted with a lung infection.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (11, N'75 years after a historic meeting on the USS Quincy, US-Saudi ...', N'https://www.brookings.edu/.../75-years-after-a-historic-meeting-on-the-uss-...', N'Feb 10, 2020 ... On Valentine''s Day 1945, President Franklin D. Roosevelt met with Saudi King Abdul Aziz Ibn Saud on an American cruiser, the USS Quincy, in the Suez Canal.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
INSERT [dbo].[SearchHistory] ([Id], [WebTitle], [WebAddress], [SearchDescription], [IsActive], [CreatedOn]) VALUES (12, N'Ten ways that Saudi Arabia violates human rights', N'https://www.amnesty.org.uk/saudi-arabia-human-rights-raif-badawi-king-sa...', N'Mar 5, 2024 ... The reality for people living in Saudi Arabia, is one where their basic human rights are ignored, their freedoms are restricted and punishment is severe.', 1, CAST(N'2024-08-31T01:36:11.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[SearchHistory] OFF

/****** Object:  StoredProcedure [dbo].[LoadSearchHistory]    Script Date: 31/8/2024 1:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LoadSearchHistory] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select isnull(WebTitle,'')WebTitle,
	isnull(WebAddress,'') WebAddress,
	isnull(SearchDescription,'') SearchDescription 
	from SearchHistory
	where isactive = 1

END
GO
/****** Object:  StoredProcedure [dbo].[SaveBulkResults]    Script Date: 31/8/2024 1:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveBulkResults] 
(
	@searchResults AS [dbo].[SearchResultsType] READONLY
)
AS
BEGIN
	BEGIN TRY

		
		insert into SearchHistory(WebTitle, WebAddress, SearchDescription, IsActive, CreatedOn)
		select WebTitle, WebAddress, SearchDescription,1,getdate() from @searchResults

		select 'Success' as dataResponse
	END TRY
	BEGIN CATCH
		
		select 'Failure' as dataResponse
	END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [PlayGround] SET  READ_WRITE 
GO
