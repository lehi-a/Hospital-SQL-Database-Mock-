
--InPatient vs OutPatient Count
SELECT COUNT(PatientType) AS InPatientCount,
	(SELECT COUNT(PatientType) 
		FROM Patient
		WHERE PatientType = 'O') AS OutPatientCount
FROM Patient
WHERE PatientType = 'I'

--Patients with last names starting with S
SELECT FirstName,
	   LastName	
FROM Patient
WHERE LastName LIKE 'S%'

--View what room numbers each patient is in
SELECT P.FirstName,
	   P.LastName,
	   R.RoomNumber
FROM Patient AS P
INNER JOIN PatientRoom AS PR ON P.PatientId = PR.PatientId
INNER JOIN Room AS R ON PR.RoomID = R.RoomID

--Finding employee contact info
SELECT E.FirstName,
	   E.LastName,
	   PN.PhoneNumber,
	   PN.PrimaryPhoneFlag
FROM Employee AS E
INNER JOIN PhoneNumber AS PN ON E.EmployeeID = PN.EmployeeID

--Finding which front desk employees worked most to consider for promotion
SELECT E.FirstName,
	   E.LastName,
	   E.HireDate,
	   FD.WeeklyHours
FROM Employee AS E
INNER JOIN FrontDesk AS FD ON E.EmployeeID = FD.FDEmployeeID
ORDER BY FD.WeeklyHours DESC

--Adding a new employee (Stored Procedure)
CREATE PROCEDURE AddEmployee
	@FirstName		VARCHAR(25),
	@LastName		VARCHAR(25),
	@HireDate		DATE,
	@EmployeeType	VARCHAR(1)
AS
BEGIN
	DECLARE @EmployeeID SMALLINT;

	INSERT INTO Employee (FirstName, LastName, HireDate, EmployeeType)
	VALUES (@FirstName, @LastName, @HireDate, @EmployeeType);
	SET @EmployeeID = SCOPE_IDENTITY();

END;

--Updating insurance policy number 
CREATE PROCEDURE UpdateInsurance
	@PolicyNumber			VARCHAR(10)
AS
BEGIN
	DECLARE @PatientInsuranceID SMALLINT;

	UPDATE PatientInsurance
	SET @PolicyNumber = '123456' --Input new policy number
	WHERE @PatientInsuranceID = '1' --Input unique insurance ID identifier

END;

--Adding a new patient
CREATE PROCEDURE AddPatient
	@FirstName		VARCHAR(25),
	@LastName		VARCHAR(25),
	@DOB			DATE,
	@ArrivalDate	DATE,
	@PatientType	VARCHAR(1)
AS
BEGIN
	DECLARE @PatientId SMALLINT;

	INSERT INTO Patient(FirstName, LastName, DOB, ArrivalDate, PatientType)
	VALUES (@FirstName, @LastName, @DOB, @ArrivalDate, @PatientType);
	SET @PatientId = SCOPE_IDENTITY();

END;

--View for customer's whose bill is due in less than 2 weeks
CREATE VIEW PatientBillDue AS
	SELECT P.FirstName,
		   P.LastName,
		   PIN.PolicyNumber,
		   B.DueDate
	FROM Patient AS P
	INNER JOIN PatientInsurance AS PIN ON P.PatientId = PIN.PatientID
	LEFT OUTER JOIN Billing AS B ON PIN.PatientInsuranceID = B.PatientInsuranceID
	WHERE DATEDIFF(DAY, B.DueDate, GETDATE()) < 14;

--Patient older than 65 and their medications view
CREATE VIEW PatientOver65YOMedications AS
SELECT P.FirstName,
		   P.LastName,
		   DATEDIFF(YEAR, P.DOB, GETDATE()) AS Age,
		   M.Name,
		   PM.Dosage
	FROM Patient AS P
	INNER JOIN PatientMedication AS PM ON P.PatientId = PM.PatientID
	INNER JOIN Medication AS M ON PM.MedicationID = M.MedicationID
	WHERE DATEDIFF(YEAR, GETDATE(), P.DOB) >= 65
	GROUP BY P.FirstName,
		     P.LastName,
			 DATEDIFF(YEAR, P.DOB, GETDATE()),
			 M.Name,
		     PM.Dosage;
			 




 