USE [MBGSPMainDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonActivityLogs]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonActivityLogs](
	[activity_logs_id] [int] IDENTITY(1,1) NOT NULL,
	[action_type] [varchar](100) NULL,
	[module] [varchar](100) NULL,
	[moduleid] [int] NULL,
	[timestamp] [datetime] NULL,
	[username] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_logs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonAnnouncement]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonAnnouncement](
	[announcement_id] [int] IDENTITY(1,1) NOT NULL,
	[announcementid]  AS ('ANNOUNCEMENT-'+right('0'+CONVERT([varchar](20),[announcement_id]),(2))) PERSISTED,
	[title] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[username] [varchar](100) NULL,
	[datestamp] [datetime] NULL,
	[is_Active] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonArea]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NOT NULL,
	[AreaCode] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[FirstApproverFullname] [varchar](max) NULL,
	[SecondApproverFullname] [varchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteFlag] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonAreaApprovers]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonAreaApprovers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaID] [int] NULL,
	[FirstApproverEmployeeID] [varchar](max) NULL,
	[FirstApproverUsername] [varchar](max) NULL,
	[FirstApproverFullname] [varchar](max) NULL,
	[SecondApproverEmployeeID] [varchar](max) NULL,
	[SecondApproverUsername] [varchar](max) NULL,
	[SecondApproverFullname] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonAreaID_Info]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonAreaID_Info](
	[AreaId] [int] NOT NULL,
	[AreaCode] [nvarchar](5) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[isActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonEmployeeAdditionalDetails]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonEmployeeAdditionalDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](max) NOT NULL,
	[ProvincialAdd_LotBlockHouseNoStreet] [varchar](max) NULL,
	[ProvincialAdd_SubdivisionVillageZone] [varchar](max) NULL,
	[ProvincialAdd_Barangay] [varchar](max) NULL,
	[ProvincialAdd_Municipality] [varchar](max) NULL,
	[ProvincialAdd_Province] [varchar](max) NULL,
	[ProvincialAdd_ZipCode] [varchar](max) NULL,
	[Undergraduate_School] [varchar](max) NULL,
	[Course] [varchar](max) NULL,
	[Postgraduate_School] [varchar](max) NULL,
	[Masteral_Degree] [varchar](max) NULL,
	[Passport_Number] [varchar](max) NULL,
	[Passport_Validity] [date] NULL,
	[Passport_File] [varchar](max) NULL,
	[EmergencyFirstName] [varchar](max) NULL,
	[EmergencyLastName] [varchar](max) NULL,
	[EmergencyMobilePhone] [varchar](max) NULL,
	[EmergencyRelation] [varchar](max) NULL,
	[EmergencyPermanentAddress] [varchar](max) NULL,
	[Additional_Language] [varchar](max) NULL,
	[Additional_Skills] [varchar](max) NULL,
	[Language_Level] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonEmployeePhoto]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonEmployeePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](max) NOT NULL,
	[Path] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonEmployeesActive]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonEmployeesActive](
	[ID] [int] NULL,
	[Employee_ID] [varchar](100) NOT NULL,
	[UserID] [varchar](100) NULL,
	[Prefix] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[FullName] [varchar](100) NULL,
	[Birthday] [varchar](100) NULL,
	[BirthPlace] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Marital_Status] [varchar](100) NULL,
	[Phone_number] [varchar](100) NULL,
	[BusinessP_number] [varchar](100) NULL,
	[Email_Address] [varchar](100) NULL,
	[Home_Address1] [varchar](100) NULL,
	[Home_Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[Postal_ID] [varchar](100) NULL,
	[Action_Detail] [varchar](100) NULL,
	[Action_Reason] [varchar](100) NULL,
	[Employee_Status] [varchar](100) NULL,
	[Reg_Status] [varchar](100) NULL,
	[Datehired] [varchar](100) NULL,
	[EffctDate] [varchar](100) NULL,
	[JobCode] [varchar](100) NULL,
	[Job_Level] [varchar](100) NULL,
	[Department] [varchar](100) NULL,
	[Department_id] [varchar](100) NULL,
	[Department_CostCenter] [varchar](100) NULL,
	[Department_CostCenterID] [varchar](100) NULL,
	[Direct_SuperiorID] [varchar](100) NULL,
	[Direct_Superior] [varchar](100) NULL,
	[Site_Location] [varchar](100) NULL,
	[Site_LocationCode] [varchar](100) NULL,
	[IsFulltime] [varchar](100) NULL,
	[LastModify] [datetime] NULL,
	[SysModify] [datetime] NULL,
	[NewAddress] [varchar](100) NULL,
	[NewPhoneNumber] [varchar](100) NULL,
	[Shifts] [varchar](100) NULL,
	[AreaID] [varchar](100) NULL,
	[NewAddress2] [varchar](100) NULL,
	[NewCity] [varchar](100) NULL,
	[NewPostal] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonEmployeeTravelDataVisa]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonEmployeeTravelDataVisa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](max) NOT NULL,
	[Visa_Number] [varchar](max) NULL,
	[Visa_Country] [varchar](max) NULL,
	[Visa_Category] [varchar](max) NULL,
	[Visa_Validity] [varchar](max) NULL,
	[Visa_NoOfEntries] [varchar](max) NULL,
	[Visa_File] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonEmployer]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonEmployer](
	[EmployerId] [int] IDENTITY(1,1) NOT NULL,
	[EmployerName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.CommonEmployer] PRIMARY KEY CLUSTERED 
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonGeneratedTokenLogs]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonGeneratedTokenLogs](
	[Logs_id] [int] IDENTITY(1,1) NOT NULL,
	[Access_By] [varchar](100) NULL,
	[UserGenerated] [varchar](100) NULL,
	[Datestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Logs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonHoliday]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonHoliday](
	[HolidayId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[LocationId] [int] NOT NULL,
	[IsRegular] [bit] NOT NULL,
	[Description] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.CommonHoliday] PRIMARY KEY CLUSTERED 
(
	[HolidayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonPreference]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonPreference](
	[sr_preference_id] [int] IDENTITY(1,1) NOT NULL,
	[theme] [int] NULL,
	[buildingid] [int] NULL,
	[floorid] [int] NULL,
	[zoneid] [int] NULL,
	[user_telecommuting] [int] NULL,
	[username] [varchar](100) NULL,
	[fixedseat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sr_preference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonShift]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonShift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShiftId] [int] NOT NULL,
	[ShiftCode] [nvarchar](5) NOT NULL,
	[ShiftName] [nvarchar](50) NOT NULL,
	[TimeIn] [datetime] NOT NULL,
	[TimeOut] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteFlag] [bit] NOT NULL,
	[GracePeriod] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonUserAttachment]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserAttachment](
	[user_userattachment_id] [int] IDENTITY(1,1) NOT NULL,
	[userattachmentid]  AS ('ATTCHMNT'+right('0'+CONVERT([varchar](20),[user_userattachment_id]),(2))) PERSISTED,
	[attachment_type] [varchar](100) NULL,
	[attachment_path] [varchar](max) NULL,
	[request_type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_userattachment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonUserLILO]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserLILO](
	[user_lilo_id] [int] IDENTITY(1,1) NOT NULL,
	[userliloid]  AS ('LILO'+right('0'+CONVERT([varchar](20),[user_lilo_id]),(2))) PERSISTED,
	[no_time_log] [int] NULL,
	[manual_log_in] [datetime] NULL,
	[manual_log_out] [datetime] NULL,
	[reason] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_lilo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonUserOvertime]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserOvertime](
	[user_overtime_id] [int] IDENTITY(1,1) NOT NULL,
	[userovertimeid]  AS ('OT'+right('0'+CONVERT([varchar](20),[user_overtime_id]),(2))) PERSISTED,
	[date_overtime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_overtime_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonUserRequests]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserRequests](
	[user_requests_id] [int] IDENTITY(1,1) NOT NULL,
	[userrequestsid]  AS ('REQ'+right('0'+CONVERT([varchar](20),[user_requests_id]),(2))) PERSISTED,
	[date_created] [datetime] NULL,
	[employee_id] [varchar](max) NULL,
	[request_type] [int] NULL,
	[module_id] [int] NULL,
	[user_userattachment_id] [int] NULL,
	[is_delete] [int] NULL,
	[is_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_requests_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonUserRoles]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserRoles](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Roles] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonUserTimeKeeping]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonUserTimeKeeping](
	[NO_TIME_LOG] [int] IDENTITY(1,1) NOT NULL,
	[NO_EMPLOYEE_ID] [varchar](max) NOT NULL,
	[TIME_IN_LOG_DATE] [varchar](max) NULL,
	[TIME_IN] [datetime] NULL,
	[TIME_IN_MANUAL] [varchar](max) NULL,
	[TIME_OUT_LOG_DATE] [varchar](max) NULL,
	[TIME_OUT] [datetime] NULL,
	[TIME_OUT_MANUAL] [varchar](max) NULL,
	[NO_SITE] [int] NOT NULL,
	[NO_AREA] [int] NOT NULL,
	[NO_DEPARTMENT] [int] NULL,
	[BIT_DELETED] [bit] NOT NULL CONSTRAINT [DF_CommonUserTimeKeeping_BIT_DELETED]  DEFAULT ((0)),
	[BIT_UPDATE] [bit] NOT NULL CONSTRAINT [DF_CommonUserTimeKeeping_BIT_UPDATE]  DEFAULT ((0)),
	[BIT_SHIFT] [int] NULL,
	[BIT_REMARKS] [bit] NOT NULL CONSTRAINT [DF__TblTimeLo__BIT_R__3E082B48]  DEFAULT ((0)),
	[REMARKS_TIME_LOG] [varchar](max) NULL,
	[USER_MOD] [varchar](max) NULL,
	[DATE_MOD] [datetime] NULL,
 CONSTRAINT [PK_CommonUserTimeKeeping] PRIMARY KEY CLUSTERED 
(
	[NO_TIME_LOG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRWT_RawDataFromTextFile]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRWT_RawDataFromTextFile](
	[NO_ID] [int] IDENTITY(1,1) NOT NULL,
	[H] [nvarchar](max) NOT NULL,
	[EMPLID] [nvarchar](max) NOT NULL,
	[EFFDT] [nvarchar](max) NULL,
	[DC_ACTION_DESCR] [nvarchar](max) NULL,
	[DC_ACTN_REASON_DL] [nvarchar](max) NULL,
	[NAME_PREFIX] [nvarchar](max) NULL,
	[LAST_NAME] [nvarchar](max) NULL,
	[FIRST_NAME] [nvarchar](max) NULL,
	[MIDDLE_NAME] [nvarchar](max) NULL,
	[DC_HOME_COUNTRY] [nvarchar](max) NULL,
	[DC_HOME_ADDRESS1] [nvarchar](max) NULL,
	[DC_HOME_ADDRESS2] [nvarchar](max) NULL,
	[DC_HOME_CITY] [nvarchar](max) NULL,
	[DC_HOME_STATE] [nvarchar](max) NULL,
	[DC_HOME_POSTAL] [nvarchar](max) NULL,
	[DC_BUSN_PHONE] [nvarchar](max) NULL,
	[DC_HOME_PHONE] [nvarchar](max) NULL,
	[PER_ORG] [nvarchar](max) NULL,
	[DC_SEX_TL] [nvarchar](max) NULL,
	[BIRTHDATE] [nvarchar](max) NULL,
	[BIRTHPLACE] [nvarchar](max) NULL,
	[DC_MAR_STATUS_TL] [nvarchar](max) NULL,
	[DC_EMPL_STATUS_TL] [nvarchar](max) NULL,
	[DC_DEPTID_DL] [nvarchar](max) NULL,
	[SUPERVISOR_ID] [nvarchar](max) NULL,
	[SUPERVISOR_NAME] [nvarchar](max) NULL,
	[DC_DEPTID_DS] [nvarchar](max) NULL,
	[DC_COST_CENTR_ID] [nvarchar](max) NULL,
	[DC_COST_CENTR_DL] [nvarchar](max) NULL,
	[LOCATION] [nvarchar](max) NULL,
	[DC_LOCATION_DL] [nvarchar](max) NULL,
	[DC_REG_TEMP_TL] [nvarchar](max) NULL,
	[DC_FULLPARTTIME_TL] [nvarchar](max) NULL,
	[LAST_HIRE_DT] [nvarchar](max) NULL,
	[OPRID] [nvarchar](max) NULL,
	[EMAIL_ADDR] [nvarchar](max) NULL,
	[JOBCODE] [nvarchar](max) NULL,
	[DC_EXECTVELVL_ID] [nvarchar](max) NULL,
	[BIT_DELETED] [bit] NOT NULL CONSTRAINT [DF_HRWT_RawDataFromTextFile_BIT_DELETED]  DEFAULT ((0)),
	[USER_MOD] [varchar](max) NULL,
	[DATE_MOD] [datetime] NULL,
 CONSTRAINT [PK_HRWT_RawDataFromTextFile] PRIMARY KEY CLUSTERED 
(
	[NO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRBuilding]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRBuilding](
	[building_id] [int] IDENTITY(1,1) NOT NULL,
	[buildingid]  AS ('BUILD'+right('00'+CONVERT([varchar](20),[building_id]),(2))) PERSISTED,
	[building_name] [varchar](100) NULL,
	[is_Active] [int] NULL,
	[location_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[building_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRFloor]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRFloor](
	[floor_id] [int] IDENTITY(1,1) NOT NULL,
	[floorid]  AS ('FLOOR'+right('00'+CONVERT([varchar](20),[floor_id]),(2))) PERSISTED,
	[floor_name] [varchar](100) NULL,
	[is_Active] [int] NULL,
	[building_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[floor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRLocation]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRLocation](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[locationid]  AS ('LOC'+right('00'+CONVERT([varchar](20),[location_id]),(2))) PERSISTED,
	[location_name] [varchar](100) NULL,
	[is_Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRReservation]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRReservation](
	[seatreservationid] [int] IDENTITY(1,1) NOT NULL,
	[seat_reservation_id]  AS ('RSV-'+right('0'+CONVERT([varchar](20),[seatreservationid]),(7))) PERSISTED,
	[seat_reservation_datetime_from] [datetime] NULL,
	[seat_reservation_datetime_to] [datetime] NULL,
	[seat_reservation_check_in] [datetime] NULL,
	[seat_reservation_check_out] [datetime] NULL,
	[seat_reservation_status] [int] NULL,
	[seat_reservation_isActive] [int] NULL,
	[seatid] [int] NULL,
	[username] [varchar](100) NULL,
	[datestamp] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRRoles]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRRoles](
	[seatrroles_id] [int] IDENTITY(1,1) NOT NULL,
	[seatrrolesid]  AS ('SeatR-'+right('0'+CONVERT([varchar](20),[seatrroles_id]),(2))) PERSISTED,
	[rolename] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRSeat]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRSeat](
	[seat_id] [int] IDENTITY(1,1) NOT NULL,
	[seat_number] [nvarchar](50) NULL,
	[seat_image] [nvarchar](100) NULL,
	[inclusion] [varchar](500) NULL,
	[location_id] [int] NULL,
	[building_id] [int] NULL,
	[floor_id] [int] NULL,
	[zone_id] [int] NULL,
	[is_Active] [int] NULL,
	[is_Special] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[seat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRZone]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRZone](
	[zone_id] [int] IDENTITY(1,1) NOT NULL,
	[zoneid]  AS ('ZONE'+right('00'+CONVERT([varchar](20),[zone_id]),(2))) PERSISTED,
	[zone_name] [varchar](50) NULL,
	[floor_id] [int] NULL,
	[is_Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[zone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVDash__EFMigrationsHistory]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TVDash__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_TVDash__EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TVDash_CommonUser]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_CommonUser](
	[User_id] [int] NOT NULL,
	[Username] [varchar](100) NULL,
	[Roles] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVDash_Floor]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_Floor](
	[floor_id] [int] NOT NULL,
	[floorid] [varchar](100) NULL,
	[floor_name] [varchar](100) NULL,
	[is_Active] [int] NULL,
	[building_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[floor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVDash_Images]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TVDash_Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Floor] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_TVDash_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TVDash_Roles]    Script Date: 4/27/2023 2:47:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_Roles](
	[tvroles_id] [int] NOT NULL,
	[tvrolesid] [varchar](100) NULL,
	[rolename] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[tvroles_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
