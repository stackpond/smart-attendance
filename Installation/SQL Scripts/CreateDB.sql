USE [Testing]
GO
/****** Object:  User [sadbo]    Script Date: 05/31/2012 14:02:40 ******/
CREATE USER [sadbo] FOR LOGIN [sadbo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ParentID] [int] NULL,
	[TypeID] [tinyint] NOT NULL,
 CONSTRAINT [PK_BusinessEntities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceExceptionTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_EmployeeAttendanceExceptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmployeeAttendanceExceptions] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DesignationTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_DesignationTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DepartmentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_DepartmentTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveTypes]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_EmployeeLeaveTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_LeaveTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTypes]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_EmployeeTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmployeeTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftExceptionTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_BusinessEntityShiftExceptionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_BusinessEntityShiftExceptionTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_EmployeeTasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_EmployeeRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Unique_EmployeeRoleTypeNames] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ProfileTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ProfileTypes] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfileFields]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileFields](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ProfileID] [int] NOT NULL,
 CONSTRAINT [PK_ProfileFields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Unique_ProfileFieldLabel_ProfileTypeID] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[ProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[PunchInStartTime] [datetime] NOT NULL,
	[PunchInEndTime] [datetime] NOT NULL,
	[PunchOutStartTime] [datetime] NOT NULL,
	[PunchOutEndTime] [datetime] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEntityShifts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_BusinessEntityShifts] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[BusinessEntityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleTasks]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[TaskID] [bigint] NOT NULL,
 CONSTRAINT [PK_EmployeeRoleTaskPermissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmployeeRoleTaskPermissions] UNIQUE NONCLUSTERED 
(
	[RoleID] ASC,
	[TaskID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holidays]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holidays](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEntityHolidays] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Holidays] UNIQUE NONCLUSTERED 
(
	[BusinessEntityID] ASC,
	[Name] ASC,
	[Start] ASC,
	[End] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Gender] [bit] NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[JoiningDate] [datetime] NOT NULL,
	[LeavingDate] [datetime] NULL,
	[PreviousID] [bigint] NULL,
	[EmployeeTypeID] [int] NOT NULL,
	[ManagerID] [bigint] NULL,
	[BusinessEntityID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[DesignationID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Employees] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[CountBusinessUnits]    Script Date: 05/31/2012 14:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CountBusinessUnits] ()
RETURNS int
AS
BEGIN
	DECLARE @totalCount int;
	SELECT @totalCount = (SELECT COUNT(*) FROM BusinessEntities WHERE ParentID IS NULL)
	RETURN @totalCount;
END
GO
/****** Object:  Table [dbo].[Devices]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[IPAddress] [nvarchar](200) NOT NULL,
	[SubnetMask] [nvarchar](200) NOT NULL,
	[GatewayIP] [nvarchar](200) NOT NULL,
	[MACAddress] [nvarchar](200) NOT NULL,
	[Direction] [bit] NULL,
	[BusinessEntityID] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEntityDevices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_BusinessEntityDevices] UNIQUE NONCLUSTERED 
(
	[IPAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Devices] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[BusinessEntityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceLogs]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceLogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Data] [datetime] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[EmployeeCode] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DeviceLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceFPs]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceFPs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Data] [nvarchar](200) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[EmployeeCode] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_FingerPrints] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_FingerPrints] UNIQUE NONCLUSTERED 
(
	[DeviceID] ASC,
	[EmployeeCode] ASC,
	[Data] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityContactDetails]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityContactDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NULL,
	[ProfileFieldID] [bigint] NOT NULL,
	[ProfileFieldValue] [nvarchar](200) NULL,
 CONSTRAINT [PK_BusinessEntityContactDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceExceptions]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceExceptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[Remarks] [nvarchar](200) NOT NULL,
	[Approved] [bit] NULL,
	[EmployeeID] [bigint] NOT NULL,
	[AttendanceExceptionTypeID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeAttendanceExceptions_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_AttendanceExceptions] UNIQUE NONCLUSTERED 
(
	[EmployeeID] ASC,
	[Start] ASC,
	[End] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeContactDetails]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeContactDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [bigint] NOT NULL,
	[ProfileFieldID] [bigint] NOT NULL,
	[ProfileFieldValue] [nvarchar](200) NULL,
 CONSTRAINT [PK_EmployeeContactDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](200) NULL,
	[EmployeeID] [bigint] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeLogins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmployeeLogins] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmployeeLogins_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeShiftAssignments]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeShiftAssignments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[EmployeeID] [bigint] NOT NULL,
	[ShiftID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeShiftAssignments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leaves]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leaves](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[Approved] [bit] NULL,
	[EmployeeID] [bigint] NOT NULL,
	[LeaveTypeID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeLeaves] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftExceptions]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftExceptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[WeekDay] [nvarchar](50) NULL,
	[ShiftID] [int] NOT NULL,
	[ShiftExceptionTypeID] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEntityShiftExceptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[LoginView]    Script Date: 05/31/2012 14:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[LoginView]
AS
SELECT     dbo.Logins.ID, dbo.Logins.Name, dbo.Logins.Password, dbo.Logins.EmployeeID, dbo.Employees.BusinessEntityID
FROM         dbo.BusinessEntities INNER JOIN
                      dbo.Employees ON dbo.BusinessEntities.ID = dbo.Employees.BusinessEntityID INNER JOIN
                      dbo.Logins ON dbo.Employees.ID = dbo.Logins.EmployeeID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BusinessEntities"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 99
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Employees"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 224
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Logins"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 114
               Right = 577
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LoginView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LoginView'
GO
/****** Object:  UserDefinedFunction [dbo].[IsAdminInitialized]    Script Date: 05/31/2012 14:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsAdminInitialized] ()
RETURNS int
AS
BEGIN
	DECLARE @totalCount int;
	SELECT @totalCount = (SELECT COUNT(*) FROM Logins WHERE Logins.RoleID = (SELECT Roles.ID FROM Roles WHERE Roles.Name = 'Administrator'));
	RETURN @totalCount;
END
GO
/****** Object:  Check [CK_EmployeeAttendanceExceptions]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[AttendanceExceptions]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeAttendanceExceptions] CHECK  (([End]>[Start]))
GO
ALTER TABLE [dbo].[AttendanceExceptions] CHECK CONSTRAINT [CK_EmployeeAttendanceExceptions]
GO
/****** Object:  Check [CK_AttendanceExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[AttendanceExceptionTypes]  WITH CHECK ADD  CONSTRAINT [CK_AttendanceExceptionTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[AttendanceExceptionTypes] CHECK CONSTRAINT [CK_AttendanceExceptionTypes]
GO
/****** Object:  Check [CK_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[BusinessEntities]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntities] CHECK  (([TypeID]>(0)))
GO
ALTER TABLE [dbo].[BusinessEntities] CHECK CONSTRAINT [CK_BusinessEntities]
GO
/****** Object:  Check [CK_BusinessEntities_1]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[BusinessEntities]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntities_1] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[BusinessEntities] CHECK CONSTRAINT [CK_BusinessEntities_1]
GO
/****** Object:  Check [CK_DepartmentTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK_DepartmentTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK_DepartmentTypes]
GO
/****** Object:  Check [CK_DesignationTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Designations]  WITH CHECK ADD  CONSTRAINT [CK_DesignationTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Designations] CHECK CONSTRAINT [CK_DesignationTypes]
GO
/****** Object:  Check [CK_Devices]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [CK_Devices] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [CK_Devices]
GO
/****** Object:  Check [CK_Devices_1]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [CK_Devices_1] CHECK  (([IPAddress]<>''))
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [CK_Devices_1]
GO
/****** Object:  Check [CK_Devices_2]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [CK_Devices_2] CHECK  (([SubnetMask]<>''))
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [CK_Devices_2]
GO
/****** Object:  Check [CK_Devices_3]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [CK_Devices_3] CHECK  (([GatewayIP]<>''))
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [CK_Devices_3]
GO
/****** Object:  Check [CK_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [CK_Employees] CHECK  (([Code]<>''))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CK_Employees]
GO
/****** Object:  Check [CK_Employees_1]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [CK_Employees_1] CHECK  (([FirstName]<>''))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CK_Employees_1]
GO
/****** Object:  Check [CK_EmployeeShiftAssignments]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeShiftAssignments]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeShiftAssignments] CHECK  (([EndDate]>[StartDate]))
GO
ALTER TABLE [dbo].[EmployeeShiftAssignments] CHECK CONSTRAINT [CK_EmployeeShiftAssignments]
GO
/****** Object:  Check [CK_EmployeeTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeTypes]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[EmployeeTypes] CHECK CONSTRAINT [CK_EmployeeTypes]
GO
/****** Object:  Check [CK_BusinessEntityHolidays]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Holidays]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityHolidays] CHECK  (([End]>[Start]))
GO
ALTER TABLE [dbo].[Holidays] CHECK CONSTRAINT [CK_BusinessEntityHolidays]
GO
/****** Object:  Check [CK_Holidays]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Holidays]  WITH CHECK ADD  CONSTRAINT [CK_Holidays] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Holidays] CHECK CONSTRAINT [CK_Holidays]
GO
/****** Object:  Check [CK_EmployeeLeaves]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Leaves]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeLeaves] CHECK  (([End]>[Start]))
GO
ALTER TABLE [dbo].[Leaves] CHECK CONSTRAINT [CK_EmployeeLeaves]
GO
/****** Object:  Check [CK_LeaveTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[LeaveTypes]  WITH CHECK ADD  CONSTRAINT [CK_LeaveTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[LeaveTypes] CHECK CONSTRAINT [CK_LeaveTypes]
GO
/****** Object:  Check [CK_Logins]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Logins]  WITH CHECK ADD  CONSTRAINT [CK_Logins] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Logins] CHECK CONSTRAINT [CK_Logins]
GO
/****** Object:  Check [CK_ProfileFields]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ProfileFields]  WITH CHECK ADD  CONSTRAINT [CK_ProfileFields] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[ProfileFields] CHECK CONSTRAINT [CK_ProfileFields]
GO
/****** Object:  Check [CK_Profiles]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [CK_Profiles] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [CK_Profiles]
GO
/****** Object:  Check [CK_Roles]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [CK_Roles] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [CK_Roles]
GO
/****** Object:  Check [CK_BusinessEntityShiftExceptions]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ShiftExceptions]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShiftExceptions] CHECK  (([EndTime]>[StartTime]))
GO
ALTER TABLE [dbo].[ShiftExceptions] CHECK CONSTRAINT [CK_BusinessEntityShiftExceptions]
GO
/****** Object:  Check [CK_ShiftExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ShiftExceptionTypes]  WITH CHECK ADD  CONSTRAINT [CK_ShiftExceptionTypes] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[ShiftExceptionTypes] CHECK CONSTRAINT [CK_ShiftExceptionTypes]
GO
/****** Object:  Check [CK_BusinessEntityShifts]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShifts] CHECK  (([PunchOutEndTime]>[EndTime]))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_BusinessEntityShifts]
GO
/****** Object:  Check [CK_BusinessEntityShifts_1]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShifts_1] CHECK  (([EndTime]>[PunchOutStartTime]))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_BusinessEntityShifts_1]
GO
/****** Object:  Check [CK_BusinessEntityShifts_2]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShifts_2] CHECK  (([PunchOutStartTime]>[PunchInEndTime]))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_BusinessEntityShifts_2]
GO
/****** Object:  Check [CK_BusinessEntityShifts_3]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShifts_3] CHECK  (([PunchInEndTime]>[StartTime]))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_BusinessEntityShifts_3]
GO
/****** Object:  Check [CK_BusinessEntityShifts_4]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_BusinessEntityShifts_4] CHECK  (([StartTime]>[PunchInStartTime]))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_BusinessEntityShifts_4]
GO
/****** Object:  Check [CK_Shifts]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [CK_Shifts] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [CK_Shifts]
GO
/****** Object:  Check [CK_Tasks]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [CK_Tasks] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [CK_Tasks]
GO
/****** Object:  ForeignKey [FK_EmployeeAttendanceExceptions_EmployeeAttendanceExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[AttendanceExceptions]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAttendanceExceptions_EmployeeAttendanceExceptionTypes] FOREIGN KEY([AttendanceExceptionTypeID])
REFERENCES [dbo].[AttendanceExceptionTypes] ([ID])
GO
ALTER TABLE [dbo].[AttendanceExceptions] CHECK CONSTRAINT [FK_EmployeeAttendanceExceptions_EmployeeAttendanceExceptionTypes]
GO
/****** Object:  ForeignKey [FK_EmployeeAttendanceExceptions_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[AttendanceExceptions]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAttendanceExceptions_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[AttendanceExceptions] CHECK CONSTRAINT [FK_EmployeeAttendanceExceptions_Employees]
GO
/****** Object:  ForeignKey [FK_BusinessEntities_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[BusinessEntities]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntities_BusinessEntities] FOREIGN KEY([ParentID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntities] CHECK CONSTRAINT [FK_BusinessEntities_BusinessEntities]
GO
/****** Object:  ForeignKey [FK_BusinessEntityContactDetails_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[BusinessEntityContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityContactDetails_BusinessEntities] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityContactDetails] CHECK CONSTRAINT [FK_BusinessEntityContactDetails_BusinessEntities]
GO
/****** Object:  ForeignKey [FK_BusinessEntityContactDetails_ProfileFields]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[BusinessEntityContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityContactDetails_ProfileFields] FOREIGN KEY([ProfileFieldID])
REFERENCES [dbo].[ProfileFields] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityContactDetails] CHECK CONSTRAINT [FK_BusinessEntityContactDetails_ProfileFields]
GO
/****** Object:  ForeignKey [FK_FingerPrints_Devices]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[DeviceFPs]  WITH CHECK ADD  CONSTRAINT [FK_FingerPrints_Devices] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Devices] ([ID])
GO
ALTER TABLE [dbo].[DeviceFPs] CHECK CONSTRAINT [FK_FingerPrints_Devices]
GO
/****** Object:  ForeignKey [FK_FingerPrints_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[DeviceFPs]  WITH CHECK ADD  CONSTRAINT [FK_FingerPrints_Employees] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employees] ([Code])
GO
ALTER TABLE [dbo].[DeviceFPs] CHECK CONSTRAINT [FK_FingerPrints_Employees]
GO
/****** Object:  ForeignKey [FK_DeviceLogs_Devices]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[DeviceLogs]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLogs_Devices] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Devices] ([ID])
GO
ALTER TABLE [dbo].[DeviceLogs] CHECK CONSTRAINT [FK_DeviceLogs_Devices]
GO
/****** Object:  ForeignKey [FK_DeviceLogs_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[DeviceLogs]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLogs_Employees] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employees] ([Code])
GO
ALTER TABLE [dbo].[DeviceLogs] CHECK CONSTRAINT [FK_DeviceLogs_Employees]
GO
/****** Object:  ForeignKey [FK_BusinessEntityDevices_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityDevices_BusinessEntities] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [FK_BusinessEntityDevices_BusinessEntities]
GO
/****** Object:  ForeignKey [FK_EmployeeContactDetails_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeContactDetails_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[EmployeeContactDetails] CHECK CONSTRAINT [FK_EmployeeContactDetails_Employees]
GO
/****** Object:  ForeignKey [FK_EmployeeContactDetails_ProfileFields]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeContactDetails_ProfileFields] FOREIGN KEY([ProfileFieldID])
REFERENCES [dbo].[ProfileFields] ([ID])
GO
ALTER TABLE [dbo].[EmployeeContactDetails] CHECK CONSTRAINT [FK_EmployeeContactDetails_ProfileFields]
GO
/****** Object:  ForeignKey [FK_Employees_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_BusinessEntities] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_BusinessEntities]
GO
/****** Object:  ForeignKey [FK_Employees_BusinessEntityDepartments]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_BusinessEntityDepartments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_BusinessEntityDepartments]
GO
/****** Object:  ForeignKey [FK_Employees_DesignationTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_DesignationTypes] FOREIGN KEY([DesignationID])
REFERENCES [dbo].[Designations] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_DesignationTypes]
GO
/****** Object:  ForeignKey [FK_Employees_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([PreviousID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
/****** Object:  ForeignKey [FK_Employees_Employees1]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees1] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees1]
GO
/****** Object:  ForeignKey [FK_Employees_EmployeeTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_EmployeeTypes] FOREIGN KEY([EmployeeTypeID])
REFERENCES [dbo].[EmployeeTypes] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_EmployeeTypes]
GO
/****** Object:  ForeignKey [FK_EmployeeShiftAssignments_BusinessEntityShifts]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeShiftAssignments]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeShiftAssignments_BusinessEntityShifts] FOREIGN KEY([ShiftID])
REFERENCES [dbo].[Shifts] ([ID])
GO
ALTER TABLE [dbo].[EmployeeShiftAssignments] CHECK CONSTRAINT [FK_EmployeeShiftAssignments_BusinessEntityShifts]
GO
/****** Object:  ForeignKey [FK_EmployeeShiftAssignments_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[EmployeeShiftAssignments]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeShiftAssignments_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[EmployeeShiftAssignments] CHECK CONSTRAINT [FK_EmployeeShiftAssignments_Employees]
GO
/****** Object:  ForeignKey [FK_BusinessEntityHolidays_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Holidays]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityHolidays_BusinessEntities] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[Holidays] CHECK CONSTRAINT [FK_BusinessEntityHolidays_BusinessEntities]
GO
/****** Object:  ForeignKey [FK_EmployeeLeaves_EmployeeLeaveTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Leaves]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLeaves_EmployeeLeaveTypes] FOREIGN KEY([LeaveTypeID])
REFERENCES [dbo].[LeaveTypes] ([ID])
GO
ALTER TABLE [dbo].[Leaves] CHECK CONSTRAINT [FK_EmployeeLeaves_EmployeeLeaveTypes]
GO
/****** Object:  ForeignKey [FK_EmployeeLeaves_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Leaves]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLeaves_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Leaves] CHECK CONSTRAINT [FK_EmployeeLeaves_Employees]
GO
/****** Object:  ForeignKey [FK_EmployeeLogins_EmployeeRoles]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Logins]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLogins_EmployeeRoles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Logins] CHECK CONSTRAINT [FK_EmployeeLogins_EmployeeRoles]
GO
/****** Object:  ForeignKey [FK_EmployeeLogins_Employees]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Logins]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLogins_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Logins] CHECK CONSTRAINT [FK_EmployeeLogins_Employees]
GO
/****** Object:  ForeignKey [FK_ProfileFields_ProfileTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ProfileFields]  WITH CHECK ADD  CONSTRAINT [FK_ProfileFields_ProfileTypes] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profiles] ([ID])
GO
ALTER TABLE [dbo].[ProfileFields] CHECK CONSTRAINT [FK_ProfileFields_ProfileTypes]
GO
/****** Object:  ForeignKey [FK_RoleTasks_Roles]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[RoleTasks]  WITH CHECK ADD  CONSTRAINT [FK_RoleTasks_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RoleTasks] CHECK CONSTRAINT [FK_RoleTasks_Roles]
GO
/****** Object:  ForeignKey [FK_RoleTasks_Tasks]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[RoleTasks]  WITH CHECK ADD  CONSTRAINT [FK_RoleTasks_Tasks] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
GO
ALTER TABLE [dbo].[RoleTasks] CHECK CONSTRAINT [FK_RoleTasks_Tasks]
GO
/****** Object:  ForeignKey [FK_BusinessEntityShiftExceptions_BusinessEntityShiftExceptionTypes]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ShiftExceptions]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityShiftExceptions_BusinessEntityShiftExceptionTypes] FOREIGN KEY([ShiftExceptionTypeID])
REFERENCES [dbo].[ShiftExceptionTypes] ([ID])
GO
ALTER TABLE [dbo].[ShiftExceptions] CHECK CONSTRAINT [FK_BusinessEntityShiftExceptions_BusinessEntityShiftExceptionTypes]
GO
/****** Object:  ForeignKey [FK_BusinessEntityShiftExceptions_BusinessEntityShifts]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[ShiftExceptions]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityShiftExceptions_BusinessEntityShifts] FOREIGN KEY([ShiftID])
REFERENCES [dbo].[Shifts] ([ID])
GO
ALTER TABLE [dbo].[ShiftExceptions] CHECK CONSTRAINT [FK_BusinessEntityShiftExceptions_BusinessEntityShifts]
GO
/****** Object:  ForeignKey [FK_BusinessEntityShifts_BusinessEntities]    Script Date: 05/31/2012 14:02:39 ******/
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityShifts_BusinessEntities] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntities] ([ID])
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [FK_BusinessEntityShifts_BusinessEntities]
GO
