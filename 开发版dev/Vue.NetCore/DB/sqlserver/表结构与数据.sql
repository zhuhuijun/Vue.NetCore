
USE [netcoredev]
GO
/****** Object:  Table [dbo].[App_Appointment]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Appointment](
	[Id] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](250) NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_App_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Expert]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Expert](
	[ExpertId] [int] IDENTITY(1,1) NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NOT NULL,
	[Auditor] [nvarchar](20) NULL,
	[Certificate] [nvarchar](2500) NULL,
	[City] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Education] [nvarchar](50) NULL,
	[Enable] [tinyint] NOT NULL,
	[ExpertName] [nvarchar](20) NULL,
	[HeadImageUrl] [nvarchar](500) NULL,
	[IDNumber] [nvarchar](18) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Professional] [nvarchar](50) NULL,
	[ReallyName] [nvarchar](20) NULL,
	[Resume] [nvarchar](500) NULL,
	[SpecialField] [nvarchar](800) NULL,
	[UserName] [nvarchar](30) NULL,
	[UserTrueName] [nvarchar](50) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_App_Expert] PRIMARY KEY CLUSTERED 
(
	[ExpertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_News]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](50) NULL,
	[BigImageUrls] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DailyRecommend] [smallint] NOT NULL,
	[DetailUrl] [nvarchar](200) NULL,
	[Enable] [smallint] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[NewsType] [int] NOT NULL,
	[OrderNo] [int] NULL,
	[ReleaseDate] [datetime] NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_App_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_ReportPrice]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_ReportPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Age] [nvarchar](50) NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](20) NULL,
	[City] [nvarchar](30) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Price] [numeric](10, 2) NOT NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_ReportPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Transaction]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CowType] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](500) NOT NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TransactionType] [int] NOT NULL,
 CONSTRAINT [PK_App_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_TransactionAvgPrice]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_TransactionAvgPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeRange] [nvarchar](50) NOT NULL,
	[AvgPrice] [decimal](18, 2) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Date] [date] NOT NULL,
	[Enable] [tinyint] NULL,
	[IsTop] [int] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_TransactionAvgPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormCollectionObject]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormCollectionObject](
	[FormCollectionId] [uniqueidentifier] NOT NULL,
	[FormId] [uniqueidentifier] NULL,
	[Title] [nvarchar](max) NULL,
	[FormData] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionList] PRIMARY KEY CLUSTERED 
(
	[FormCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormDesignOptions]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDesignOptions](
	[FormId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[DaraggeOptions] [nvarchar](max) NULL,
	[FormOptions] [nvarchar](max) NULL,
	[FormConfig] [nvarchar](max) NULL,
	[FormFields] [nvarchar](max) NULL,
	[TableConfig] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionOptions] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrder]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrder](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[OrderType] [int] NOT NULL,
	[TranNo] [nvarchar](100) NOT NULL,
	[SellNo] [nvarchar](255) NOT NULL,
	[Qty] [int] NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NOT NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](100) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrder] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrderList]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrderList](
	[OrderList_Id] [uniqueidentifier] NOT NULL,
	[Order_Id] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[MO] [nvarchar](255) NULL,
	[Qty] [int] NOT NULL,
	[Weight] [decimal](18, 2) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrderList] PRIMARY KEY CLUSTERED 
(
	[OrderList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_City]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [nvarchar](20) NULL,
	[CityName] [nvarchar](30) NULL,
	[ProvinceCode] [varchar](20) NULL,
 CONSTRAINT [PK_Sys_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Dic_ID] [int] IDENTITY(1,1) NOT NULL,
	[Config] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DBServer] [nvarchar](4000) NULL,
	[DbSql] [nvarchar](4000) NULL,
	[DicName] [nvarchar](100) NOT NULL,
	[DicNo] [nvarchar](100) NOT NULL,
	[Enable] [tinyint] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY CLUSTERED 
(
	[Dic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_DictionaryList]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DictionaryList](
	[DicList_ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DicName] [nvarchar](100) NULL,
	[DicValue] [nvarchar](100) NULL,
	[Dic_ID] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_DictionaryList] PRIMARY KEY CLUSTERED 
(
	[DicList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginDate] [datetime] NULL,
	[BrowserType] [nvarchar](200) NULL,
	[ElapsedTime] [int] NULL,
	[EndDate] [datetime] NULL,
	[ExceptionInfo] [nvarchar](max) NULL,
	[LogType] [nvarchar](50) NULL,
	[RequestParameter] [nvarchar](max) NULL,
	[ResponseParameter] [nvarchar](max) NULL,
	[Role_Id] [int] NULL,
	[ServiceIP] [nvarchar](100) NULL,
	[Success] [int] NULL,
	[Url] [nvarchar](4000) NULL,
	[UserIP] [nvarchar](100) NULL,
	[UserName] [nvarchar](4000) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[Auth] [nvarchar](4000) NULL,
	[Icon] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Enable] [tinyint] NULL,
	[OrderNo] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[ParentId] [int] NOT NULL,
	[Url] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Modifier] [nvarchar](50) NULL,
	[MenuType] [int] NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Province]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Province](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](20) NOT NULL,
	[ProvinceName] [nvarchar](30) NOT NULL,
	[RegionCode] [nvarchar](20) NULL,
 CONSTRAINT [PK_Sys_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[DeleteBy] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Dept_Id] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuth]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleAuth](
	[Auth_Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthValue] [nvarchar](1000) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](1000) NULL,
	[Menu_Id] [int] NOT NULL,
	[Modifier] [nvarchar](1000) NULL,
	[ModifyDate] [datetime] NULL,
	[Role_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_RoleAuth] PRIMARY KEY CLUSTERED 
(
	[Auth_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[ColumnId] [int] IDENTITY(1,1) NOT NULL,
	[ApiInPut] [int] NULL,
	[ApiIsNull] [int] NULL,
	[ApiOutPut] [int] NULL,
	[ColSize] [int] NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[ColumnName] [nvarchar](100) NULL,
	[ColumnType] [nvarchar](max) NULL,
	[ColumnWidth] [int] NULL,
	[Columnformat] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DropNo] [nvarchar](50) NULL,
	[EditColNo] [int] NULL,
	[EditRowNo] [int] NULL,
	[EditType] [nvarchar](200) NULL,
	[Enable] [int] NULL,
	[IsColumnData] [int] NULL,
	[IsDisplay] [int] NULL,
	[IsImage] [int] NULL,
	[IsKey] [int] NULL,
	[IsNull] [int] NULL,
	[IsReadDataset] [int] NULL,
	[Maxlength] [int] NULL,
	[Modifier] [ntext] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Script] [ntext] NULL,
	[SearchColNo] [int] NULL,
	[SearchRowNo] [int] NULL,
	[SearchType] [nvarchar](200) NULL,
	[Sortable] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[Table_Id] [int] NULL,
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableInfo]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableInfo](
	[Table_Id] [int] IDENTITY(1,1) NOT NULL,
	[CnName] [nvarchar](50) NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[DBServer] [nvarchar](2000) NULL,
	[DataTableType] [nvarchar](200) NULL,
	[DetailCnName] [nvarchar](200) NULL,
	[DetailName] [nvarchar](200) NULL,
	[EditorType] [nvarchar](100) NULL,
	[Enable] [int] NULL,
	[ExpressField] [nvarchar](200) NULL,
	[FolderName] [nvarchar](200) NULL,
	[Namespace] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NULL,
	[RichText] [nvarchar](100) NULL,
	[SortName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[TableTrueName] [nvarchar](100) NULL,
	[UploadField] [nvarchar](100) NULL,
	[UploadMaxCount] [int] NULL,
 CONSTRAINT [PK_Sys_TableInfo] PRIMARY KEY CLUSTERED 
(
	[Table_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[AppType] [int] NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DeptName] [nvarchar](150) NULL,
	[Dept_Id] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Enable] [tinyint] NOT NULL,
	[Gender] [int] NULL,
	[HeadImageUrl] [nvarchar](200) NULL,
	[IsRegregisterPhone] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[LastModifyPwdDate] [datetime] NULL,
	[Mobile] [nvarchar](100) NULL,
	[Modifier] [nvarchar](200) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Role_Id] [int] NOT NULL,
	[RoleName] [nvarchar](150) NOT NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Remark] [nvarchar](200) NULL,
	[Tel] [nvarchar](20) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPwd] [nvarchar](200) NULL,
	[UserTrueName] [nvarchar](20) NOT NULL,
	[Token] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlow]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlow](
	[WorkFlow_Id] [uniqueidentifier] NOT NULL,
	[WorkName] [nvarchar](200) NOT NULL,
	[WorkTable] [nvarchar](200) NOT NULL,
	[WorkTableName] [nvarchar](200) NULL,
	[NodeConfig] [nvarchar](max) NULL,
	[LineConfig] [nvarchar](max) NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK__Sys_Work__2A1726C38AD06D4D] PRIMARY KEY CLUSTERED 
(
	[WorkFlow_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowStep]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowStep](
	[WorkStepFlow_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[StepId] [nvarchar](100) NULL,
	[StepName] [nvarchar](200) NULL,
	[StepType] [int] NULL,
	[StepValue] [int] NULL,
	[OrderId] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK__Sys_Work__26A928370FFD6659] PRIMARY KEY CLUSTERED 
(
	[WorkStepFlow_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowTable]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowTable](
	[WorkFlowTable_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[WorkName] [nvarchar](200) NULL,
	[WorkTableKey] [nvarchar](200) NULL,
	[WorkTable] [nvarchar](200) NULL,
	[WorkTableName] [nvarchar](200) NULL,
	[CurrentOrderId] [int] NULL,
	[AuditStatus] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK__Sys_Work__E731D35B8DAE74D6] PRIMARY KEY CLUSTERED 
(
	[WorkFlowTable_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowTableStep]    Script Date: 2022/8/18 2:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowTableStep](
	[Sys_WorkFlowTableStep_Id] [uniqueidentifier] NOT NULL,
	[WorkFlowTable_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[StepId] [nvarchar](100) NULL,
	[StepName] [nvarchar](200) NULL,
	[StepType] [int] NULL,
	[StepValue] [int] NULL,
	[OrderId] [int] NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](50) NULL,
	[AuditStatus] [int] NULL,
	[AuditDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK__Sys_Work__2CBB561BDE0F2FDA] PRIMARY KEY CLUSTERED 
(
	[Sys_WorkFlowTableStep_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c0e-edef-0a68-ab81-c3dc5e0fe407', CAST(0x0000AACC01091874 AS DateTime), 1, N'超级管理员', N'来自火星。。。', N'超级管理员', CAST(0x0000AB2600AE2A54 AS DateTime), 1, N'元霸', N'138888887698')
GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c11-6a43-97e8-ca70-e8b0d906807e', CAST(0x0000AACC010DFC04 AS DateTime), 1, N'超级管理员', N'来自火星。。。', N'超级管理员', CAST(0x0000AB2600AE360C AS DateTime), 1, N'元华', N'138888887698')
GO
SET IDENTITY_INSERT [dbo].[App_Expert] ON 

GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (294, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(0x0000AEF200270D44 AS DateTime), 1, N'超级管理员', NULL, 0, N'测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (295, NULL, NULL, 0, NULL, NULL, NULL, NULL, CAST(0x0000AEF2002D2F94 AS DateTime), 1, N'超级管理员', NULL, 0, N'1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (296, NULL, NULL, 0, NULL, NULL, N'北京市', NULL, CAST(0x0000AEF200344B80 AS DateTime), 1, N'超级管理员', NULL, 1, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (297, NULL, NULL, 2, NULL, NULL, N'天津市', NULL, CAST(0x0000AEF2003467A0 AS DateTime), 1, N'超级管理员', NULL, 0, N'fsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'a', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[App_Expert] OFF
GO
SET IDENTITY_INSERT [dbo].[App_News] ON 

GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73756, NULL, NULL, N'<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<b>网易娱乐12月21日报道</b>&nbsp;日前，杨幂在个人平台晒出自拍照，沈腾喊话魏大勋，再度引来网友对杨幂与魏大勋恋情的猜想。随后，又有网友发现魏大勋疯狂点赞微博，疑似承认与杨幂恋情。12月20日晚间，魏大勋工作室回应称，当天魏大勋的账号没有登陆过，点赞并非艺人本人的操作行为，是新浪微博系统故障导致。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	据了解，20日晚，有网友发现魏大勋的微博账号在疯狂点赞微博，其中有一条是“女人三十如狼四十如虎”，而杨幂1986年出生，今年33岁，再度引发网友的猜想
</p>', CAST(0x0000A95300B56F44 AS DateTime), 3357, N' 小编', 0, N'static/news/20191223/1016167531.html', 1, N'Upload/Tables/App_News/202204200018378581/img02.png', N'超级管理员', CAST(0x0000AB2C00A96D70 AS DateTime), 1, 1, NULL, NULL, N'魏大勋点赞"女人三十如狼"微博 工作室这样回应，又有网友发现魏大勋疯狂点赞微博，疑似承认与杨幂恋情', 53)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73762, NULL, NULL, N'<p style="text-indent:32px;">
	<span style="font-size:16px;font-family:'';">
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<b>相关阅读：</b>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<a href="https://tech.163.com/19/1221/17/F0UFROFU00097U7R.html" target="_self" style="color:#0F6B99;line-height:1;"><b>马云回应指挥交响乐争议：企业家最大的资源不是钱</b></a>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		网易科技讯 12月21日消息，今日，马云在“2019世界浙商上海论坛暨上海市浙江商会年会”上谈到，2019年很不容易，但是我们做企业的都知道，每一年都不容易。唯一2019年最不容易的是，以往可能是部分人不容易，2019年可能是大部分企业不容易。
	</p>
	<p style="text-align:center;margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<img src="http://cms-bucket.ws.126.net/2019/1221/3e42a18ej00q2uvfx0030c000t600jgc.jpg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;" />
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		马云以自己为例称，“昨天一天，我收到很多朋友借钱的电话，一天内5个电话。过去一个礼拜，要卖楼的朋友大概有10个，确实不容易。”（易科）
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<span style="font-weight:700;">以下为马云演讲实录：</span>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		马云：我想讲三句话，三个意思。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		第一，祝贺王均金会长、喻渭蛟执行会长的完美的工作。2019年，商会取得了那么多的成绩，这是不容易的，这主要是奉献，通过帮助别人来提升自己。我们看到了商会的巨大努力。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		第二，2019年很不容易，但是我们做企业的都知道，每一年都不容易。唯一2019年最不容易的是，以往可能是部分人不容易，2019年可能是大部分企业不容易。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		到了年底了，昨天一天，我收到很多朋友借钱的电话，一天内5个电话。过去一个礼拜，要卖楼的朋友大概有10个，确实不容易。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		我们所有的企业家都要明白，做企业2019年不容易，要想到这可能是不容易的开始，大家都不容易，就好办了。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		第三层，大家要明白，浙商过不去，其他商人肯定也过不去，我们要有这个自信。世界正在进入巨大的变化之中，中国经济也面临巨大的调整，我们只有改变自己，才能适应这种调整，我相信这是机会的开始。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		我们每一年的浙商大会，尤其是上海商会，会开得非常好，我们在这不是炫耀成绩，不是谈怎么赚钱，而是互相交流，互相学习，提升自己。只有学习的人，才能面向未来，只有改变自己的人，才有未来，只有为未来解决问题的企业，才有希望。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		祝大家2020年，在最困难的时候能够度过，我相信，我也对浙商，所有爱学习的企业家、爱交流的企业家、实干的企业家、改变自己的企业家，我相信他们能度过。
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		再次祝贺大家，祝福大家，2020年，我们一起努力
	</p>
</span>
</p>
<p>
	<br />
</p>', CAST(0x0000A953011B2780 AS DateTime), 3357, N' 小编', 0, N'static/news/20191223/1015441258.html', 1, N'https://bj.bcebos.com/common1/180905/15361158996288828.jpg@w_500', N'超级管理员', CAST(0x0000AB2C00A925F4 AS DateTime), 1, 2, NULL, NULL, N'马云谈2019太难了：光昨天我就收到5个朋友借钱电话', 12)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73765, NULL, NULL, N'<p style="text-align:justify;text-justify:inter-ideograph;text-indent:32px;line-height:150%;">
	<a></a><a><span style="line-height:150%;font-family:'';">
	</span></a></p><div class="content" style="white-space:normal;box-sizing:border-box;padding:0px;margin:0px;text-align:center;color:#888888;font-family:&quot;font-size:14px;background-color:#FFFFFF;"><a>
		<p style="margin-top:40px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  最近，无意中从网上看到一部名为《school lunch in Japan》的纪录片，反映了日本一家五年级小学生午餐的情况，虽然视频仅有8分钟，但看完后好多人不禁感叹：
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  很多孩子与日本孩子在午餐上，原来差那么多。。。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/6cb92cadj00q2r17v001dc000f700a4m.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  在影片的刚开始，日本那学校的校长就说了这样一句话：
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  “这45分钟的午餐时间，同样也是学习时间，跟他们的数学课或是阅读课没有什么不同。”
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  从这句话中，可以感受到什么？
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  大概是日本一直提倡的<strong>“食育”</strong>精神吧，在“吃”中渗入潜移默化的教育。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/44569443j00q2r17v001bc000dw00ctm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  在影片中，我们的主角yui每天早上出门上学，与我们国家的孩子们不同，他们的书包里除了书本之外，还有餐巾布、筷子、牙刷等。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/ab09f1d4j00q2r17v000wc000dw00dwm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  在小学里，还有5个厨师，在3小时要做出720份午餐。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/e74b1222j00q2r17v000rc000eu008cm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  里面有一个特色菜，不简单的土豆泥。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  这土豆，可是孩子们自己种的，在教学楼边上，学校开发了一大片农场，孩子们可以在这里种水果蔬菜，有了这个体验，孩子们对食物会更珍惜用心。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  记得小时候看樱桃小丸子的时候，小丸子会说：“午餐值日生真辛苦！”
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/a2429afaj00q2r17v001dc000qo00kcm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  所以可以看出日本小学生的午餐，是需要孩子们自己轮流值班分配的呀。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/aec6b83fj00q2r17v002lc000rs00iim.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  领饭之前，所有的值日生都要先检查卫生，并且询问孩子们的身体健康情况，并在每个孩子的手上抹好消毒液进行消毒。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  日本小学生的午餐，上面一层是饭菜、餐盘和碗，下面一层则是牛奶和蔬菜。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/ae382f4dj00q2r17v001rc000qa00jym.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  在拿到饭菜的时候，要一边鞠躬，一边向给自己准备饭菜的师傅们介绍自己并表示感谢，然后再齐心协力将饭菜拿到教室。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  分发完午餐还剩炸鱼怎么办呢？好几个小男生都想要，所以孩子们采取了“石头、剪刀、布”的方式决定了谁吃剩下的炸鱼，简单快速~
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/3b116376j00q2r17v0025c000rs00kum.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  餐后整理环节也十分重要，大家将喝完了的牛奶盒拆开、摊平，进行回收利用，日本回收利用的观念深入人心，从小抓起。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/d5ace7c2j00q2r17v000tc000rs00kum.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  这些处理好了之后，孩子们便开始刷牙，可见日本在保护牙齿上面做的功夫也很多。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  刷完牙后，负责发牛奶的同学会集齐全班的奶盒，将其冲洗干净，并晾干，防止残留的牛奶生菌。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  你以为这样午餐时间就结束了吗？
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  no。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  下面要进行大扫除，同学们非常自觉的找到自己分配好的活，教室、楼梯。卫生间....
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			  <img src="http://dingyue.ws.126.net/2019/1219/fc7659e6j00q2r17v000zc000go00dwm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  大扫除结束后，45分钟的<strong>食育</strong>才算是真正的告一段落，看完后，可能我们会觉得孩子们除了上课之外，还有这么多的任务要做，太累了。但是，实际上日本的小学生对此感到很开心，很喜欢。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  再仔细想想，也许，日本能够多年来蝉联——全球小学生营养最佳水平的国家，并不止是丰富的物质生活的贡献，更重要的，是精神生活。
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  毕竟孩子是国家的未来，或许日本的“食育”，能给越来越重视素质教育的我们多一点思考吧。
		</p>
		<p align="center" style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			  <img src="http://dingyue.ws.126.net/2019/1219/b272928dj00q2r17v0012c000hs00a2m.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;"/>
		</p>
	</a></div><a>
	<div class="statement" style="white-space:normal;box-sizing:border-box;padding:0px 0px 60px;margin:40px 0px 0px;color:#888888;line-height:24px;font-family:&quot;font-size:14px;background-color:#FFFFFF;">
		<span style="box-sizing:border-box;display:inline-block;width:750px;height:12px;background-image:url(&quot;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;"></span>
		<p style="margin-top:0px;margin-bottom:0px;box-sizing:border-box;padding:0px;">
			特别声明：本文为网易自媒体平台“网易号”作者上传并发布，仅代表该作者观点。网易仅提供信息发布平台。
		</p>
	</div>
</a>

<p>
	<span style="font-size:14px;font-family:仿宋;"></span>
</p>', CAST(0x0000A95400925680 AS DateTime), 3357, N' 小编', 1, N'static/news/20191222/1446528970.html', 1, N'Upload/Tables/App_News/201912231015164124/1.jpg,Upload/Tables/App_News/201912231015164124/02.jpg,Upload/Tables/App_News/201912231015164124/03.jpg', N'超级管理员', CAST(0x0000AE8B012C64C8 AS DateTime), 1, 1, NULL, NULL, N'日本小学生10块钱一顿的午餐，震惊了全世界...', 13)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73766, NULL, NULL, N',,<img style="width:100%;" src="http://127.0.0.1:9991/Upload/Tables/App_News/202005021803327050/07.jpg" />
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	11月28日，世界旅游联盟（WTA）在北京举办招待会。世界旅游联盟主席段强、阿尔及利亚、突尼斯驻华大使出席并致辞，联盟秘书长刘士军、巴巴多斯、缅甸、罗马尼亚、约旦驻华大使以及40位驻华使馆和国际组织代表、10余家境外旅游机构驻华办事处、53家世界旅游联盟境内外会员单位、世界银行、中国国际扶贫中心、媒体代表等共近300人出席活动。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/939c200a063a434aae3c24225c2e5ae5.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	段强表示，世界旅游联盟成立两年来，以“旅游让世界和生活更美好”为宗旨，以旅游促进和平、旅游促进发展、旅游促进减贫为使命，成功举办“湘湖对话”、“大河文明旅游论坛”等系列活动，发布了《世界旅游联盟旅游减贫案例》、《2019中国入境旅游数据分析报告》、《2019世界旅游发展报告》、《中国国内旅游市场景气调查报告》、《中国入境旅游市场景气调查报告》、《中国出境旅游市场景气调查报告》等，为会员搭建了交流、合作的平台，为国际旅游业发展提供智力支持和决策服务，推动世界旅游减贫事业进一步发展。未来，世界旅游联盟将顺应世界旅游业发展大势，继续搭建好交流、合作及发展的平台，推进世界各国、各地区深化交流合作，推动全球旅游业持续健康发展。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	阿尔及利亚驻华大使艾哈桑·布哈利法表示，旅游合作是经贸合作和人文交流最活跃、最具潜力的部分，未来希望世界旅游联盟更好的促进世界各国旅游产业交流。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	突尼斯驻华大使迪亚·哈立德表示，世界旅游联盟开展了众多具有前瞻性的工作，增强了世界各地旅游行业主要参与者之的间理解与合作。《大河文明旅游报告》的发布将对旅游行业及相关机构起到积极的指导作用。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/5a17ad3aac864fc0bbea73b6c6894dcb.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	段强宣布世界旅游联盟2020年年会、理事会及“湘湖对话”将于明年9月6—9日在杭州召开。并将于2020年继续举办“义乌对话”、“大河文明旅游论坛”，在广州、法国、保加利亚、意大利等地举办中欧旅游合作和目的地推广主题研讨等会员日活动。
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/cf8eee29f11746a0a8a1ce8e97aa536f.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>', CAST(0x0000AB2C00A99548 AS DateTime), 1, N'超级管理员', 1, N'static/news/20191223/1017279676.html', NULL, N'Upload/Tables/App_News/201912231017475391/2222.jpg,Upload/Tables/App_News/201912231017475391/h51.jpg,Upload/Tables/App_News/201912231017475391/h52.jpg', N'超级管理员', CAST(0x0000ABAF0129BBEC AS DateTime), 1, 1, NULL, NULL, N'世界旅游联盟在京举办招待会 发布《大河文明旅游报告》', NULL)
GO
SET IDENTITY_INSERT [dbo].[App_News] OFF
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] ON 

GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (66, N'0-2月龄', CAST(0x0000A95700981C3C AS DateTime), 1, 1, N'测试超级管理员', N'重庆市', CAST(0x0000A954012DA4B4 AS DateTime), 3331, N'Mr.G', 0, N'超级管理员', CAST(0x0000AB5300C883A4 AS DateTime), 1, CAST(13.00 AS Numeric(10, 2)), N'5')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (67, N'12-16月龄', CAST(0x0000A95700A975A4 AS DateTime), 1, 1, N'测试超级管理员', N'忻州市', CAST(0x0000A95700A851D8 AS DateTime), 3344, N'啊啊啊', 0, N'超级管理员', CAST(0x0000AA8C00F93030 AS DateTime), 1, CAST(29.00 AS Numeric(10, 2)), N'西门塔尔')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (71, N'7-12月龄', CAST(0x0000AA8C00F7E810 AS DateTime), 1, 1, N'超级管理员', N'石家庄市', CAST(0x0000AA87011AE964 AS DateTime), 1, N'超级管理员', 1, N'超级管理员', CAST(0x0000AB5300C8A21C AS DateTime), 1, CAST(22.00 AS Numeric(10, 2)), N'6')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (74, N'7-12月龄', CAST(0x0000AA8C00F8BE84 AS DateTime), 1, 2, N'超级管理员', N'唐山市', CAST(0x0000AA87012FA854 AS DateTime), 1, N'超级管理员', 0, N'超级管理员', CAST(0x0000AB5300C88D04 AS DateTime), 1, CAST(65.00 AS Numeric(10, 2)), N'7')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (75, N'7-12月龄', CAST(0x0000AA8C00ACCF74 AS DateTime), 1, 1, N'超级管理员', N'北京市', CAST(0x0000AA870130905C AS DateTime), 1, N'超级管理员', 1, N'超级管理员', CAST(0x0000AB5300C877EC AS DateTime), 1, CAST(43.00 AS Numeric(10, 2)), N'5')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (81, N'2-6月龄', CAST(0x0000AA8E00C0A080 AS DateTime), 1, 2, N'超级管理员', N'石家庄市', CAST(0x0000AA8E00BA1968 AS DateTime), 1, N'超级管理员', 1, N'超级管理员', CAST(0x0000AB5300C8652C AS DateTime), 1, CAST(14.00 AS Numeric(10, 2)), N'4')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (82, N'7-12月龄', CAST(0x0000AA8E00D15128 AS DateTime), 1, 1, N'超级管理员', N'天津市', CAST(0x0000AA8E00C04D4C AS DateTime), 1, N'超级管理员', 0, N'超级管理员', CAST(0x0000AB8B016C752C AS DateTime), 1, CAST(78.00 AS Numeric(10, 2)), N'8')
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] ON 

GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (4, N'1', CAST(0x0000AACC012B61CC AS DateTime), 1, N'超级管理员', N'买买买买买买1', NULL, N'超级管理员', CAST(0x0000AB0800F93864 AS DateTime), 1, N'大锤1', N'13419098211', 25, 0)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (6, N'3', CAST(0x0000AACC012EC9AC AS DateTime), 1, N'超级管理员', N'买买买买买买3', NULL, N'超级管理员', CAST(0x0000AB0801007FAC AS DateTime), 1, N'小乔', N'13419444422', 199, 1)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (7, N'0', CAST(0x0000ACA00164E1B8 AS DateTime), 1, N'超级管理员', N'12312119023', NULL, N'超级管理员', CAST(0x0000ACA00165768C AS DateTime), 1, N'林中鸟', N'18612119123', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] ON 

GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (2, N'12-16月龄', CAST(22.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AA4500E86DF4 AS DateTime), 1, N'超级管理员', CAST(0xB83F0B00 AS Date), 0, 2, N'超级管理员', CAST(0x0000AB5401596DB0 AS DateTime), 1, N'8')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (6, N'7-12月龄', CAST(22.00 AS Decimal(18, 2)), N'北京市', CAST(0x0000AA470102DD88 AS DateTime), 1, N'超级管理员', CAST(0xA13F0B00 AS Date), 0, 2, N'超级管理员', CAST(0x0000ABB000C51390 AS DateTime), 1, N'8,7,6,5')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (7, N'2-6月龄', CAST(22.00 AS Decimal(18, 2)), N'北京市', CAST(0x0000AA8800AFB540 AS DateTime), 1, N'超级管理员', CAST(0xE73F0B00 AS Date), 0, 0, N'超级管理员', CAST(0x0000ABB000BBD0DC AS DateTime), 1, N'6,5,4,3,7,8')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (9, N'12-16月龄', CAST(11.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AE6E01686DEC AS DateTime), 1, N'超级管理员', CAST(0xC9430B00 AS Date), NULL, 1, N'', NULL, NULL, N'数码相机')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (10, N'2-6月龄', CAST(11.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AE8B012C7080 AS DateTime), 1, N'超级管理员', CAST(0xE6430B00 AS Date), NULL, 1, N'', NULL, NULL, N'数码相机')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (11, N'7-12月龄', CAST(1.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AEBA00236874 AS DateTime), 1, N'超级管理员', CAST(0x0C440B00 AS Date), NULL, 1, N'', NULL, NULL, N'单反相机')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (12, N'0-2月龄', CAST(11.00 AS Decimal(18, 2)), N'北京市', CAST(0x0000AEBA0023A7BC AS DateTime), 1, N'超级管理员', CAST(0x14440B00 AS Date), NULL, 1, N'', NULL, NULL, N'单反相机')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (13, N'2-6月龄', CAST(11.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AEBA0023F2BC AS DateTime), 1, N'超级管理员', CAST(0x15440B00 AS Date), NULL, 1, N'超级管理员', CAST(0x0000AEE40183E400 AS DateTime), 1, N'单反相机,微单相机')
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] OFF
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'cccc519c-c448-4292-85d1-6a0ac2828fd9', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-04","field1641207457900":"123456","field1641207424694":""}', CAST(0x0000AE12013BD32C AS DateTime), 1, N'超级管理员', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'a37c1956-ddc0-457b-8f0a-93cdc44c257d', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"十分满意,相当满意","field1641205647957":"相当满意","field1641206608182":"没有意见"}', CAST(0x0000AE12013AB1B8 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'e913389c-e11a-4675-b8eb-a25c75086e37', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"非常满意,十分满意,相当满意","field1641205647957":"非常满意","field1641206608182":"1111"}', CAST(0x0000AE12013BC9CC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'90513c4c-b639-4d0d-8c9d-fb69b77620f8', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-05","field1641207457900":null,"field1641207424694":""}', CAST(0x0000AE12013AFCB8 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'0431a578-bfc9-407f-b95e-321c350f10cb', N'2021开发语言使用调查', N'[{"id":5,"name":"是否同时使用多种语言开发","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"key":"enable","field":"field1640871905593","width":100,"readonly":false,"required":true,"values":["否"]},{"id":3,"name":"从什么时候开始做开发?","type":"date","icon":"el-icon-date","value":null,"field":"field1640871902689","width":100,"readonly":false,"required":true},{"id":2,"name":"说点什么","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641207457900","width":100,"readonly":false,"required":false},{"id":9,"name":"图片上传","type":"img","url":"","maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"icon":"el-icon-picture-outline","field":"field1641207424694","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1640871905593":[],"field1640871902689":null,"field1641207457900":null,"field1641207424694":null},"formOptions":[[{"field":"field1640871905593","title":"是否同时使用多种语言开发","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"}],[{"field":"field1640871902689","title":"从什么时候开始做开发?","type":"date","required":true,"readonly":false,"colSize":12}],[{"field":"field1641207457900","title":"说点什么","type":"textarea","required":false,"readonly":false,"colSize":12}],[{"field":"field1641207424694","title":"图片上传","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]],"tables":[],"tabs":[]}', N'[{"field":"field1640871905593","title":"是否同时使用多种语言开发","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"},{"field":"field1640871902689","title":"从什么时候开始做开发?","type":"date","required":true,"readonly":false,"colSize":12},{"field":"field1641207457900","title":"说点什么","type":"textarea","required":false,"readonly":false,"colSize":12},{"field":"field1641207424694","title":"图片上传","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]', NULL, N'[]', CAST(0x0000AE0D0185D738 AS DateTime), 1, N'超级管理员', N'超级管理员', CAST(0x0000AE1201393F68 AS DateTime), 1)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', N'2021双减政策调查', N'[{"id":5,"name":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"key":"enable","field":"field1641205615398","width":100,"readonly":false,"required":true,"values":["否"]},{"id":6,"name":"您认为放学后作业对孩子的负担怎样?","values":["非常满意"],"type":"checkbox","key":"满意度","data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"icon":"el-icon-circle-check","field":"field1641206170991","width":100,"readonly":false,"required":true},{"id":5,"name":"作为家长,对当前双减政策是否满意？","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"key":"满意度","field":"field1641205647957","width":100,"readonly":false,"required":true,"values":["非常满意"]},{"id":2,"name":"其他意见","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641206608182","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1641205615398":[],"field1641206170991":[],"field1641205647957":[],"field1641206608182":null},"formOptions":[[{"field":"field1641205615398","title":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"}],[{"field":"field1641206170991","title":"您认为放学后作业对孩子的负担怎样?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"}],[{"field":"field1641205647957","title":"作为家长,对当前双减政策是否满意？","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"}],[{"field":"field1641206608182","title":"其他意见","type":"textarea","required":false,"readonly":false,"colSize":12}]],"tables":[],"tabs":[]}', N'[{"field":"field1641205615398","title":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"},{"field":"field1641206170991","title":"您认为放学后作业对孩子的负担怎样?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"},{"field":"field1641205647957","title":"作为家长,对当前双减政策是否满意？","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"},{"field":"field1641206608182","title":"其他意见","type":"textarea","required":false,"readonly":false,"colSize":12}]', NULL, N'[]', CAST(0x0000AE0E01668090 AS DateTime), 1, N'超级管理员', N'超级管理员', CAST(0x0000AE120134A6D8 AS DateTime), 1)
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'8e68188b-a9a2-45f5-87cd-58c421b14090', 1, N'2019000001810005', N'2019000001810006', 22, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'超级管理员', N'还没想好...8888', 1, N'超级管理员', CAST(0x0000AACC00CB93A0 AS DateTime), 1, N'超级管理员', CAST(0x0000AED10003CDB4 AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'f30e1d98-b2c6-4150-b372-a9154553041e', 2, N'2019000001810003', N'2019000001810004', 56, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'超级管理员', NULL, 1, N'超级管理员', CAST(0x0000AACC00CB7C30 AS DateTime), 1, N'超级管理员', CAST(0x0000AED0018AAE8D AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'3300ce52-deef-4907-bd7d-b3561068ef1a', 1, N'222', N'22', 22, NULL, 1, NULL, NULL, NULL, 1, N'超级管理员', CAST(0x0000AEF3001BEC7F AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', 2, N'2019000001810001', N'2019000001810002', 200, CAST(0x0000AEF20184CE20 AS DateTime), 1, 1, N'超级管理员', N'买家女朋友不要了', 1, N'超级管理员', CAST(0x0000AACB0136B054 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'92b963f7-fe50-4b65-b787-01c96b7bf527', N'8e68188b-a9a2-45f5-87cd-58c421b14090', N'1,2', N'1', 222, NULL, NULL, 1, N'超级管理员', CAST(0x0000AED001837BA0 AS DateTime), 1, N'超级管理员', CAST(0x0000AED10003CDCF AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'9d0278bd-0129-4b80-79b0-08da7ee5690d', N'3300ce52-deef-4907-bd7d-b3561068ef1a', N'2', N'22', 22, CAST(22.00 AS Decimal(18, 2)), NULL, 1, N'超级管理员', CAST(0x0000AEF3001BEC9A AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'49dded16-b1f1-4840-926d-5554e2587228', N'f30e1d98-b2c6-4150-b372-a9154553041e', N'男装', N'fds', 1, CAST(1.00 AS Decimal(18, 2)), N'Upload/Tables/Sys_Dictionary/202004072118229531/06.jpg,Upload/Tables/Sys_Dictionary/202004072118229531/07.jpg,Upload/Tables/Sys_Dictionary/202004072118229531/111.jpg', 1, N'超级管理员', CAST(0x0000AB0C012B1F6C AS DateTime), 1, N'超级管理员', CAST(0x0000AED0018AAE8D AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-d9f5-bee9-32ff-5808ff1238cb', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'测试', N'测试', 7, CAST(8.00 AS Decimal(18, 2)), NULL, 1, N'超级管理员', CAST(0x0000AAB900B6A954 AS DateTime), 1, N'超级管理员', CAST(0x0000AAB900B6BC14 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-ed6c-f0e0-9e97-5930a04f2ebc', N'ad698348-1535-4221-9a1a-57db5cb351e4', N'2', N'2', 2, NULL, NULL, 1, N'超级管理员', CAST(0x0000AAB900B6CED4 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73b5c-f448-6ac7-5db9-66be4d4e6ca5', N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', N'男装', N'32', 2, CAST(2.00 AS Decimal(18, 2)), N'33', 1, N'超级管理员', CAST(0x0000AACB0136B180 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'fc332cef-c1eb-4063-b71c-6addf19a8e8b', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'22', N'2', 0, NULL, NULL, 1, N'超级管理员', CAST(0x0000AAB900B6BC14 AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_City] ON 

GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (1, N'110100', N'市辖区', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (2, N'110200', N'县', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (3, N'120100', N'市辖区', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (4, N'120200', N'县', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (5, N'130100', N'石家庄市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (6, N'130200', N'唐山市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (7, N'130300', N'秦皇岛市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (8, N'130400', N'邯郸市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (9, N'130500', N'邢台市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (10, N'130600', N'保定市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (11, N'130700', N'张家口市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (12, N'130800', N'承德市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (13, N'130900', N'沧州市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (14, N'131000', N'廊坊市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (15, N'131100', N'衡水市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (16, N'140100', N'太原市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (17, N'140200', N'大同市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (18, N'140300', N'阳泉市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (19, N'140400', N'长治市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (20, N'140500', N'晋城市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (21, N'140600', N'朔州市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (22, N'140700', N'晋中市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (23, N'140800', N'运城市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (24, N'140900', N'忻州市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (25, N'141000', N'临汾市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (26, N'141100', N'吕梁市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (27, N'150100', N'呼和浩特市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (28, N'150200', N'包头市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (29, N'150300', N'乌海市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (30, N'150400', N'赤峰市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (31, N'150500', N'通辽市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (32, N'150600', N'鄂尔多斯市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (33, N'150700', N'呼伦贝尔市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (34, N'150800', N'巴彦淖尔市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (35, N'150900', N'乌兰察布市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (36, N'152200', N'兴安盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (37, N'152500', N'锡林郭勒盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (38, N'152900', N'阿拉善盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (39, N'210100', N'沈阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (40, N'210200', N'大连市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (41, N'210300', N'鞍山市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (42, N'210400', N'抚顺市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (43, N'210500', N'本溪市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (44, N'210600', N'丹东市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (45, N'210700', N'锦州市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (46, N'210800', N'营口市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (47, N'210900', N'阜新市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (48, N'211000', N'辽阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (49, N'211100', N'盘锦市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (50, N'211200', N'铁岭市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (51, N'211300', N'朝阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (52, N'211400', N'葫芦岛市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (53, N'220100', N'长春市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (54, N'220200', N'吉林市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (55, N'220300', N'四平市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (56, N'220400', N'辽源市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (57, N'220500', N'通化市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (58, N'220600', N'白山市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (59, N'220700', N'松原市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (60, N'220800', N'白城市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (61, N'222400', N'延边朝鲜族自治州', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (62, N'230100', N'哈尔滨市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (63, N'230200', N'齐齐哈尔市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (64, N'230300', N'鸡西市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (65, N'230400', N'鹤岗市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (66, N'230500', N'双鸭山市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (67, N'230600', N'大庆市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (68, N'230700', N'伊春市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (69, N'230800', N'佳木斯市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (70, N'230900', N'七台河市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (71, N'231000', N'牡丹江市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (72, N'231100', N'黑河市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (73, N'231200', N'绥化市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (74, N'232700', N'大兴安岭地区', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (75, N'310100', N'市辖区', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (76, N'310200', N'县', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (77, N'320100', N'南京市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (78, N'320200', N'无锡市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (79, N'320300', N'徐州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (80, N'320400', N'常州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (81, N'320500', N'苏州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (82, N'320600', N'南通市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (83, N'320700', N'连云港市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (84, N'320800', N'淮安市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (85, N'320900', N'盐城市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (86, N'321000', N'扬州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (87, N'321100', N'镇江市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (88, N'321200', N'泰州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (89, N'321300', N'宿迁市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (90, N'330100', N'杭州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (91, N'330200', N'宁波市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (92, N'330300', N'温州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (93, N'330400', N'嘉兴市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (94, N'330500', N'湖州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (95, N'330600', N'绍兴市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (96, N'330700', N'金华市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (97, N'330800', N'衢州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (98, N'330900', N'舟山市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (99, N'331000', N'台州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (100, N'331100', N'丽水市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (101, N'340100', N'合肥市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (102, N'340200', N'芜湖市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (103, N'340300', N'蚌埠市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (104, N'340400', N'淮南市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (105, N'340500', N'马鞍山市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (106, N'340600', N'淮北市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (107, N'340700', N'铜陵市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (108, N'340800', N'安庆市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (109, N'341000', N'黄山市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (110, N'341100', N'滁州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (111, N'341200', N'阜阳市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (112, N'341300', N'宿州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (113, N'341400', N'巢湖市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (114, N'341500', N'六安市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (115, N'341600', N'亳州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (116, N'341700', N'池州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (117, N'341800', N'宣城市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (118, N'350100', N'福州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (119, N'350200', N'厦门市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (120, N'350300', N'莆田市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (121, N'350400', N'三明市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (122, N'350500', N'泉州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (123, N'350600', N'漳州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (124, N'350700', N'南平市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (125, N'350800', N'龙岩市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (126, N'350900', N'宁德市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (127, N'360100', N'南昌市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (128, N'360200', N'景德镇市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (129, N'360300', N'萍乡市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (130, N'360400', N'九江市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (131, N'360500', N'新余市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (132, N'360600', N'鹰潭市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (133, N'360700', N'赣州市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (134, N'360800', N'吉安市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (135, N'360900', N'宜春市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (136, N'361000', N'抚州市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (137, N'361100', N'上饶市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (138, N'370100', N'济南市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (139, N'370200', N'青岛市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (140, N'370300', N'淄博市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (141, N'370400', N'枣庄市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (142, N'370500', N'东营市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (143, N'370600', N'烟台市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (144, N'370700', N'潍坊市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (145, N'370800', N'济宁市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (146, N'370900', N'泰安市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (147, N'371000', N'威海市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (148, N'371100', N'日照市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (149, N'371200', N'莱芜市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (150, N'371300', N'临沂市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (151, N'371400', N'德州市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (152, N'371500', N'聊城市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (153, N'371600', N'滨州市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (154, N'371700', N'荷泽市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (155, N'410100', N'郑州市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (156, N'410200', N'开封市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (157, N'410300', N'洛阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (158, N'410400', N'平顶山市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (159, N'410500', N'安阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (160, N'410600', N'鹤壁市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (161, N'410700', N'新乡市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (162, N'410800', N'焦作市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (163, N'410900', N'濮阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (164, N'411000', N'许昌市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (165, N'411100', N'漯河市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (166, N'411200', N'三门峡市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (167, N'411300', N'南阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (168, N'411400', N'商丘市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (169, N'411500', N'信阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (170, N'411600', N'周口市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (171, N'411700', N'驻马店市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (172, N'420100', N'武汉市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (173, N'420200', N'黄石市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (174, N'420300', N'十堰市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (175, N'420500', N'宜昌市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (176, N'420600', N'襄樊市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (177, N'420700', N'鄂州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (178, N'420800', N'荆门市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (179, N'420900', N'孝感市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (180, N'421000', N'荆州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (181, N'421100', N'黄冈市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (182, N'421200', N'咸宁市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (183, N'421300', N'随州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (184, N'422800', N'恩施土家族苗族自治州', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (185, N'429000', N'省直辖行政单位', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (186, N'430100', N'长沙市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (187, N'430200', N'株洲市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (188, N'430300', N'湘潭市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (189, N'430400', N'衡阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (190, N'430500', N'邵阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (191, N'430600', N'岳阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (192, N'430700', N'常德市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (193, N'430800', N'张家界市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (194, N'430900', N'益阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (195, N'431000', N'郴州市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (196, N'431100', N'永州市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (197, N'431200', N'怀化市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (198, N'431300', N'娄底市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (199, N'433100', N'湘西土家族苗族自治州', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (200, N'440100', N'广州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (201, N'440200', N'韶关市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (202, N'440300', N'深圳市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (203, N'440400', N'珠海市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (204, N'440500', N'汕头市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (205, N'440600', N'佛山市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (206, N'440700', N'江门市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (207, N'440800', N'湛江市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (208, N'440900', N'茂名市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (209, N'441200', N'肇庆市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (210, N'441300', N'惠州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (211, N'441400', N'梅州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (212, N'441500', N'汕尾市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (213, N'441600', N'河源市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (214, N'441700', N'阳江市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (215, N'441800', N'清远市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (216, N'441900', N'东莞市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (217, N'442000', N'中山市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (218, N'445100', N'潮州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (219, N'445200', N'揭阳市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (220, N'445300', N'云浮市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (221, N'450100', N'南宁市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (222, N'450200', N'柳州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (223, N'450300', N'桂林市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (224, N'450400', N'梧州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (225, N'450500', N'北海市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (226, N'450600', N'防城港市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (227, N'450700', N'钦州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (228, N'450800', N'贵港市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (229, N'450900', N'玉林市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (230, N'451000', N'百色市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (231, N'451100', N'贺州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (232, N'451200', N'河池市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (233, N'451300', N'来宾市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (234, N'451400', N'崇左市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (235, N'460100', N'海口市', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (236, N'460200', N'三亚市', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (237, N'469000', N'省直辖县级行政单位', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (238, N'500100', N'市辖区', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (239, N'500200', N'县', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (240, N'500300', N'市', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (241, N'510100', N'成都市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (242, N'510300', N'自贡市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (243, N'510400', N'攀枝花市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (244, N'510500', N'泸州市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (245, N'510600', N'德阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (246, N'510700', N'绵阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (247, N'510800', N'广元市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (248, N'510900', N'遂宁市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (249, N'511000', N'内江市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (250, N'511100', N'乐山市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (251, N'511300', N'南充市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (252, N'511400', N'眉山市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (253, N'511500', N'宜宾市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (254, N'511600', N'广安市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (255, N'511700', N'达州市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (256, N'511800', N'雅安市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (257, N'511900', N'巴中市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (258, N'512000', N'资阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (259, N'513200', N'阿坝藏族羌族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (260, N'513300', N'甘孜藏族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (261, N'513400', N'凉山彝族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (262, N'520100', N'贵阳市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (263, N'520200', N'六盘水市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (264, N'520300', N'遵义市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (265, N'520400', N'安顺市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (266, N'522200', N'铜仁地区', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (267, N'522300', N'黔西南布依族苗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (268, N'522400', N'毕节地区', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (269, N'522600', N'黔东南苗族侗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (270, N'522700', N'黔南布依族苗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (271, N'530100', N'昆明市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (272, N'530300', N'曲靖市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (273, N'530400', N'玉溪市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (274, N'530500', N'保山市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (275, N'530600', N'昭通市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (276, N'530700', N'丽江市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (277, N'530800', N'思茅市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (278, N'530900', N'临沧市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (279, N'532300', N'楚雄彝族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (280, N'532500', N'红河哈尼族彝族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (281, N'532600', N'文山壮族苗族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (282, N'532800', N'西双版纳傣族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (283, N'532900', N'大理白族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (284, N'533100', N'德宏傣族景颇族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (285, N'533300', N'怒江傈僳族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (286, N'533400', N'迪庆藏族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (287, N'540100', N'拉萨市', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (288, N'542100', N'昌都地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (289, N'542200', N'山南地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (290, N'542300', N'日喀则地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (291, N'542400', N'那曲地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (292, N'542500', N'阿里地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (293, N'542600', N'林芝地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (294, N'610100', N'西安市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (295, N'610200', N'铜川市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (296, N'610300', N'宝鸡市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (297, N'610400', N'咸阳市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (298, N'610500', N'渭南市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (299, N'610600', N'延安市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (300, N'610700', N'汉中市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (301, N'610800', N'榆林市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (302, N'610900', N'安康市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (303, N'611000', N'商洛市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (304, N'620100', N'兰州市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (305, N'620200', N'嘉峪关市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (306, N'620300', N'金昌市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (307, N'620400', N'白银市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (308, N'620500', N'天水市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (309, N'620600', N'武威市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (310, N'620700', N'张掖市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (311, N'620800', N'平凉市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (312, N'620900', N'酒泉市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (313, N'621000', N'庆阳市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (314, N'621100', N'定西市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (315, N'621200', N'陇南市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (316, N'622900', N'临夏回族自治州', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (317, N'623000', N'甘南藏族自治州', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (318, N'630100', N'西宁市', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (319, N'632100', N'海东地区', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (320, N'632200', N'海北藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (321, N'632300', N'黄南藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (322, N'632500', N'海南藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (323, N'632600', N'果洛藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (324, N'632700', N'玉树藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (325, N'632800', N'海西蒙古族藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (326, N'640100', N'银川市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (327, N'640200', N'石嘴山市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (328, N'640300', N'吴忠市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (329, N'640400', N'固原市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (330, N'640500', N'中卫市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (331, N'650100', N'乌鲁木齐市', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (332, N'650200', N'克拉玛依市', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (333, N'652100', N'吐鲁番地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (334, N'652200', N'哈密地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (335, N'652300', N'昌吉回族自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (336, N'652700', N'博尔塔拉蒙古自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (337, N'652800', N'巴音郭楞蒙古自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (338, N'652900', N'阿克苏地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (339, N'653000', N'克孜勒苏柯尔克孜自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (340, N'653100', N'喀什地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (341, N'653200', N'和田地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (342, N'654000', N'伊犁哈萨克自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (343, N'654200', N'塔城地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (344, N'654300', N'阿勒泰地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (345, N'659000', N'省直辖行政单位', N'650000')
GO
SET IDENTITY_INSERT [dbo].[Sys_City] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] ON 

GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (3, N'{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', CAST(0x0000AA81012224F4 AS DateTime), NULL, N'admin', N'1', NULL, N'是否值', N'enable', 1, N'超级管理员', CAST(0x0000AE120130F41A AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (30, N'{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FC012FCB7C AS DateTime), 0, N'测试超级管理员', NULL, NULL, N'响应状态', N'restatus', 1, N'测试超级管理员', CAST(0x0000A8FD00AAC850 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (31, N'{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FD00F36114 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'日志类型', N'log', 1, N'超级管理员', CAST(0x0000AE6D00DC40AE AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (32, N'{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', CAST(0x0000A8FF01150404 AS DateTime), NULL, N'测试超级管理员', NULL, N'SELECT Role_Id as ''key'',RoleName as ''value'' FROM Sys_Role WHERE Enable=1
', N'角色列表', N'roles', 1, N'测试超级管理员', CAST(0x0000A91C00F8424C AS DateTime), 1, 123, 0, N'sql语句需要key,value列，界面才能绑定数据源')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (35, N'{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', CAST(0x0000A91900B2F8CC AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'审核状态', N'audit', 1, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (36, N'{
 valueField: ''Variety'',
 textField: ''Variety'',
  containField:null 
}', CAST(0x0000A91900E86A70 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'品种', N'pz', 1, N'超级管理员', CAST(0x0000AE12013D1B40 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (37, N'{
 valueField: ''AgeRange'',
 textField: ''AgeRange'',
  containField:null 
}', CAST(0x0000A91900E8D898 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'月龄', N'age', 1, N'测试超级管理员', CAST(0x0000A91900EAC84C AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (38, N'{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', CAST(0x0000A91900EBC56C AS DateTime), NULL, N'测试超级管理员', NULL, N'
SELECT  CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''县''', N'城市', N'city', 1, N'超级管理员', CAST(0x0000AB540172007F AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (41, N'{
 valueField: ''Sex'',
 textField: ''Sex'',
  containField:null 
}', CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'性别', N'sex', 1, N'超级管理员', CAST(0x0000AC79017C38CC AS DateTime), 1, NULL, 1, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (44, N'{
 valueField: ''NewsType'',
 textField: ''NewsType'',
  containField:null 
}', CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'新闻类型', N'news', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (46, N'{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', CAST(0x0000A91F00DDCE08 AS DateTime), NULL, N'测试超级管理员', NULL, N'
SELECT  CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''县''', N'省列表', N'pro', 1, N'超级管理员', CAST(0x0000AB540171F607 AS DateTime), 1, NULL, 0, N'sql语句需要key,value列，界面才能绑定数据源')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (49, N'{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', CAST(0x0000A92600A6197C AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'性别', N'gender', 1, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (50, N'{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'启用状态', N'status', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (52, N'{
 valueField: ''Choiceness'',
 textField: ''Choiceness'',
  containField:null 
}', CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'是否买入', N'cq', 1, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (59, N'{
 valueField: ''IsRegregisterPhone'',
 textField: ''IsRegregisterPhone'',
  containField:null 
}', CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'手机用户', N'isphone', 1, N'超级管理员', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (64, NULL, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', NULL, NULL, N'订单类型', N'ordertype', 1, N'超级管理员', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, 0, N'xxxxx')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (65, NULL, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', NULL, NULL, N'商品名称', N'pn', 1, N'超级管理员', CAST(0x0000AED00182E785 AS DateTime), 1, 2, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (66, NULL, CAST(0x0000AC79017C1BD0 AS DateTime), 1, N'超级管理员', NULL, N'SELECT Role_Id AS id,parentId,Role_Id AS [key],RoleName AS value FROM Sys_Role', N'级联角色', N'tree_roles', 1, N'超级管理员', CAST(0x0000AC79017D3D85 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (67, NULL, CAST(0x0000ACA0016566D6 AS DateTime), 1, N'超级管理员', NULL, NULL, N'nav', N'nav', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (68, NULL, CAST(0x0000AE120130A904 AS DateTime), 1, N'超级管理员', NULL, NULL, N'满意度', N'满意度', 1, N'超级管理员', CAST(0x0000AEC1000E76FE AS DateTime), 1, NULL, 0, N'表单设计使用')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (69, NULL, CAST(0x0000AE8A00B06C43 AS DateTime), 1, N'超级管理员', NULL, NULL, N'11', N'11', 1, N'超级管理员', CAST(0x0000AE8A00B1309C AS DateTime), 1, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] ON 

GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (3, NULL, 1, N'admin', N'否', N'0', 3, NULL, N'超级管理员', CAST(0x0000AE120130F41A AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (4, NULL, 1, N'xxx', N'是', N'1', 3, NULL, N'超级管理员', CAST(0x0000AE120130F41A AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (22, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'测试超级管理员', N'其他', N'0', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 10, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (23, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'测试超级管理员', N'成功', N'1', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (24, CAST(0x0000A8FD009FD788 AS DateTime), 1, N'测试超级管理员', N'异常', N'2', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 50, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (25, CAST(0x0000A8FD00F36240 AS DateTime), 1, N'测试超级管理员', N'系统', N'System', 31, NULL, N'超级管理员', CAST(0x0000AE6D00DC40B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (26, CAST(0x0000A8FD00F3C4B0 AS DateTime), 1, N'测试超级管理员', N'登陆', N'Login', 31, NULL, N'超级管理员', CAST(0x0000AE6D00DC40B4 AS DateTime), 1, 90, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (27, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'测试超级管理员', N'新建', N'Add', 31, NULL, N'超级管理员', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (28, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'测试超级管理员', N'删除', N'Del', 31, 1, N'超级管理员', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (29, CAST(0x0000A90000FF9678 AS DateTime), 1, N'测试超级管理员', N'编辑', N'Edit', 31, 1, N'超级管理员', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (37, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核中', N'0', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (38, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核通过', N'1', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (39, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核未通过', N'2', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (47, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'0-2月龄', N'0-2月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (48, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'2-6月龄', N'2-6月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (49, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'7-12月龄', N'7-12月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (50, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'12-16月龄', N'12-16月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (51, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'16月龄以上', N'16月龄以上', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (56, CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', N'公牛', N'公牛', 41, NULL, N'超级管理员', CAST(0x0000AC79017C38CF AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (57, CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', N'母牛', N'母牛', 41, NULL, N'超级管理员', CAST(0x0000AC79017C38CD AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (64, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', N'行业新闻', N'1', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (65, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', N'行情资讯', N'2', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (71, CAST(0x0000A91A011B4274 AS DateTime), 1, N'测试超级管理员', N'异常', N'Exception', 31, 0, N'超级管理员', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (90, CAST(0x0000A92600A6197C AS DateTime), 1, N'测试超级管理员', N'男', N'0', 49, NULL, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (91, CAST(0x0000A92600A6197C AS DateTime), 1, N'测试超级管理员', N'女', N'1', 49, NULL, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (96, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'未启用', N'0', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (97, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'已启用', N'1', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (98, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'已删除', N'2', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (101, CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', N'否', N'0', 52, 0, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (102, CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', N'是', N'1', 52, 0, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (128, CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', N'是', N'1', 59, 0, N'超级管理员', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (129, CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', N'否', N'0', 59, 1, N'超级管理员', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (144, CAST(0x0000AAB00112E318 AS DateTime), 1, N'超级管理员', N'刷新Token', N'ReplaceToeken', 31, NULL, N'超级管理员', CAST(0x0000AE6D00DC40B1 AS DateTime), 1, 110, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (145, CAST(0x0000AAB0011553B4 AS DateTime), 1, N'超级管理员', N'Info', N'3', 30, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (149, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'发货', N'1', 64, 1, N'超级管理员', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fd')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (150, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'退货', N'2', 64, 0, N'超级管理员', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fs')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (151, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'返单', N'3', 64, 1, N'超级管理员', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, N'xx')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (152, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'家居', N'4', 65, 1, N'超级管理员', CAST(0x0000AB5A0127DCC0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (153, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'男装', N'3', 65, 1, N'超级管理员', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 4, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (154, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'女装', N'2', 65, 0, N'超级管理员', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (155, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'食品', N'1', 65, 0, N'超级管理员', CAST(0x0000AB5A0127DCAE AS DateTime), 1, NULL, N'数码相机,单反相机')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (423, CAST(0x0000ACA0016566E6 AS DateTime), 1, N'超级管理员', N'是', N'1', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (424, CAST(0x0000ACA0016566ED AS DateTime), 1, N'超级管理员', N'否', N'0', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (425, CAST(0x0000AE120130A91C AS DateTime), 1, N'超级管理员', N'非常满意', N'非常满意', 68, 0, N'超级管理员', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (426, CAST(0x0000AE120130A91E AS DateTime), 1, N'超级管理员', N'十分满意', N'十分满意', 68, 0, N'超级管理员', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (427, CAST(0x0000AE120130A91E AS DateTime), 1, N'超级管理员', N'相当满意', N'相当满意', 68, 0, N'超级管理员', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (428, CAST(0x0000AE120132F9A5 AS DateTime), 1, N'超级管理员', N'比较满意', N'比较满意', 68, 0, N'超级管理员', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (429, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'超级管理员', N'数码相机', N'数码相机', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (430, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'超级管理员', N'单反相机', N'单反相机', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (431, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'超级管理员', N'微单相机', N'微单相机', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (432, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'超级管理员', N'运动相机', N'运动相机', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (433, CAST(0x0000AE8A00B06C68 AS DateTime), 1, N'超级管理员', N'1', N'1', 69, 0, N'超级管理员', CAST(0x0000AE8A00B0BF07 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (434, CAST(0x0000AE8A00B06C6B AS DateTime), 1, N'超级管理员', NULL, NULL, 69, 0, N'超级管理员', CAST(0x0000AE8A00B0E633 AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] ON 

GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (1, CAST(0x0000AEF500297EE9 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 990, CAST(0x0000AEF500298012 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (2, CAST(0x0000AEF50029819B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 23, CAST(0x0000AEF5002981A2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (3, CAST(0x0000AEF50029828F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 23, CAST(0x0000AEF500298296 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (4, CAST(0x0000AEF50029838C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF50029838E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (5, CAST(0x0000AEF5002984D1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002984D3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (6, CAST(0x0000AEF500298598 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF50029859A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (7, CAST(0x0000AEF500298C39 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 210, CAST(0x0000AEF500298C78 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (8, CAST(0x0000AEF500298F4E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 68, CAST(0x0000AEF500298F63 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (9, CAST(0x0000AEF500299241 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF500299243 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (10, CAST(0x0000AEF5002995F5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF5002995F7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (11, CAST(0x0000AEF500299738 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF50029973A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (12, CAST(0x0000AEF5002999EB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AEF5002999EB AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (13, CAST(0x0000AEF5002999EB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 58, CAST(0x0000AEF5002999FC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (14, CAST(0x0000AEF500299A42 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 17, CAST(0x0000AEF500299A47 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Dictionary/GetBuilderDictionary', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (15, CAST(0x0000AEF500299A42 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 33, CAST(0x0000AEF500299A4C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/GetTableTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (16, CAST(0x0000AEF500299AE2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF500299AE3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (17, CAST(0x0000AEF500299BCB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF500299BCD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (18, CAST(0x0000AEF50029A4C3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 29, CAST(0x0000AEF50029A4CC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (19, CAST(0x0000AEF50029A68B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF50029A68D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (20, CAST(0x0000AEF50029A789 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029A78A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (21, CAST(0x0000AEF50029AD9D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 19, CAST(0x0000AEF50029ADA3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (22, CAST(0x0000AEF50029AF80 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF50029AF82 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (23, CAST(0x0000AEF50029B34E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029B34F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (24, CAST(0x0000AEF50029B5D3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF50029B5D5 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (25, CAST(0x0000AEF50029B812 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF50029B813 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (26, CAST(0x0000AEF50029B812 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 8, CAST(0x0000AEF50029B815 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (27, CAST(0x0000AEF50029B850 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF50029B852 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/GetTableTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (28, CAST(0x0000AEF50029B850 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF50029B852 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Dictionary/GetBuilderDictionary', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (29, CAST(0x0000AEF50029B965 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029B966 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (30, CAST(0x0000AEF50029BA3C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AEF50029BA3D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (31, CAST(0x0000AEF50029C154 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029C155 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (32, CAST(0x0000AEF50029C344 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 16, CAST(0x0000AEF50029C349 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (33, CAST(0x0000AEF50029C54D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF50029C54F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (34, CAST(0x0000AEF50029C631 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029C632 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (35, CAST(0x0000AEF50029CBEB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 10, CAST(0x0000AEF50029CBEE AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (36, CAST(0x0000AEF50029D0E1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029D0E2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (37, CAST(0x0000AEF50029D1D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029D1D0 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (38, CAST(0x0000AEF50029D6D5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, CAST(0x0000AEF50029D6D7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (39, CAST(0x0000AEF50029D8A5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF50029D8A7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (40, CAST(0x0000AEF50029D98F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029D990 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (41, CAST(0x0000AEF50029DF2C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 24, CAST(0x0000AEF50029DF33 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (42, CAST(0x0000AEF50029E228 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029E229 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (43, CAST(0x0000AEF50029E2F3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029E2F3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (44, CAST(0x0000AEF50029E8B6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029E8B6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (45, CAST(0x0000AEF50029E97E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 13, CAST(0x0000AEF50029E982 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/Save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (46, CAST(0x0000AEF50029EB5E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF50029EB5F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (47, CAST(0x0000AEF50029ECC6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029ECC6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (48, CAST(0x0000AEF50029EF52 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AEF50029EF53 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/delTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (49, CAST(0x0000AEF50029F122 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF50029F122 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (50, CAST(0x0000AEF50029F122 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF50029F122 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (51, CAST(0x0000AEF50029F16F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029F170 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Dictionary/GetBuilderDictionary', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (52, CAST(0x0000AEF50029F16F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF50029F171 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/GetTableTree', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (53, CAST(0x0000AEF50029F4E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029F4E9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (54, CAST(0x0000AEF50029F60C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF50029F60C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (55, CAST(0x0000AEF50029F6EB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029F6EC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (56, CAST(0x0000AEF50029F75C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF50029F75D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (57, CAST(0x0000AEF50029F7CD AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF50029F7CD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/builder/LoadTableInfo', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (58, CAST(0x0000AEF5002A00FE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 16, CAST(0x0000AEF5002A0103 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (59, CAST(0x0000AEF5002A01F4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, CAST(0x0000AEF5002A01F9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (60, CAST(0x0000AEF5002A040B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A040C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (61, CAST(0x0000AEF5002A0739 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A0739 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (62, CAST(0x0000AEF5002A0AEC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A0AEC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (63, CAST(0x0000AEF5002A0C03 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A0C03 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (64, CAST(0x0000AEF5002A0DEE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A0DEE AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (65, CAST(0x0000AEF5002A1247 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 56, CAST(0x0000AEF5002A1258 AS DateTime), NULL, N'Info', N'表:.,菜单：基础页面,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (66, CAST(0x0000AEF5002A1247 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 58, CAST(0x0000AEF5002A1258 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (67, CAST(0x0000AEF5002A133F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A133F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (68, CAST(0x0000AEF5002A1564 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A1566 AS DateTime), NULL, N'Info', N'表:.,菜单：数据源绑定,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (69, CAST(0x0000AEF5002A1564 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A1566 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (70, CAST(0x0000AEF5002A165F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A1660 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (71, CAST(0x0000AEF5002A1846 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A1848 AS DateTime), NULL, N'Info', N'表:.,菜单：事件格式化,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (72, CAST(0x0000AEF5002A1846 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A1848 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (73, CAST(0x0000AEF5002A1924 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A1924 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (74, CAST(0x0000AEF5002A1AFC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF5002A1AFE AS DateTime), NULL, N'Info', N'表:.,菜单：主从表页面,权限,成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (75, CAST(0x0000AEF5002A1AFC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AEF5002A1AFE AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (76, CAST(0x0000AEF5002A1BD2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A1BD2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (77, CAST(0x0000AEF5002A1DD5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A1DD7 AS DateTime), NULL, N'Info', N'表:.,菜单：自定义扩展,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (78, CAST(0x0000AEF5002A1DD5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A1DD7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (79, CAST(0x0000AEF5002A1E90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A1E90 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (80, CAST(0x0000AEF5002A20C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A20C9 AS DateTime), NULL, N'Info', N'表:.,菜单：表单vol-form,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (81, CAST(0x0000AEF5002A20C8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A20C9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (82, CAST(0x0000AEF5002A219D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A219D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (83, CAST(0x0000AEF5002A23C4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A23C5 AS DateTime), NULL, N'Info', N'表:.,菜单：表格vol-table,权限,成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (84, CAST(0x0000AEF5002A23C4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A23C5 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (85, CAST(0x0000AEF5002A24AF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A24AF AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (86, CAST(0x0000AEF5002A26F2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A26F2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (87, CAST(0x0000AEF5002A29E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 12, CAST(0x0000AEF5002A29E8 AS DateTime), NULL, N'Info', N'表:Table+表单数据,菜单：单表数据,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (88, CAST(0x0000AEF5002A29E4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 12, CAST(0x0000AEF5002A29E8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (89, CAST(0x0000AEF5002A2AEE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A2AEF AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (90, CAST(0x0000AEF5002A2D0D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A2D0F AS DateTime), NULL, N'Info', N'表:/,菜单：一对一(多),权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (91, CAST(0x0000AEF5002A2D0D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A2D0F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (92, CAST(0x0000AEF5002A2DEA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A2DEA AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (93, CAST(0x0000AEF5002A2F9A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A2F9B AS DateTime), NULL, N'Info', N'表:/,菜单：表单布局,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (94, CAST(0x0000AEF5002A2F9A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A2F9B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (95, CAST(0x0000AEF5002A3069 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A3069 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (96, CAST(0x0000AEF5002A330B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A330C AS DateTime), NULL, N'Info', N'表:/,菜单：表单一对多,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (97, CAST(0x0000AEF5002A330B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A330D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (98, CAST(0x0000AEF5002A341D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A341E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (99, CAST(0x0000AEF5002A392D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A392D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (100, CAST(0x0000AEF5002A3B24 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A3B24 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (101, CAST(0x0000AEF5002A3DC8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A3DC9 AS DateTime), NULL, N'Info', N'表:/,菜单：图表+表单,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (102, CAST(0x0000AEF5002A3DC8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A3DC9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (103, CAST(0x0000AEF5002A3F24 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A3F24 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (104, CAST(0x0000AEF5002A42BA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A42BB AS DateTime), NULL, N'Info', N'表:树形菜单与表,菜单：树形菜单,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (105, CAST(0x0000AEF5002A42BA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A42BB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (106, CAST(0x0000AEF5002A4399 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A4399 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (107, CAST(0x0000AEF5002A459C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A459E AS DateTime), NULL, N'Info', N'表:文件上传,菜单：文件上传,权限[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (108, CAST(0x0000AEF5002A459C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A459E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (109, CAST(0x0000AEF5002A4689 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A468A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (110, CAST(0x0000AEF5002A487F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A487F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (111, CAST(0x0000AEF5002A4C81 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A4C82 AS DateTime), NULL, N'Info', N'表:/,菜单：后台校验,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (112, CAST(0x0000AEF5002A4C81 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A4C82 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (113, CAST(0x0000AEF5002A4DF7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A4DF7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (114, CAST(0x0000AEF5002A5048 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A5049 AS DateTime), NULL, N'Info', N'表:/,菜单：其他组件,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (115, CAST(0x0000AEF5002A5048 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A5049 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (116, CAST(0x0000AEF5002A514D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A514D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (117, CAST(0x0000AEF5002A5345 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A5346 AS DateTime), NULL, N'Info', N'表:/,菜单：移动H5开发,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (118, CAST(0x0000AEF5002A5345 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A5346 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (119, CAST(0x0000AEF5002A5416 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A5416 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (120, CAST(0x0000AEF5002A56B3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A56B4 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (121, CAST(0x0000AEF5002A5AB1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A5AB1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (122, CAST(0x0000AEF5002A5C8A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, CAST(0x0000AEF5002A5C8F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/delMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (123, CAST(0x0000AEF5002A5C92 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A5C92 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (124, CAST(0x0000AEF5002A5D8E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A5D8F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (125, CAST(0x0000AEF5002A5F82 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A5F83 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/delMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (126, CAST(0x0000AEF5002A5F86 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A5F87 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (127, CAST(0x0000AEF5002A627D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A627D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (128, CAST(0x0000AEF5002A648D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A648E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/delMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (129, CAST(0x0000AEF5002A6490 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A6491 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (130, CAST(0x0000AEF5002A65A5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A65A5 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (131, CAST(0x0000AEF5002A68AA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A68AA AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (132, CAST(0x0000AEF5002A6B0A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A6B0B AS DateTime), NULL, N'Info', N'表:静态页面发布,菜单：编辑器与HTML,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (133, CAST(0x0000AEF5002A6B0A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A6B0B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (134, CAST(0x0000AEF5002A6C3F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A6C3F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (135, CAST(0x0000AEF5002A6DA0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A6DA1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (136, CAST(0x0000AEF5002A6E55 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A6E56 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (137, CAST(0x0000AEF5002A6F9A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A6F9B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (138, CAST(0x0000AEF5002A7077 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A7077 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (139, CAST(0x0000AEF5002A73D3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A73D3 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (140, CAST(0x0000AEF5002A73D3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AEF5002A73D4 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (141, CAST(0x0000AEF5002A73F0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A73F1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (142, CAST(0x0000AEF5002A78AA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A78AB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (143, CAST(0x0000AEF5002A7C33 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A7C34 AS DateTime), NULL, N'Info', N'表:tables,菜单：table组件,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (144, CAST(0x0000AEF5002A7C33 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002A7C34 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (145, CAST(0x0000AEF5002A7F08 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002A7F08 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (146, CAST(0x0000AEF5002A7F08 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002A7F09 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (147, CAST(0x0000AEF5002A7F24 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002A7F25 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (148, CAST(0x0000AEF5002ADB82 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002ADB82 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (149, CAST(0x0000AEF5002ADB82 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002ADB83 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (150, CAST(0x0000AEF5002ADB9B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002ADB9B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (151, CAST(0x0000AEF5002ADC52 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002ADC52 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (152, CAST(0x0000AEF5002ADD80 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF5002ADD82 AS DateTime), NULL, N'Info', N'表:流程管理,菜单：流程管理,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (153, CAST(0x0000AEF5002ADD80 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AEF5002ADD82 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (154, CAST(0x0000AEF5002ADE90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002ADE90 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (155, CAST(0x0000AEF5002ADE90 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002ADE90 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (156, CAST(0x0000AEF5002ADEA8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002ADEA9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (157, CAST(0x0000AEF5002AE537 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002AE538 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (158, CAST(0x0000AEF5002AEC0A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002AEC0B AS DateTime), NULL, N'Info', N'表:流程管理,菜单：流程管理,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (159, CAST(0x0000AEF5002AEC0A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002AEC0B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (160, CAST(0x0000AEF5002AEF50 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002AEF50 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (161, CAST(0x0000AEF5002AF621 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002AF622 AS DateTime), NULL, N'Info', N'表:.,菜单：用户基础信息,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (162, CAST(0x0000AEF5002AF621 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002AF622 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (163, CAST(0x0000AEF5002AF991 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002AF991 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (164, CAST(0x0000AEF5002AF991 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002AF991 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (165, CAST(0x0000AEF5002AF9AB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002AF9AB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (166, CAST(0x0000AEF5002AFE34 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002AFE35 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (167, CAST(0x0000AEF5002B0678 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002B067A AS DateTime), NULL, N'Info', N'表:代码生成,菜单：代码生成,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (168, CAST(0x0000AEF5002B0678 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AEF5002B067A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (169, CAST(0x0000AEF5002B074F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002B0750 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (170, CAST(0x0000AEF5002B12B1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AEF5002B12B2 AS DateTime), NULL, N'Info', N'表:xxx,菜单：日志管理,权限[{"text":"查询","value":"Search"}],成功保存成功', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (171, CAST(0x0000AEF5002B12B1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AEF5002B12B2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (172, CAST(0x0000AEF5002B1499 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002B1499 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (173, CAST(0x0000AEF5002B1499 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AEF5002B149A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'超级管理员', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (174, CAST(0x0000AEF5002B14B4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AEF5002B14B4 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'超级管理员', 1)
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] ON 

GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (2, N'用户基础信息', N'[{"text":"查询","value":"Search"}]', N'el-icon-user', NULL, 1, 1600, N'.', 0, NULL, CAST(0x0000A7DD00CB94CC AS DateTime), N'2017-08-28 11:12:45', CAST(0x0000AEF5002AF622 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (3, N'角色管理', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 900, N'Sys_Role', 2, N'/Sys_Role/Manager', CAST(0x0000A7EC010D2C98 AS DateTime), N'2017-08-28 14:19:13', CAST(0x0000AAAA00AC65FC AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (5, N'日志管理', N'[{"text":"查询","value":"Search"}]', N'el-icon-c-scale-to-original', NULL, 1, 1300, N'xxx', 0, N'/', CAST(0x0000A7F60128868C AS DateTime), N'2017-09-22 17:59:37', CAST(0x0000AEF5002B12B2 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (6, N'系统日志', N'[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 0, N'Sys_Log', 5, N'/Sys_Log/Manager', CAST(0x0000A7F60128BECC AS DateTime), N'2017-09-22 18:0:25', CAST(0x0000AAA9010D5344 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (9, N'用户管理', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 11110, N'Sys_User', 2, N'/Sys_User/Manager', NULL, NULL, CAST(0x0000AAA900EE99A4 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (45, N'不用节点', N'', N'', NULL, 0, 0, N'/', 0, NULL, NULL, NULL, CAST(0x0000ABB200DBCA8F AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (61, N'系统设置', N'[{"text":"查询","value":"Search"}]', N'ios-cog', NULL, 1, 1000, N'系统设置', 0, N'/', CAST(0x0000AA8800E7D470 AS DateTime), N'超级管理员', CAST(0x0000AE1201396D56 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (62, N'菜单设置', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 10, N'Sys_Menu', 61, N'/sysmenu', CAST(0x0000AA8800E7F8C4 AS DateTime), N'超级管理员', CAST(0x0000AAF000C5EE20 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (63, N'下拉框绑定设置', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 10, N'Sys_Dictionary', 61, N'/Sys_Dictionary', CAST(0x0000AA8800E85A08 AS DateTime), N'超级管理员', CAST(0x0000AAAB01237B24 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (64, N'代码生成', N'[{"text":"查询","value":"Search"}]', N'el-icon-setting', NULL, 1, 1500, N'代码生成', 0, N'/coding', CAST(0x0000AA8800E8E324 AS DateTime), N'超级管理员', CAST(0x0000AEF5002B0679 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (65, N'代码生成', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', N'', NULL, 1, 10, N'/', 64, N'/coder', CAST(0x0000AA8800E92CF8 AS DateTime), N'超级管理员', CAST(0x0000AE1201397ACA AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (71, N'vue权限管理', N'[{"text":"查询","value":"Search"},{"text":"编辑","value":"Update"}]', N'ivu-icon ivu-icon-ios-boat', NULL, 1, 1000, N'Sys_Role', 2, N'/permission', CAST(0x0000AAA500ABD380 AS DateTime), N'超级管理员', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (104, N'角色管理(tree)', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', N'', NULL, 1, 0, N'Sys_Role1', 2, N'/Sys_Role1', CAST(0x0000AD1C00E1A7EA AS DateTime), N'超级管理员', CAST(0x0000AAAA00AC65FC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (106, N'表单设计', N'[{"text":"查询","value":"Search"}]', N'el-icon-s-operation', NULL, 1, 3000, N'.', 0, N'', CAST(0x0000AD92000ABAC4 AS DateTime), N'超级管理员', CAST(0x0000AE12013A17B1 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (107, N'表单设计', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 100, N'.', 106, N'/formDraggable', CAST(0x0000AD92000AFCD8 AS DateTime), N'超级管理员', CAST(0x0000AE1201399759 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (109, N'表单配置', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', N'', NULL, 1, 0, N'FormDesignOptions', 106, N'/FormDesignOptions', CAST(0x0000AE0D01829308 AS DateTime), N'超级管理员', CAST(0x0000AE12013A329D AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (110, N'数据采集', N'[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 0, N'.', 106, N'/formCollectionResultTree', CAST(0x0000AE0D0182EBC4 AS DateTime), N'超级管理员', CAST(0x0000AE0E017E47E2 AS DateTime), N'超级管理员', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (132, N'消息推送', N'[{"text":"查询","value":"Search"}]', N'el-icon-chat-line-round', NULL, 1, 1700, N'.', 0, N'/signalR', CAST(0x0000AE8A0039F664 AS DateTime), N'超级管理员', CAST(0x0000AE8A003A0B04 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (133, N'流程管理', N'[{"text":"查询","value":"Search"}]', N'el-icon-s-order', NULL, 1, 1730, N'流程管理', 0, N'', CAST(0x0000AEDD000ACFDE AS DateTime), N'超级管理员', CAST(0x0000AEF5002AEC0B AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (134, N'流程管理', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 0, N'Sys_WorkFlow', 133, N'/Sys_WorkFlow', CAST(0x0000AEDD000AF7BB AS DateTime), N'超级管理员', CAST(0x0000AEE400366800 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (135, N'我的审批', N'[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"}]', N'', NULL, 1, 0, N'Sys_WorkFlowTable', 133, N'/Sys_WorkFlowTable', CAST(0x0000AEE40009A340 AS DateTime), N'超级管理员', CAST(0x0000AEF30010B019 AS DateTime), N'超级管理员', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (136, N'发起流程', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 0, N'发起流程', 133, N'/flowdemo', CAST(0x0000AEF30005F2A2 AS DateTime), N'超级管理员', CAST(0x0000AEF30005FA24 AS DateTime), N'超级管理员', 0)
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] ON 

GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (1, N'110000', N'北京市', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (2, N'120000', N'天津市', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (3, N'130000', N'河北省', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (4, N'140000', N'山西省', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (5, N'150000', N'内蒙古自治区', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (6, N'210000', N'辽宁省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (7, N'220000', N'吉林省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (8, N'230000', N'黑龙江省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (9, N'310000', N'上海市', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (10, N'320000', N'江苏省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (11, N'330000', N'浙江省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (12, N'340000', N'安徽省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (13, N'350000', N'福建省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (14, N'360000', N'江西省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (15, N'370000', N'山东省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (16, N'410000', N'河南省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (17, N'420000', N'湖北省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (18, N'430000', N'湖南省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (19, N'440000', N'广东省', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (20, N'450000', N'广西壮族自治区', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (21, N'460000', N'海南省', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (22, N'500000', N'重庆市', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (23, N'510000', N'四川省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (24, N'520000', N'贵州省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (25, N'530000', N'云南省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (26, N'540000', N'西藏自治区', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (27, N'610000', N'陕西省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (28, N'620000', N'甘肃省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (29, N'630000', N'青海省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (30, N'640000', N'宁夏回族自治区', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (31, N'650000', N'新疆维吾尔自治区', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (32, N'710000', N'台湾省', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (33, N'810000', N'香港特别行政区', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (34, N'820000', N'澳门特别行政区', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (35, N'thd', N'桃花岛', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (43, N'测试1', N'测试1', N'港澳台')
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (1, CAST(0x0000A94500C1EFA8 AS DateTime), N'超级管理员', NULL, N'无', 0, 1, N'测试超级管理员', CAST(0x0000A953011A8244 AS DateTime), 1000, 0, N'超级管理员')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (2, CAST(0x0000A94500C22590 AS DateTime), N'超级管理员', NULL, N'1', 0, 1, N'超级管理员', CAST(0x0000AE7A014CA24C AS DateTime), NULL, 1, N'测试管理员')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (4, CAST(0x0000A94500C25EFC AS DateTime), N'超级管理员', NULL, N'无  ', 0, 1, N'超级管理员', CAST(0x0000AB1D015D2414 AS DateTime), NULL, 2, N'信息员')
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] ON 

GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (1, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 9, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (2, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 53, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (3, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 50, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (4, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 40, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (5, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 3, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (6, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 37, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (7, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 51, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (8, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 59, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (9, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 13, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (10, N'', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 44, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (11, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 24, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (12, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 35, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (13, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 60, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (14, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 58, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (15, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 68, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (16, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 52, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (17, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 65, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (18, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 62, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (19, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 63, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (20, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 54, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (21, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 94, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (22, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 42, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (23, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 34, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (24, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 90, N'超级管理员', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (25, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 67, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (26, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 91, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (27, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 36, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (28, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 77, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (29, N'Search,Delete,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 6, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (30, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 88, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (31, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 61, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (32, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 8, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (33, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 48, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (34, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 74, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (35, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 56, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (36, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 55, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (37, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 32, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (38, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 33, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (39, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 92, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (40, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 89, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (41, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 86, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (42, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 84, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (43, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 29, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (44, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 31, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (45, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 72, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (46, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 66, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (47, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 28, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (48, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 64, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (49, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 5, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (50, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 25, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (51, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 93, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (52, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 85, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (53, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 75, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (54, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 87, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (55, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 57, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (56, N'Search,Export,test', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 49, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (57, N'Search,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 71, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (58, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 2, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (59, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'超级管理员', 73, N'超级管理员', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (60, N'Search', CAST(0x0000AEF3000F99A3 AS DateTime), N'超级管理员', 133, N'超级管理员', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (61, N'Search,Add,Delete,Update,Export', CAST(0x0000AEF3000F99A3 AS DateTime), N'超级管理员', 134, N'超级管理员', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (62, N'Search,Delete', CAST(0x0000AEF3000F99A3 AS DateTime), N'超级管理员', 135, N'超级管理员', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (63, N'Search', CAST(0x0000AEF3000F99A3 AS DateTime), N'超级管理员', 136, N'超级管理员', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (20, NULL, NULL, NULL, NULL, N'角色ID', N'Role_Id', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1420, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (21, NULL, NULL, NULL, NULL, N'父级ID', N'ParentId', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1410, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (22, NULL, NULL, NULL, NULL, N'角色名称', N'RoleName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 100, N'超级管理员', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1400, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (23, NULL, NULL, NULL, NULL, N'部门ID', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1390, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (24, NULL, NULL, NULL, NULL, N'部门名称', N'DeptName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1380, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (25, NULL, NULL, NULL, NULL, N'排序', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1370, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (26, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1360, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (27, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1350, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (28, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1340, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (29, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1330, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (30, NULL, NULL, NULL, NULL, N'', N'DeleteBy', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1320, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (31, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1375, N'', NULL, 1, N'select', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (32, NULL, NULL, NULL, NULL, N'字典ID', N'Dic_ID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (33, NULL, NULL, NULL, NULL, N'字典名称', N'DicName', N'string', 140, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1290, NULL, NULL, 1, N'textarea', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (34, NULL, NULL, NULL, NULL, N'父级ID', N'ParentId', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1280, NULL, NULL, 1, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (35, NULL, NULL, NULL, NULL, N'配置项', N'Config', N'string', 300, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1270, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (36, NULL, NULL, NULL, 8, N'sql语句', N'DbSql', N'string', 200, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1260, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (37, NULL, NULL, NULL, NULL, N'DBServer', N'DBServer', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (38, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1240, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (39, NULL, NULL, NULL, NULL, N'字典编号', N'DicNo', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'超级管理员', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1295, NULL, NULL, 1, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (40, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1220, NULL, NULL, NULL, N'无', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (41, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1210, NULL, NULL, 2, N'select', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (42, NULL, NULL, NULL, NULL, NULL, N'CreateID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (43, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1190, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (44, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1180, NULL, NULL, 2, N'datetime', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (45, NULL, NULL, NULL, NULL, NULL, N'ModifyID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1170, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (46, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1160, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (47, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1150, NULL, NULL, 2, N'datetime', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (48, NULL, NULL, NULL, NULL, N'', N'DicList_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AEC1000A46FB AS DateTime), 1, 1140, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (49, NULL, NULL, NULL, NULL, N'数据源ID', N'Dic_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 1, 4, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1130, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (50, NULL, NULL, NULL, NULL, N'数据源Value', N'DicValue', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1120, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (51, NULL, NULL, NULL, NULL, N'数据源Text', N'DicName', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1110, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (52, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1100, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (53, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'selectList', NULL, 1, 1, NULL, 0, 1, 0, 2000, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1090, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (54, NULL, NULL, NULL, NULL, N'是否可用', N'Enable', N'byte', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'enable', NULL, 1, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1080, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (55, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'无', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1070, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (56, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1060, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (57, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1050, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (58, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1040, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (59, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1030, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (60, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1020, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (61, NULL, NULL, NULL, NULL, NULL, N'Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AED6001BD277 AS DateTime), 1, 10000, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (62, NULL, NULL, NULL, 12, N'日志类型', N'LogType', N'string', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 8888, NULL, NULL, 3, N'checkbox', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (63, NULL, NULL, NULL, NULL, N'请求参数', N'RequestParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (64, NULL, NULL, NULL, NULL, N'响应参数', N'ResponseParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7980, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (65, NULL, NULL, NULL, NULL, N'异常信息', N'ExceptionInfo', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7970, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (66, NULL, NULL, NULL, NULL, N'响应状态', N'Success', N'int', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 8700, NULL, NULL, 2, N'selectList', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (67, NULL, NULL, NULL, NULL, N'开始时间', N'BeginDate', N'DateTime', 140, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 9999, NULL, NULL, 2, N'datetime', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (68, NULL, NULL, NULL, NULL, N'结束时间', N'EndDate', N'DateTime', 150, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (69, NULL, NULL, NULL, NULL, N'时长', N'ElapsedTime', N'int', 60, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 8600, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (70, NULL, NULL, NULL, NULL, N'用户IP', N'UserIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7920, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (71, NULL, NULL, NULL, NULL, N'服务器IP', N'ServiceIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7910, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (72, NULL, NULL, NULL, NULL, N'浏览器类型', N'BrowserType', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7900, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (73, NULL, NULL, NULL, NULL, N'请求地址', N'Url', N'string', 110, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 9000, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (74, NULL, NULL, NULL, NULL, N'用户ID', N'User_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7880, NULL, NULL, NULL, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (75, NULL, NULL, NULL, NULL, N'用户名称', N'UserName', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 9100, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (76, NULL, NULL, NULL, NULL, N'角色ID', N'Role_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AED6001BD27D AS DateTime), 1, 7860, NULL, NULL, 2, N'select', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (77, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'zs', CAST(0x0000ABAE0111CE55 AS DateTime), 3362, 7850, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (78, NULL, NULL, NULL, NULL, N'', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7840, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (79, 0, NULL, 1, NULL, N'部门', N'DeptName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 300, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7830, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (80, 0, 0, 1, NULL, N'角色', N'Role_Id', N'int', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'roles', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7820, N'', NULL, 2, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (81, NULL, NULL, NULL, NULL, N'', N'RoleName', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 0, 0, 300, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7810, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (82, 1, 0, 1, NULL, N'帐号', N'UserName', N'string', 120, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 1, 200, N'zs', CAST(0x0000ABAE0111CE42 AS DateTime), 3362, 7945, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (83, 1, 0, NULL, NULL, N'密码', N'UserPwd', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7790, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (84, NULL, NULL, NULL, NULL, N'真实姓名', N'UserTrueName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 0, 0, 40, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7792, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (85, NULL, NULL, NULL, NULL, N'地址', N'Address', N'string', 190, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7270, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (86, NULL, NULL, NULL, NULL, N'电话', N'Mobile', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 200, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7260, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (87, NULL, NULL, NULL, NULL, N'Email', N'Email', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'mail', NULL, 1, 0, NULL, 0, 1, 0, 200, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7250, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (88, NULL, NULL, NULL, NULL, N'', N'Tel', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 40, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7740, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (89, NULL, NULL, NULL, 12, N'备注', N'Remark', N'string', 180, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 7, N'textarea', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7230, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (90, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7220, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (91, NULL, NULL, NULL, NULL, N'是否可用', N'Enable', N'byte', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'enable', NULL, 4, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7670, N'', NULL, 4, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (92, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7700, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (93, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7690, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (94, NULL, NULL, NULL, NULL, N'注册时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7780, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (95, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7670, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (96, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 1, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7660, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (97, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7650, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (98, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7640, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (99, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7630, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (100, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7620, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (101, NULL, NULL, NULL, NULL, N'最后登陆时间', N'LastLoginDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7610, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (102, NULL, NULL, NULL, NULL, N'最后密码修改时间', N'LastModifyPwdDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7600, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (114, NULL, NULL, NULL, NULL, N'头像', N'HeadImageUrl', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, 9, N'img', NULL, 1, 1, 1, NULL, NULL, 0, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7842, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (429, 1, 0, NULL, NULL, N'手机号', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, NULL, NULL, 0, 22, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7760, N'', NULL, 3, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (431, NULL, NULL, NULL, NULL, N'Token', N'Token', N'string', 180, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 1000, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7810, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (506, NULL, NULL, NULL, NULL, N'性别', N'Gender', N'int', 100, N'', NULL, NULL, NULL, N'gender', NULL, 4, N'select', NULL, 1, 1, NULL, NULL, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE55 AS DateTime), 3362, 7843, N'', NULL, 1, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (654, NULL, NULL, NULL, NULL, N'登陆设备类型', N'AppType', N'int', 150, N'', NULL, NULL, NULL, N'ut', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7809, N'', NULL, 3, N'selectList', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (659, NULL, NULL, NULL, NULL, N'手机用户', N'IsRegregisterPhone', N'int', 120, N'', NULL, NULL, NULL, N'isphone', NULL, 2, N'select', NULL, 1, 0, NULL, NULL, 0, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7771, N'', NULL, 3, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (753, NULL, NULL, NULL, NULL, N'', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (754, NULL, NULL, NULL, NULL, N'表单名称', N'Title', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, 0, 1, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 1000, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 1100, NULL, NULL, 1, N'like', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (755, NULL, NULL, NULL, NULL, N'设计器配置', N'DaraggeOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (756, NULL, NULL, NULL, NULL, N'表单参数', N'FormOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (757, NULL, NULL, NULL, NULL, N'表单配置', N'FormConfig', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (758, NULL, NULL, NULL, NULL, N'表单字段', N'FormFields', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (760, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (761, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (762, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 810, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (763, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (764, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 600, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (765, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AE0D0186211B AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (766, NULL, NULL, NULL, NULL, N'表格配置', N'TableConfig', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0D0186211A AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (767, NULL, NULL, NULL, NULL, N'', N'FormCollectionId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AE0E017B18FE AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (768, NULL, NULL, NULL, NULL, N'表单ID', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (769, NULL, NULL, NULL, NULL, N'标题', N'Title', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 900, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (770, NULL, NULL, NULL, NULL, N'表单数据', N'FormData', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (771, NULL, NULL, NULL, NULL, N'提交时间', N'CreateDate', N'DateTime', 145, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (772, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (773, NULL, NULL, NULL, NULL, N'提交人', N'Creator', N'string', 100, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 810, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (774, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (775, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (776, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AE0E017B18FF AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (777, NULL, NULL, NULL, NULL, N'', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AEF401852542 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (778, NULL, NULL, NULL, NULL, N'流程名称', N'WorkName', N'string', 140, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 1150, NULL, NULL, 1, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (779, NULL, NULL, NULL, NULL, N'表名', N'WorkTable', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 1100, NULL, NULL, 1, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (780, NULL, NULL, NULL, NULL, N'功能菜单', N'WorkTableName', N'string', 120, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (781, NULL, NULL, NULL, NULL, N'节点信息', N'NodeConfig', N'string', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (782, NULL, NULL, NULL, NULL, N'连接配置', N'LineConfig', N'string', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (783, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 130, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (784, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 740, NULL, NULL, 1, N'datetime', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (785, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (786, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 750, NULL, NULL, NULL, N'', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (787, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', N'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 1010, NULL, NULL, 1, N'select', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (788, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (789, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 160, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 600, NULL, NULL, NULL, N'datetime', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (790, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEF401852546 AS DateTime), 1, 660, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (809, NULL, NULL, NULL, NULL, N'', N'WorkStepFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (810, NULL, NULL, NULL, NULL, N'流程主表id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (811, NULL, NULL, NULL, NULL, N'流程节点Id', N'StepId', N'string', 120, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (812, NULL, NULL, NULL, NULL, N'节点名称', N'StepName', N'string', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (813, NULL, NULL, NULL, NULL, N'节点类型(1=按用户审批,2=按角色审批)', N'StepType', N'int', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (814, NULL, NULL, NULL, NULL, N'审批用户id或角色id', N'StepValue', N'int', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (815, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 220, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (816, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (817, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (818, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (819, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (820, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (821, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (822, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (823, NULL, NULL, NULL, NULL, N'审批顺序', N'OrderId', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE40003CEAF AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (824, NULL, NULL, NULL, NULL, N'', N'WorkFlowTable_Id', N'guid', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AEE4001990AE AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (825, NULL, NULL, NULL, NULL, N'流程id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (826, NULL, NULL, NULL, NULL, N'流程名称', N'WorkName', N'string', 180, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 1150, NULL, 2, 1, N'like', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (827, NULL, NULL, NULL, NULL, N'表主键id', N'WorkTableKey', N'string', 180, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (828, NULL, NULL, NULL, NULL, N'表名', N'WorkTable', N'string', 180, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (829, NULL, NULL, NULL, NULL, N'业务名称', N'WorkTableName', N'string', 180, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 1000, NULL, 3, 1, N'like', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (830, NULL, NULL, NULL, NULL, N'当前审批节点', N'CurrentOrderId', N'int', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (831, NULL, NULL, NULL, NULL, N'审批状态', N'AuditStatus', N'int', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', N'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 900, NULL, 1, 1, N'select', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (832, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 850, NULL, 4, 1, N'datetime', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (833, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (834, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 100, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 860, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (835, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (836, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (837, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (838, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4001990B3 AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (839, NULL, NULL, NULL, NULL, N'', N'Sys_WorkFlowTableStep_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'超级管理员', CAST(0x0000AEE4002719AA AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (840, NULL, NULL, NULL, NULL, N'主表id', N'WorkFlowTable_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (841, NULL, NULL, NULL, NULL, N'流程id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (842, NULL, NULL, NULL, NULL, N'节点id', N'StepId', N'string', 120, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (843, NULL, NULL, NULL, NULL, N'节名称', N'StepName', N'string', 180, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (844, NULL, NULL, NULL, NULL, N'审批类型', N'StepType', N'int', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (845, NULL, NULL, NULL, NULL, N'节点类型(1=按用户审批,2=按角色审批)', N'StepValue', N'int', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (846, NULL, NULL, NULL, NULL, N'审批顺序', N'OrderId', N'int', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (847, NULL, NULL, NULL, NULL, N'', N'Remark', N'string', 220, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (848, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (849, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (850, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (851, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (852, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (853, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (854, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (855, NULL, NULL, NULL, NULL, N'审核人id', N'AuditId', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (856, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (857, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (858, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AEE4002719AB AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] ON 

GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (2, N'角色管理', N'角色管理', NULL, NULL, NULL, NULL, NULL, 0, N'RoleName', N'System', N'VOL.System', NULL, 8, NULL, NULL, N'Sys_Role', N'Sys_Role', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (3, N'字典数据', N'字典数据', NULL, NULL, N'字典明细', N'Sys_DictionaryList', NULL, 0, N'DicName', N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_Dictionary', N'Sys_Dictionary', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (4, N'字典明细', N'字典明细', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_DictionaryList', N'Sys_DictionaryList', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (5, N'系统日志', N'系统日志', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 10, NULL, NULL, N'Sys_Log', N'Sys_Log', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (6, NULL, N'用户管理', NULL, NULL, NULL, NULL, NULL, 0, N'UserName', N'System', N'VOL.System', NULL, 8, NULL, N'', N'Sys_User', N'Sys_User', N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (8, N'用户基础信息', N'用户基础信息', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', 200, 0, NULL, NULL, N'无', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (10, N'日志管理', N'日志管理', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'170', N'日志管理', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (11, N'配置管理', N'配置管理', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'250', N'配置管理', N'配置管理', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (81, N'表单设计', N'表单设计', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'form', N'VOL.System', NULL, 0, NULL, NULL, N'0', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (82, N'表单设计', N'表单设计', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormDesignOptions', N'FormDesignOptions', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (83, N'数据采集', N'数据采集', NULL, NULL, NULL, N'', NULL, 1, NULL, N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormCollectionObject', N'FormCollectionObject', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (84, N'审批流程', N'审批流程', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'flow', N'VOL.System', NULL, 0, NULL, NULL, N'审批流程', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (85, N'审批流程', N'审批流程配置', NULL, NULL, N'审批步骤', N'Sys_WorkFlowStep', NULL, 1, N'WorkName', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlow', N'Sys_WorkFlow', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (87, N'审批节点', N'审批节点配置', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowStep', N'Sys_WorkFlowStep', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (88, N'审批流程', N'审批流程', NULL, NULL, N'审批节点', N'Sys_WorkFlowTableStep', NULL, 1, N'', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowTable', N'Sys_WorkFlowTable', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (89, N'审批节点', N'审批节点', NULL, NULL, NULL, NULL, NULL, 1, N'', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowTableStep', N'Sys_WorkFlowTableStep', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (1, N'北京市西城区', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'超级管理员', CAST(0x0000A06C00B808E4 AS DateTime), NULL, NULL, NULL, 0, N'283591387@qq.com', 1, 1, N'Upload/Tables/Sys_User/202004271001535915/04.jpg', 0, CAST(0x0000A7DD00A47F54 AS DateTime), CAST(0x0000AB2300FB2443 AS DateTime), NULL, N'超级管理员', CAST(0x0000ABAA00A563D8 AS DateTime), 1, 0, 1, N'超级管理员', N'13888888888', N'~还没想好...', NULL, N'admin', N'j79rYYvCz4vdhcboB1Ausg==', N'超级管理员', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY2MDc1MDU0NSIsIm5iZiI6IjE2NjA3NTA1NDUiLCJleHAiOiIxNjYwNzU3NzQ1IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.5LsWk8q595kTmuUEhp32PUCoXAaCK7K34AddyJ2P0nk')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3362, N'北京市还没注册', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'超级管理员', CAST(0x0000AAA800ED6DA4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'Upload/Tables/Sys_User/201912141113355553/07.jpg', 1, NULL, CAST(0x0000AAD0017C018A AS DateTime), N'01012345678', N'zs', CAST(0x0000ABAE0111EBD4 AS DateTime), 3362, NULL, 2, N'测试管理员', NULL, N'null', NULL, N'admin666', N'j79rYYvCz4vdhcboB1Ausg==', N'zs', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTY2MDU4MjUwOSIsIm5iZiI6IjE2NjA1ODI1MDkiLCJleHAiOiIxNjYwNTg5NzA5IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.PyUmKIhxaosckIpVFxo5HkanvhO_bVKr7b1jlyeu4jU')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3366, NULL, 1, NULL, NULL, NULL, CAST(0x0000AB100108B154 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, N'Upload/Tables/Sys_User/201912082213149562/head1.jpg', 0, NULL, NULL, NULL, N'超级管理员', CAST(0x0000AB9300D1211C AS DateTime), 1, NULL, 15, N'测试3', NULL, NULL, NULL, N'test123', N'1nC8gJ2R7slXiotmNrLCEA==', N'test123', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzY2IiwiaWF0IjoiMTU3NDY2OTAzMyIsIm5iZiI6IjE1NzQ2NjkwMzMiLCJleHAiOiIxNTc0Njc2MjMzIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.MZFrEsYLMy5zH4ZfXUz_wwr62hJkeQsX7CJyg_x_fxg')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3367, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011D8688 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, N'测试2', NULL, N'1', NULL, N'user2', N'aPuAteBy8iDwlNvTNPGqzA==', N'角色帐号2', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3368, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011DD50C AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE01111FEC AS DateTime), 3362, NULL, 2, N'测试管理员', NULL, NULL, NULL, N'user2_1', N'FVUjlxZXEhBaFk1425xDSw==', N'角色帐号2_1', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3369, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011ECFD4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE0158FE5C AS DateTime), 3362, NULL, 13, N'测试1', NULL, NULL, NULL, N'user1_1', N'LwCgs8V3buuNG1Tmsoa2Ow==', N'测试帐号1_1', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3380, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABAE0113B02C AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'超级管理员', CAST(0x0000ABAE01573C5C AS DateTime), 1, NULL, 1, N'超级管理员', NULL, NULL, NULL, N'1231', N'Z~PIbBMR_qYqiN5dnp6zHg==', N'31', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (4378, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABAE01590B40 AS DateTime), 3362, N'zs', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE015C48F0 AS DateTime), 3362, NULL, 4, N'信息员', NULL, NULL, NULL, N'111', N'BshtCHSBJ_JxFWc9KnNOXw==', N'11', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (4379, NULL, NULL, NULL, NULL, NULL, CAST(0x0000AE760000FD20 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, N'Upload/Tables/Sys_User/202204130003297714/1.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, N'测试管理员', NULL, NULL, NULL, N'111321', N'Pn4QvfjO7kMOLilcxrL3UA==', N'11', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (4380, NULL, NULL, NULL, NULL, NULL, CAST(0x0000AE7600041550 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, 1, 0, N'Upload/Tables/Sys_User/202204130014502760/2.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, N'测试管理员', NULL, NULL, NULL, N'888', N'0ZLXplzVXO2xJ90VaJ~U7g==', N'8888', NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
GO
INSERT [dbo].[Sys_WorkFlow] ([WorkFlow_Id], [WorkName], [WorkTable], [WorkTableName], [NodeConfig], [LineConfig], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'1231', N'SellOrder', N'销售订单', N'[{"id":"1659276275052","name":"流程C-节点A","type":"task","left":"271px","top":"39px","ico":"el-icon-user-solid","nodeType":1,"userId":1,"roleId":null,"state":"success","deptId":null,"stepValue":null},{"id":"7jvvv0d8t","name":"添加节点","type":"timer","left":"262px","top":"166px","ico":"el-icon-plus","state":"success","nodeType":2,"userId":1,"roleId":2,"deptId":null,"stepValue":null}]', N'[{"from":"1659276275052","to":"7jvvv0d8t"}]', NULL, CAST(0x0000AEF20051301F AS DateTime), 1, N'超级管理员', 0, N'超级管理员', CAST(0x0000AEF300173EE0 AS DateTime), 1)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'5641dce8-86aa-44a6-b4b4-01701c3aa23f', N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'7jvvv0d8t', N'添加节点', 2, 2, 2, NULL, CAST(0x0000AEF3000E1590 AS DateTime), 1, N'超级管理员', NULL, N'超级管理员', CAST(0x0000AEF300173EE0 AS DateTime), 1)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'892741a8-8c19-4531-5f3d-08da7e365d56', N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'1659276275052', N'流程C-节点A', 1, 1, 1, NULL, CAST(0x0000AEF200513022 AS DateTime), 1, N'超级管理员', NULL, N'超级管理员', CAST(0x0000AEF300173EE0 AS DateTime), 1)
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'8d0d281f-04f7-4777-9dff-09488c9d42a1', N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'1231', N'3300ce52-deef-4907-bd7d-b3561068ef1a', N'SellOrder', N'销售订单', 2, 1, CAST(0x0000AEF3001BECAD AS DateTime), 1, N'超级管理员', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'8242c4d1-3a33-4c38-a680-0597f7066087', N'8d0d281f-04f7-4777-9dff-09488c9d42a1', N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'1659276275052', N'流程C-节点A', 1, 1, 1, 1, N'超级管理员', 1, CAST(0x0000AEF3001C1E79 AS DateTime), N'777777777777', CAST(0x0000AEF3001BECAE AS DateTime), NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'c42f20a6-d4bd-443d-bcc3-4bbcde67554d', N'8d0d281f-04f7-4777-9dff-09488c9d42a1', N'4fd46a7f-0946-424c-81d8-d6dfa0772a5e', N'7jvvv0d8t', N'添加节点', 2, 2, 2, 3362, N'zs', 1, CAST(0x0000AEF3001D7598 AS DateTime), N'7777777', CAST(0x0000AEF3001BECAE AS DateTime), NULL, NULL, 1, NULL, NULL, NULL)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkTableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'NodeConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'LineConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程主表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'WorkFlow_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点类型(1=按用户审批,2=按角色审批)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批用户id或角色id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTableKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'AuditId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
USE [master]
GO
ALTER DATABASE [netcoredev] SET  READ_WRITE 
GO
