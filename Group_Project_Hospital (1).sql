
CREATE DATABASE Group_Project_Hospital;

USE Group_Project_Hospital; 

DROP TABLE IF EXISTS Employee
CREATE TABLE Employee
(EmployeeID		SMALLINT NOT NULL IDENTITY(1,1),
FirstName		VARCHAR(25) NOT NULL,	
LastName		VARCHAR(25) NOT NULL,
HireDate		DATE,
EmployeeType	VARCHAR NOT NULL,
CONSTRAINT PK_Employee_EmployeeID PRIMARY KEY ( EmployeeID )
);

DROP TABLE IF EXISTS PhoneNumber
CREATE TABLE PhoneNumber
(EmployeeID			SMALLINT NOT NULL IDENTITY (1,1),
PhoneNumber			VARCHAR(10) NOT NULL,
PrimaryPhoneFlag	CHAR(1) NOT NULL
CONSTRAINT PK_PhoneNumber_EmployeeID_PhoneNumber PRIMARY KEY ( EmployeeID , PhoneNumber )
CONSTRAINT FK_PhoneNumber_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES Employee ( EmployeeID )
);

DROP TABLE IF EXISTS Email
CREATE TABLE Email
(EmployeeID			SMALLINT NOT NULL IDENTITY (1,1),
Email				VARCHAR(35) NOT NULL
CONSTRAINT PK_Email_EmployeeID_Email PRIMARY KEY ( EmployeeID , Email )
CONSTRAINT FK_Email_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES Employee ( EmployeeID )
);

DROP TABLE IF EXISTS NonMedical
CREATE TABLE NonMedical
(NonMedicalEmployeeID			SMALLINT NOT NULL IDENTITY (1,1),
NonMedicalEmployeeType			VARCHAR(1) NOT NULL
CONSTRAINT PK_NonMedical_NonMedicalEmployeeID PRIMARY KEY ( NonMedicalEmployeeID )
CONSTRAINT FK_NonMedical_NonMedicalEmployeeID FOREIGN KEY (NonMedicalEmployeeID) REFERENCES Employee ( NonMedicalEmployeeID )
);

DROP TABLE IF EXISTS FrontDesk
CREATE TABLE FrontDesk
(FDEmployeeID			SMALLINT NOT NULL IDENTITY (1,1),
WeekylHours				TINYINT NOT NULL,
HourlyWage				TINYINT NOT NULL,
CONSTRAINT PK_FrontDesk_FDEmployeeID	PRIMARY KEY ( FDEmployeeID )
CONSTRAINT FK_FrontDesk_FDEmployeeID	FOREIGN KEY ( FDEmployeeID ) REFERENCES NonMedical ( NonMedicalEmployeeID )
);

DROP TABLE IF EXISTS Corporate
CREATE TABLE Corporate 
(CorporateEmployeeID	SMALLINT NOT NULL IDENTITY (1,1),
Salary					INT NOT NULL,
Department				VARCHAR(25),
CONSTRAINT PK_Corporate_CorporateEmployeeID  PRIMARY KEY ( CorporateEmployeeID )
CONSTRAINT FK_Corporate_CorporateEmployeeID  FOREIGN KEY ( CorporateEmployeeID ) REFERENCES NonMedical ( NonMedicalEmployeeID )
);



DROP TABLE IF EXISTS MedicalEmployee
CREATE TABLE MedicalEmployee
(MedicalEmployeeID	SMALLINT NOT NULL IDENTITY (1,1),
AttendedUniversity	VARCHAR(25) NOT NULL,
MedicalEmployeeType VARCHAR(1) NOT NULL
CONSTRAINT PK_MedicalEmployee_MedicalEmployeeID PRIMARY KEY ( MedicalEmployeeID )
CONSTRAINT FK_MedicalEmployee_MedicalEmployeeID FOREIGN KEY ( MedicalEmployeeID ) REFERENCES Employee ( MedicalEmployeeID )
);

DROP TABLE IF EXISTS RegisteredNurse
CREATE TABLE RegisteredNurse
(NurseEmployeeID	SMALLINT NOT NULL IDENTITY (1,1),
CertificationDate	DATE
CONSTRAINT PK_RegisteredNurse_NurseEmployeeID	PRIMARY KEY ( NurseEmployeeID )
);

DROP TABLE IF EXISTS Doctor
CREATE TABLE Doctor
(DoctorEmployeeID	SMALLINT NOT NULL IDENTITY (1,1),
MDLicenseNumber		VARCHAR(10) 
CONSTRAINT PK_Doctor_DoctorEmployeeID	PRIMARY KEY  (DoctorEmployeeID)
);

DROP TABLE IF EXISTS Surgeon
CREATE TABLE Surgeon
(SurgeonEmployeeID	SMALLINT NOT NULL IDENTITY (1,1),
ABSCertDate			DATE
CONSTRAINT PK_Surgeon_SurgeonEmployeeID PRIMARY KEY ( SurgeonEmployeeID )
);


DROP TABLE IF EXISTS Insurance
CREATE TABLE Insurance
(PolicyNumber		    VARCHAR(10) NOT NULL,
Company					VARCHAR(30) NOT NULL,
CoveragePlan			VARCHAR(20) NOT NULL
CONSTRAINT PK_Insurance_PolicyNumber	PRIMARY KEY ( PolicyNumber )
);

DROP TABLE IF EXISTS PatientInsurance
CREATE TABLE PatientInsurance
(PatientInsuranceID	    SMALLINT NOT NULL IDENTITY (1,1),
PolicyNumber			VARCHAR(10) NOT NULL,
PatientID				SMALLINT NOT NULL 
CONSTRAINT PK_PatientInsrance_PatientInsuranceID	PRIMARY KEY ( PatientInsuranceID )
CONSTRAINT FK_PatientInsurance_PatientInsuranceID FOREIGN KEY ( PatientInuranceID ) REFERENCES Insurance ( PatientInsuranceID )
);

DROP TABLE IF EXISTS Billing
CREATE TABLE Billing
(PatientInsuranceID		SMALLINT NOT NULL IDENTITY (1,1),
BillIssueDate			DATE,
AmountDue				INT NOT NULL,
DueDate					DATE
CONSTRAINT PK_Billing_PatientInsuranceID	PRIMARY KEY ( PatientInsuranceID ) 
);

DROP TABLE IF EXISTS Patient
CREATE TABLE Patient
(PatientId		SMALLINT NOT NULL IDENTITY (1,1),
FirstName		VARCHAR(25) NOT NULL,
LastName		VARCHAR(25) NOT NULL,
DOB				DATE NOT NULL,
ArrivalDate		DATE NOT NULL,
PatientType		VARCHAR(1)
CONSTRAINT PK_Patient_PatientId		PRIMARY KEY ( PatientID )
);

DROP TABLE IF EXISTS PatientMedication
CREATE TABLE PatientMedication
(PatientID		SMALLINT NOT NULL IDENTITY (1,1),
MedicationID	SMALLINT NOT NULL,
Dosage			VARCHAR(25) NOT NULL,
Instructions	VARCHAR(100) NOT NULL
CONSTRAINT PK_PatientMedication_PatientID_MedicationID PRIMARY KEY ( PatientID , MedicationID )
);

DROP TABLE IF EXISTS Medication
CREATE TABLE Medication
(MedicationID	SMALLINT NOT NULL IDENTITY (1,1),
Name		VARCHAR(25) NOT NULL,
Description	VARCHAR(75) NOT NULL,
QuantityInStock SMALLINT NOT NULL
CONSTRAINT PK_Medication_MedicationID	PRIMARY KEY ( MedicationID )
);

DROP TABLE IF EXISTS OutPatient
CREATE TABLE OutPatient
(PatientId		 SMALLINT NOT NULL IDENTITY (1,1),
HomeInstructions VARCHAR(100) NOT NULL
CONSTRAINT PK_OutPatient_PatientID	PRIMARY KEY ( PatientID )
);

DROP TABLE IF EXISTS InPatient
CREATE TABLE InPatient
(PatientID		SMALLINT NOT NULL IDENTITY (1,1)
CONSTRAINT PK_InPatient_PatientID	PRIMARY KEY ( PatientID )
);

DROP TABLE IF EXISTS PatientRoom
CREATE TABLE PatientRoom
(PatientId			SMALLINT NOT NULL IDENTITY (1,1),
RoomID				SMALLINT NOT NULL,
AttendingEmployeeID	SMALLINT NOT NULL,
CheckInDate			DATE,
ReleaseDate			DATE
CONSTRAINT PK_PatientRoom_PatientID_RoomID PRIMARY KEY ( PatientID, RoomID )
);

DROP TABLE IF EXISTS Room
CREATE TABLE Rooms 
(RoomID		SMALLINT NOT NULL IDENTITY(1,1),
RoomNumber	SMALLINT NOT NULL
CONSTRAINT PK_Room_RoomID	PRIMARY KEY ( RoomID )
);
