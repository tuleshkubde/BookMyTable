USE [bookmytable]
GO
/****** Object:  Table [dbo].[ApprovalStatusAttribute]    Script Date: 1/25/2018 9:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovalStatusAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalDescription] [varchar](50) NULL,
	[Createdate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](250) NULL,
	[PhoneNumber] [varchar](250) NULL,
	[EmailID] [varchar](250) NULL,
	[City] [varchar](250) NULL,
	[Country] [varchar](250) NULL,
	[Address] [varchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploteeAttributeMaster]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploteeAttributeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeDescription] [varchar](50) NULL,
	[Createdate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](550) NULL,
	[ContactPersoneName] [varchar](350) NULL,
	[Address] [varchar](250) NULL,
	[City] [varchar](150) NULL,
	[Country] [varchar](150) NULL,
	[Rating] [int] NULL,
	[PhoneNumber] [varchar](250) NULL,
	[EmailID] [varchar](250) NULL,
	[OpenintHours] [varchar](250) NULL,
	[HotelType] [varchar](250) NULL,
	[CreateDate] [datetime] NOT NULL,
	[ts] [timestamp] NOT NULL,
 CONSTRAINT [PK_HotelDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelDiningDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelDiningDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[TotalTable] [int] NULL,
	[TableCapacity] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
	[TableAvailable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelEmployeeDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelEmployeeDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[EmployeeName] [varchar](150) NULL,
	[EmployeeTypeID] [int] NULL,
	[EmployeeRole] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelMenuTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelMenuTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[DishName] [varchar](150) NULL,
	[DishDescription] [varchar](250) NULL,
	[Isveg] [int] NULL,
	[IsAvaulable] [int] NULL,
	[Price] [money] NULL,
	[Discount] [decimal](18, 0) NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelTableAndOrderBooking]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelTableAndOrderBooking](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[TableId] [int] NULL,
	[DishId] [int] NULL,
	[IsApproveStatus] [int] NULL,
	[ApprovalName] [varchar](50) NULL,
	[TotalAmount] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelTableDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelTableDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[TotalTable] [int] NULL,
	[TableCapacity] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
	[TableAvailable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelTableDetails11]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelTableDetails11](
	[Id] [int] NOT NULL,
	[HotelId] [int] NULL,
	[TotalTable] [int] NULL,
	[TableCapacity] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuDishTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuDishTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[DishName] [varchar](150) NULL,
	[DishDescription] [varchar](250) NULL,
	[Isveg] [int] NULL,
	[IsAvailable] [int] NULL,
	[Price] [money] NULL,
	[Discount] [decimal](18, 0) NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMenuEntity]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMenuEntity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[HotelId] [int] NULL,
	[DishId] [int] NULL,
	[Quantity] [int] NULL,
	[DishName] [varchar](250) NULL,
	[DishAmount] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustOrderId] [int] NULL,
	[CustomerId] [int] NULL,
	[PaymentTypeID] [int] NULL,
	[TotalAmount] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentAttributeMaster]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentAttributeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDescription] [varchar](50) NULL,
	[Createdate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentAttributeMaster11]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentAttributeMaster11](
	[Id] [int] NOT NULL,
	[PaymentDescription] [varchar](50) NULL,
	[Createdate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantsDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](550) NULL,
	[ContactPersoneName] [varchar](350) NULL,
	[Address] [varchar](250) NULL,
	[City] [varchar](150) NULL,
	[Country] [varchar](150) NULL,
	[Rating] [int] NULL,
	[PhoneNumber] [varchar](250) NULL,
	[EmailID] [varchar](250) NULL,
	[OpenintHours] [varchar](250) NULL,
	[HotelType] [varchar](250) NULL,
	[CreateDate] [datetime] NOT NULL,
	[ts] [timestamp] NOT NULL,
 CONSTRAINT [PK_RestaurantsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salesOrderItemTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salesOrderItemTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[HotelId] [int] NULL,
	[TableId] [int] NULL,
	[TotalQuantity] [int] NULL,
	[IsApproveStatus] [int] NULL,
	[ApprovalName] [varchar](50) NULL,
	[TotalAmount] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salesOrderTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salesOrderTable](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NULL,
	[TableId] [int] NULL,
	[TotalQuantity] [int] NULL,
	[IsApproveStatus] [int] NULL,
	[ApprovalName] [varchar](50) NULL,
	[TotalAmount] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableCapacityAttribute]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableCapacityAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableType] [int] NOT NULL,
	[Description] [varchar](150) NULL,
	[CreateDate] [datetime] NOT NULL,
	[ts] [timestamp] NULL,
 CONSTRAINT [PK_TableCapacityAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateContent]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateContent] [nvarchar](max) NULL,
	[SubmitedUser] [varchar](150) NULL,
	[CreateDate] [datetime] NOT NULL,
	[ts] [timestamp] NOT NULL,
 CONSTRAINT [PK_TemplateContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ts] [timestamp] NOT NULL,
 CONSTRAINT [pkey_UserID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBase]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[EmailID] [varchar](150) NULL,
	[MobileNumber] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPassword]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPassword](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Passwords] [varchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[RoleDescription] [varchar](250) NULL,
	[UserType] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ts] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPassword]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPassword](
	[Id] [int] NOT NULL,
	[UserID] [int] NULL,
	[Password] [varchar](255) NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelDiningDetails]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[HotelDetails] ([Id])
GO
ALTER TABLE [dbo].[HotelEmployeeDetails]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[HotelMenuTable]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[HotelTableAndOrderBooking]  WITH CHECK ADD FOREIGN KEY([DishId])
REFERENCES [dbo].[HotelMenuTable] ([Id])
GO
ALTER TABLE [dbo].[HotelTableAndOrderBooking]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[HotelTableAndOrderBooking]  WITH CHECK ADD FOREIGN KEY([TableId])
REFERENCES [dbo].[HotelTableDetails11] ([Id])
GO
ALTER TABLE [dbo].[HotelTableDetails]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[HotelTableDetails11]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[MenuDishTable]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[HotelDetails] ([Id])
GO
ALTER TABLE [dbo].[OrderMenuEntity]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[RestaurantsDetails] ([Id])
GO
ALTER TABLE [dbo].[OrderMenuEntity]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[HotelTableAndOrderBooking] ([OrderID])
GO
ALTER TABLE [dbo].[OrderPaymentDetails]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerTable] ([Id])
GO
ALTER TABLE [dbo].[salesOrderItemTable]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[salesOrderTable] ([OrderID])
GO
ALTER TABLE [dbo].[UserPassword]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserType])
REFERENCES [dbo].[EmploteeAttributeMaster] ([Id])
GO
ALTER TABLE [dbo].[UsersPassword]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[AddBookMyTableAndMenuOrder]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/************************************************************************    
* HotelBookinFunctionality     
*    
* Database Environment: SQL Server 2012    
* Name: AddTableBookAndMenuOrder    
* Created: Jan 23, 2018
* Author: Ankush  Pogade
*
* Description:
1.1	Create new stored procedure [AddTableBookAndMenuOrder]
*/

CREATE PROCEDURE [dbo].[AddBookMyTableAndMenuOrder]
   @p_intHotelId int ,
   @P_intTableBookingID int, 
   @P_intTotalQuantity int,  
   @P_dcmlTotalAmt decimal(18,2),
   @p_vchApprovalName varchar(100),	
   @p_vchCustomerName varchar(100),   
   @p_vchPhoneNumber varchar(100),     
   @p_vchEmailID varchar(100), 
   @p_vchCity    varchar(100),
   @p_vchCountry varchar(100),
   @p_vchAddress varchar(100)
AS 


-- Standard variables  
DECLARE @l_vchProcname       varchar(35)  
DECLARE @l_vchParmname       varchar(35)  
DECLARE @l_vchTablename      varchar(255)  
DECLARE @l_vchMessage        varchar(255)  
DECLARE @l_intError          int
DECLARE @l_intRowcount       int
DECLARE @l_intRtrncode       int
DECLARE @l_intErrnum         int
DECLARE @l_intSqlstatus      int
DECLARE @l_intSuccess        int
DECLARE @l_intFail           int
DECLARE @l_intNTFND          int
DECLARE @l_dtmCurrentDate datetime
DECLARE @l_vchServerName varchar(255)
DECLARE @l_intHandler  int

/*** Local variable ***/

Declare @vch_OrderId int;
Declare @P_intCustID int;
Declare @p_dtmCurrentDate datetime;
Declare @P_intPaymentTypeId int;
Declare @p_intIsApprove int;
Declare @p_intOrderPaymentId int;
declare @P_intTotalCapacity int ;

/*** end Local Variable ***/ 

------------------------------------------------- 
-- Initialize standard variables  
SELECT @l_vchProcname = OBJECT_NAME(@@procid)
SELECT @l_intError = 0, @l_intRtrncode = 0, @l_intRowcount = 0, @l_intSqlstatus = 0
SELECT @l_intSuccess = 0, @l_intFail = -1, @l_intNTFND = 100
SELECT @l_dtmCurrentDate = GETDATE()
SELECT @l_vchServerName = @@SERVERNAME

Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

Begin Transaction


-- CustomerDetails Save in Database

			insert  CustomerTable(CustomerName,PhoneNumber,EmailID,City,Country,Address,CreateDate)
			values(@p_vchCustomerName,@p_vchPhoneNumber,@p_vchEmailID,@p_vchCity,@p_vchCountry,@p_vchAddress,Getdate());

			set @P_intCustID = SCOPE_IDENTITY();
--
		

			insert  salesOrderTable(HotelId,TableId,TotalQuantity,IsApproveStatus,ApprovalName,TotalAmount,CreateDate) 
			VALUES(@p_intHotelId,@P_intTableBookingID,@P_intTotalQuantity,1,@p_vchApprovalName,@P_dcmlTotalAmt,Getdate()); 

			set @vch_OrderId = SCOPE_IDENTITY();

			insert  OrderPaymentDetails(CustOrderId,CustomerId,PaymentTypeID,TotalAmount,CreateDate) 
			values(@vch_OrderId,@P_intCustID,@P_intPaymentTypeId,@P_dcmlTotalAmt,Getdate()); 
			
			set @p_intOrderPaymentId = SCOPE_IDENTITY();

			--set @P_intTotalCapacity =(select TableCapacity from HotelTableDetails WHERE HotelId=@p_intHotelId);

			--update HotelTableDetails set TableAvailable=(@P_intTotalCapacity-1) where HotelId=@p_intHotelId;


		

/** OUTPUT **/
select @P_intCustID as CustomerID,@vch_OrderId as OrderID,@p_intOrderPaymentId as OrderPaymentID;

		
COMMIT TRANSACTION
END TRY  

BEGIN CATCH  
	SELECT 
        @l_intRtrncode = @l_intFail,
		@l_intErrnum = ERROR_NUMBER(),
		@l_vchMessage = ERROR_MESSAGE()
		
	SELECT
		@l_vchMessage = @l_vchProcname + ' error ' + CONVERT( varchar(9), @l_intErrnum ) + ': ' + @l_vchMessage

	IF @@TRANCOUNT > 0 -- Uncompleted transaction in the database
		ROLLBACK TRAN

	RAISERROR (@l_vchMessage,16,1)  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[AddOrderMenuDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddOrderMenuDetails]
   @p_intHotelId int ,
   @P_intDishID int,
   @P_dcmlTotalAmt decimal(18,2),
   @p_OrderId int ,	
   @P_intQuantity int ,   
   @p_vchDishName varchar(100)  

AS 


-- Standard variables  
DECLARE @l_vchProcname       varchar(35)  
DECLARE @l_vchParmname       varchar(35)  
DECLARE @l_vchTablename      varchar(255)  
DECLARE @l_vchMessage        varchar(255)  
DECLARE @l_intError          int
DECLARE @l_intRowcount       int
DECLARE @l_intRtrncode       int
DECLARE @l_intErrnum         int
DECLARE @l_intSqlstatus      int
DECLARE @l_intSuccess        int
DECLARE @l_intFail           int
DECLARE @l_intNTFND          int
DECLARE @l_dtmCurrentDate datetime
DECLARE @l_vchServerName varchar(255)
DECLARE @l_intHandler  int

/*** Local variable ***/



/*** end Local Variable ***/ 

------------------------------------------------- 
-- Initialize standard variables  
SELECT @l_vchProcname = OBJECT_NAME(@@procid)
SELECT @l_intError = 0, @l_intRtrncode = 0, @l_intRowcount = 0, @l_intSqlstatus = 0
SELECT @l_intSuccess = 0, @l_intFail = -1, @l_intNTFND = 100
SELECT @l_dtmCurrentDate = GETDATE()
SELECT @l_vchServerName = @@SERVERNAME

Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

Begin Transaction


-- CustomerDetails Save in Database

insert  OrderMenuEntity(OrderId,HotelId,DishId,Quantity,DishName,DishAmount,CreateDate)
			values(@p_OrderId,@p_intHotelId,@P_intDishID,@P_intQuantity,@p_vchDishName,@P_dcmlTotalAmt,Getdate());

			






		
COMMIT TRANSACTION
END TRY  

BEGIN CATCH  
	SELECT 
        @l_intRtrncode = @l_intFail,
		@l_intErrnum = ERROR_NUMBER(),
		@l_vchMessage = ERROR_MESSAGE()
		
	SELECT
		@l_vchMessage = @l_vchProcname + ' error ' + CONVERT( varchar(9), @l_intErrnum ) + ': ' + @l_vchMessage

	IF @@TRANCOUNT > 0 -- Uncompleted transaction in the database
		ROLLBACK TRAN

	RAISERROR (@l_vchMessage,16,1)  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[AddsalesOrderItemTable]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[AddsalesOrderItemTable]
   @p_intHotelId int ,
   @p_intMenuID int,
   @P_intTableId int,
   @P_dcmlTotalAmt decimal(18,2),
   @p_OrderId int ,	
   @P_intQuantity int ,   
   @p_vchDishName varchar(100)  

AS 


-- Standard variables  
DECLARE @l_vchProcname       varchar(35)  
DECLARE @l_vchParmname       varchar(35)  
DECLARE @l_vchTablename      varchar(255)  
DECLARE @l_vchMessage        varchar(255)  
DECLARE @l_intError          int
DECLARE @l_intRowcount       int
DECLARE @l_intRtrncode       int
DECLARE @l_intErrnum         int
DECLARE @l_intSqlstatus      int
DECLARE @l_intSuccess        int
DECLARE @l_intFail           int
DECLARE @l_intNTFND          int
DECLARE @l_dtmCurrentDate datetime
DECLARE @l_vchServerName varchar(255)
DECLARE @l_intHandler  int

/*** Local variable ***/



/*** end Local Variable ***/ 

------------------------------------------------- 
-- Initialize standard variables  
SELECT @l_vchProcname = OBJECT_NAME(@@procid)
SELECT @l_intError = 0, @l_intRtrncode = 0, @l_intRowcount = 0, @l_intSqlstatus = 0
SELECT @l_intSuccess = 0, @l_intFail = -1, @l_intNTFND = 100
SELECT @l_dtmCurrentDate = GETDATE()
SELECT @l_vchServerName = @@SERVERNAME

Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

Begin Transaction

insert  salesOrderItemTable(OrderId,MenuID,HotelId,TableId,TotalQuantity,IsApproveStatus,ApprovalName,CreateDate)
			values(@p_OrderId,@p_intMenuID,@p_intHotelId,@P_intTableId,@P_intQuantity,1,'1',Getdate());
		
COMMIT TRANSACTION
END TRY  

BEGIN CATCH  
	SELECT 
        @l_intRtrncode = @l_intFail,
		@l_intErrnum = ERROR_NUMBER(),
		@l_vchMessage = ERROR_MESSAGE()
		
	SELECT
		@l_vchMessage = @l_vchProcname + ' error ' + CONVERT( varchar(9), @l_intErrnum ) + ': ' + @l_vchMessage

	IF @@TRANCOUNT > 0 -- Uncompleted transaction in the database
		ROLLBACK TRAN

	RAISERROR (@l_vchMessage,16,1)  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[AddSignUpUserDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddSignUpUserDetails]
   @UserName varchar(100),   
   @Firstname varchar(100),
   @Lastname varchar(100),  
   @EmailID varchar(100),  
   @MobileNumber varchar(100),
   @Gender varchar(100),
   @Password varchar(100)
AS 
Declare @UserID int;
IF EXISTS(SELECT 'True' FROM [User] WHERE UserName = @UserName)
BEGIN
  --This means it exists, return it to ASP and tell us
  SELECT 'This UserName already exists!'
END
ELSE  
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     


Begin Transaction
   -- Signup Userdetails Using Following Query 
			INSERT INTO [User] (UserName,
								FirstName,
								LastName,
								CreateDate)
			VALUES (@UserName, @Firstname, @Lastname,Getdate());

			 SET @UserID = SCOPE_IDENTITY();
			 

-- Basic UserDetails Save Using Following Query 
		
			INSERT INTO UserBase (UserID,
									EmailID,
									MobileNumber,
									Gender,
									CreateDate)
			VALUES (@UserID,@EmailID, @MobileNumber, @Gender,Getdate());

--Password Details Save Using Following Query 

			INSERT INTO UsersPassword (Id,Password,
			UserID,
			CreateDate)
			VALUES (@UserID,@Password,@UserID,Getdate());
COMMIT TRANSACTION
END TRY  

BEGIN CATCH  
	
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
		If (@@trancount <> 0)
	    ROLLBACK TRANSACTION
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[AddTableBookAndMenuOrder]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/************************************************************************    
* HotelBookinFunctionality     
*    
* Database Environment: SQL Server 2012    
* Name: AddTableBookAndMenuOrder    
* Created: Jan 23, 2018
* Author: Ankush  Pogade
*
* Description:
1.1	Create new stored procedure [AddTableBookAndMenuOrder]
*/

CREATE PROCEDURE [dbo].[AddTableBookAndMenuOrder]
   @p_intHotelId int ,
   @P_intDishID int,
   @P_dcmlTotalAmt decimal(18,2),
   @p_vchApprovalName varchar(100),	
   @p_vchCustomerName varchar(100),   
   @p_vchPhoneNumber varchar(100),     
   @p_vchEmailID varchar(100), 
   @p_vchCity    varchar(100),
   @p_vchCountry varchar(100),
   @p_vchAddress varchar(100)
AS 


-- Standard variables  
DECLARE @l_vchProcname       varchar(35)  
DECLARE @l_vchParmname       varchar(35)  
DECLARE @l_vchTablename      varchar(255)  
DECLARE @l_vchMessage        varchar(255)  
DECLARE @l_intError          int
DECLARE @l_intRowcount       int
DECLARE @l_intRtrncode       int
DECLARE @l_intErrnum         int
DECLARE @l_intSqlstatus      int
DECLARE @l_intSuccess        int
DECLARE @l_intFail           int
DECLARE @l_intNTFND          int
DECLARE @l_dtmCurrentDate datetime
DECLARE @l_vchServerName varchar(255)
DECLARE @l_intHandler  int

/*** Local variable ***/

Declare @vch_OrderId int;
Declare @P_intTableBookingID int;
Declare @P_intCustID int;
Declare @p_dtmCurrentDate datetime;
Declare @P_intPaymentTypeId int;
Declare @p_intIsApprove int;
Declare @p_intOrderPaymentId int;
declare @P_intTotalCapacity int ;

/*** end Local Variable ***/ 

------------------------------------------------- 
-- Initialize standard variables  
SELECT @l_vchProcname = OBJECT_NAME(@@procid)
SELECT @l_intError = 0, @l_intRtrncode = 0, @l_intRowcount = 0, @l_intSqlstatus = 0
SELECT @l_intSuccess = 0, @l_intFail = -1, @l_intNTFND = 100
SELECT @l_dtmCurrentDate = GETDATE()
SELECT @l_vchServerName = @@SERVERNAME

Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

Begin Transaction


-- CustomerDetails Save in Database

		insert  CustomerTable(CustomerName,PhoneNumber,EmailID,City,Country,Address,CreateDate)
			values(@p_vchCustomerName,@p_vchPhoneNumber,@p_vchEmailID,@p_vchCity,@p_vchCountry,@p_vchAddress,Getdate());

			set @P_intCustID = SCOPE_IDENTITY();
--
		insert  HotelTableAndOrderBooking(HotelId,TableId,DishId,IsApproveStatus,ApprovalName,TotalAmount,CreateDate) 
			VALUES(@p_intHotelId,@P_intTableBookingID,@P_intDishID,1,@p_vchApprovalName,@P_dcmlTotalAmt,Getdate()); 

			set @vch_OrderId = SCOPE_IDENTITY();

		insert  OrderPaymentDetails(CustOrderId,CustomerId,PaymentTypeID,TotalAmount,CreateDate) 
			values(@vch_OrderId,@P_intCustID,@P_intPaymentTypeId,@P_dcmlTotalAmt,Getdate()); 
			
			set @p_intOrderPaymentId = SCOPE_IDENTITY();

			set @P_intTotalCapacity =(select TableCapacity from HotelTableDetails WHERE HotelId=@p_intHotelId);

			update HotelTableDetails set TableAvailable=(@P_intTotalCapacity-1) where HotelId=@p_intHotelId;


		

/** OUTPUT **/
select @P_intCustID as CustomerID,@vch_OrderId as OrderID,@p_intOrderPaymentId as OrderPaymentID;

		
COMMIT TRANSACTION
END TRY  

BEGIN CATCH  
	SELECT 
        @l_intRtrncode = @l_intFail,
		@l_intErrnum = ERROR_NUMBER(),
		@l_vchMessage = ERROR_MESSAGE()
		
	SELECT
		@l_vchMessage = @l_vchProcname + ' error ' + CONVERT( varchar(9), @l_intErrnum ) + ': ' + @l_vchMessage

	IF @@TRANCOUNT > 0 -- Uncompleted transaction in the database
		ROLLBACK TRAN

	RAISERROR (@l_vchMessage,16,1)  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[pSp_GetHotelDiningDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[pSp_GetHotelDiningDetails]
  @HotelId int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
   
select	id as DineID,
		HotelId,
		TotalTable,
		TableCapacity,
		TableAvailable,
		CreateDate	
		from HotelDiningDetails where HotelId=@HotelId;

END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End
GO
/****** Object:  StoredProcedure [dbo].[pSp_GetHotelMEnuDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[pSp_GetHotelMEnuDetails]
  @HotelId int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
   
select	Id as MenuID,
		HotelId,
		DishName,
		DishDescription,
		Isveg,
		IsAvailable,
		Price,
		Discount,
		CreateDate	
		from MenuDishTable where HotelId=@HotelId;

END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End
GO
/****** Object:  StoredProcedure [dbo].[pSp_GetRestaurantsDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[pSp_GetRestaurantsDetails]
   @Vch_IsActive int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
   
select	id,
		HotelName,
		ContactPersoneName,
		Address,
		City,
		Country,
		Rating,
		PhoneNumber,
		EmailID,
		OpenintHours,		
		CreateDate		
		from HotelDetails order by id ASC;

END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End
GO
/****** Object:  StoredProcedure [dbo].[SavehtmlTemplateToDb]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SavehtmlTemplateToDb]
   @HtmlText nvarchar(max),   
   @SubMitedUser varchar(100)  
AS 

Begin 

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     


Begin Transaction   
		
INSERT into TemplateContent (TemplateContent,SubmitedUser,CreateDate) values( @HtmlText,@SubMitedUser,Getdate());

COMMIT TRANSACTION

END TRY  

BEGIN CATCH  
	
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
		If (@@trancount <> 0)
	    ROLLBACK TRANSACTION
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetHotelMenuDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_GetHotelMenuDetails]
  @HotelId int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
  
select rd.Id as HotelId,
	   rd.HotelName as HotelName,
	   hmt.Id as MenuID,
	   hmt.DishName as MenuName,
	   hmt.DishDescription as MenuDescription  ,
	   hmt.Isveg as IsVeg,
	   hmt.IsAvaulable as IsAvailable,
	   hmt.Price as Price,
	   hmt.Discount as Discount,
	   hmt.CreateDate as CreateDate
	   from HotelMenuTable hmt 
	    INNER join RestaurantsDetails rd on hmt.HotelId=rd.Id where rd.Id=@HotelId;
END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetOrderDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_GetOrderDetails]
  @OrderID int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY   
 
 select  * from [dbo].[salesOrderTable]  where OrderID= @OrderID;
 
 END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetOrderDetailsToEmployee]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_GetOrderDetailsToEmployee]
  @EmployeeID int ,
  @RoleID int
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

SELECT hed.HotelId,htb.OrderID,htb.TotalAmount 
		from [salesOrderItemTable] htb
		 INNER join HotelEmployeeDetails hed		
		 on hed.HotelId=htb.HotelId where hed.Id=@EmployeeID and htb.IsApproveStatus=1 ;
END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRestaurantsDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_GetRestaurantsDetails]
   @Vch_IsActive int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
   
select	rs.id,
		rs.HotelName,
		rs.ContactPersoneName,
		rs.Address,
		rs.City,
		rs.Country,
		rs.Rating,
		rs.PhoneNumber,
		rs.EmailID,
		rs.OpenintHours,
		hd.TotalTable,
		hd.TableCapacity,
		hd.TableAvailable,
		rs.CreateDate		
		from RestaurantsDetails rs left join  HotelTableDetails hd on rs.Id=hd.HotelId order by rs.Id ASC;

END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRestaurantsTablesDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_GetRestaurantsTablesDetails]
  @HotelId int 
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
  
select rd.Id,rd.HotelName,ht.TotalTable,ht.TableCapacity,ht.CreateDate from HotelTableDetails ht 
	     INNER join RestaurantsDetails rd on ht.HotelId=rd.Id where rd.Id=@HotelId ORDER by ht.TableCapacity ASC;
END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserAndUserRoleDetails]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_GetUserAndUserRoleDetails]  
   @UserName varchar(50),
   @Password varchar(50)
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     

   select us.UserName,us.FirstName,us.LastName,ur.RoleDescription,
	ur.UserType from [User] us 
			inner join UserPassword up on up.UserID=us.Id 	
			INNER join UserRole ur on us.Id=ur.UserID 
			WHERE us.UserName=@UserName and up.Passwords=@Password


END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserDetailsDqata]    Script Date: 1/25/2018 9:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_GetUserDetailsDqata]  
   @formDt datetime  
AS   
Begin

SET NOCOUNT ON; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRY     
   
select us.id,us.UserName,us.FirstName,us.LastName,UB.EmailID,UB.MobileNumber,UB.Gender,us.CreateDate
 from [User] us inner join UserBase UB on us.Id=UB.UserID   

END TRY  

BEGIN CATCH  
    SELECT   
		 ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;
End

GO
