USE [CuosisTB]
GO
/****** Object:  Table [dbo].[Allergies]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Allergies](
	[AllergiesID] [int] NOT NULL,
	[medicineID] [int] NOT NULL,
	[patientID] [int] NOT NULL,
	[Allergies_Description] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctors](
	[DoctorID] [int] NOT NULL,
	[Medical_Center_ID] [int] NOT NULL,
	[Doctor_Name] [varchar](50) NULL,
	[Contact_Details] [varchar](50) NULL,
	[OtherDetails] [varchar](50) NULL,
	[patientID] [int] NOT NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employeemasters]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employeemasters](
	[UserId] [int] NOT NULL,
	[UserName] [nchar](50) NOT NULL,
	[LoginName] [nchar](50) NULL,
	[Password] [nchar](50) NOT NULL,
	[Email] [nchar](50) NULL,
	[ContactNo] [nchar](15) NULL,
	[Address] [nchar](50) NULL,
	[IsApporved] [int] NULL,
	[Status] [int] NULL,
	[TotalCnt] [int] NULL,
 CONSTRAINT [PK_Employeemasters] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] NOT NULL,
	[RegisterID] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medical_Center]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medical_Center](
	[Medical_Center_ID] [int] NOT NULL,
	[Building] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Zip_Code] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Other_Details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medical_Procedure]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medical_Procedure](
	[Medical_Procedure_ID] [int] NOT NULL,
	[Medical_Center_ID] [int] NOT NULL,
	[Medical_Procedure_Name] [varchar](50) NULL,
	[Procedure_Cost] [varchar](50) NULL,
	[Other_Details] [varchar](50) NULL,
 CONSTRAINT [PK_Medical_Procedure] PRIMARY KEY CLUSTERED 
(
	[Medical_Procedure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicines](
	[medicineID] [int] NOT NULL,
	[medicineName] [varchar](50) NULL,
	[medicineDescription] [varchar](50) NULL,
	[estimatePrice] [float] NULL,
	[typeOfTbID] [varchar](50) NULL,
	[symptomID] [int] NOT NULL,
	[patientID] [int] NOT NULL,
 CONSTRAINT [PK_Medicines] PRIMARY KEY CLUSTERED 
(
	[medicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patients](
	[patientID] [int] NOT NULL,
	[patientFullName] [varchar](50) NULL,
	[patientGenderID] [int] NULL,
	[patientStatus] [varchar](50) NULL,
	[contactNumber] [int] NULL,
	[patientAdress] [varchar](200) NULL,
	[patientNationality] [varchar](50) NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[patientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register](
	[RegisterID] [nchar](10) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[RegisterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Symptoms]    Script Date: 2019/05/02 14:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Symptoms](
	[symptomID] [int] NOT NULL,
	[symptomDescription] [varchar](800) NULL,
	[typeOfTB] [varchar](50) NULL,
 CONSTRAINT [PK_Symptoms] PRIMARY KEY CLUSTERED 
(
	[symptomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Allergies]  WITH CHECK ADD  CONSTRAINT [FK_Allergies_Medicines] FOREIGN KEY([medicineID])
REFERENCES [dbo].[Medicines] ([medicineID])
GO
ALTER TABLE [dbo].[Allergies] CHECK CONSTRAINT [FK_Allergies_Medicines]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Employeemasters] FOREIGN KEY([RegisterID])
REFERENCES [dbo].[Employeemasters] ([UserId])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Employeemasters]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Patients] FOREIGN KEY([RegisterID])
REFERENCES [dbo].[Patients] ([patientID])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Patients]
GO
ALTER TABLE [dbo].[Medical_Center]  WITH CHECK ADD  CONSTRAINT [FK_Medical_Center_Doctors] FOREIGN KEY([Medical_Center_ID])
REFERENCES [dbo].[Doctors] ([DoctorID])
GO
ALTER TABLE [dbo].[Medical_Center] CHECK CONSTRAINT [FK_Medical_Center_Doctors]
GO
ALTER TABLE [dbo].[Medical_Center]  WITH CHECK ADD  CONSTRAINT [FK_Medical_Center_Medical_Procedure] FOREIGN KEY([Medical_Center_ID])
REFERENCES [dbo].[Medical_Procedure] ([Medical_Procedure_ID])
GO
ALTER TABLE [dbo].[Medical_Center] CHECK CONSTRAINT [FK_Medical_Center_Medical_Procedure]
GO
ALTER TABLE [dbo].[Medicines]  WITH CHECK ADD  CONSTRAINT [FK_Medicines_Symptoms] FOREIGN KEY([symptomID])
REFERENCES [dbo].[Symptoms] ([symptomID])
GO
ALTER TABLE [dbo].[Medicines] CHECK CONSTRAINT [FK_Medicines_Symptoms]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Doctors] FOREIGN KEY([patientID])
REFERENCES [dbo].[Doctors] ([DoctorID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Doctors]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Medicines] FOREIGN KEY([patientID])
REFERENCES [dbo].[Medicines] ([medicineID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Medicines]
GO
ALTER TABLE [dbo].[Symptoms]  WITH CHECK ADD  CONSTRAINT [FK_Symptoms_Patients] FOREIGN KEY([symptomID])
REFERENCES [dbo].[Patients] ([patientID])
GO
ALTER TABLE [dbo].[Symptoms] CHECK CONSTRAINT [FK_Symptoms_Patients]
GO
