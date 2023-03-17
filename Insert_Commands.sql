USE Group_Project_Hospital;

--Inserting Patient
INSERT INTO Patient(FirstName, LastName, DOB, ArrivalDate,PatientType)
VALUES ('Diana', 'Roberts', '2000-09-08', '2021-09-12', 'I'),
('Dian', 'Robert', '2002-08-15', '2022-01-20', 'O'),
('Dean', 'Rob', '2015-12-12', '2019-05-05', 'I'),
('Diana', 'Ro', '2000-08-12', '2021-08-12', 'O'),
('Diana', 'R', '2000-03-08', '2021-06-12', 'I'),
('D', 'Rerts', '2000-01-08', '2021-04-12', 'O'),
('Breana', 'Oberts', '2000-01-08', '2021-09-12', 'I'),
('Brenda', 'Obert', '2000-02-08', '2015-07-12', 'O'),
('Ben', 'Berts', '2000-04-08', '2016-06-21', 'I'),
('Brendan', 'Bert', '2000-09-08', '2017-09-18', 'O'),
('Desco', 'Tern', '2000-09-08', '2014-09-19', 'O'),
('Bevnov', 'Smith', '2000-09-08', '2018-09-17', 'I'),
('Develop', 'Williams', '2000-09-08', '2017-09-14', 'O'),
('Robert', 'Will', '2000-09-08', '2016-09-15', 'I'),
('Zeppo', 'Condo', '1940-09-08', '2021-07-12', 'O');


--Inserting Employee
INSERT INTO Employee(FirstName, LastName, HireDate, EmployeeType)
VALUES ('Brenda','Ron','1998-08-08','M'),
('B','Ronda','1999-07-07','N'),
('Renda','Ronin','2000-12-12','M'),
('Enda','Rob','2001-01-01','N'),
('Da','R','2002-02-02','M'),
('Bren','Smith','2003-03-03','N'),
('Brandon','Williams','2004-04-04','M'),
('Brand','Jefferson','2005-05-05','N'),
('Randon','Leedle','2000-06-06','M'),
('Old','Fart','1888-01-01','N'),
('Donn','Ronn','2000-12-30','M'),
('Brendon','Ron','1998-01-08','N'),
('Raiden','Ron','1998-08-07','M'),
('Gavin','Ron','1998-05-30','N'),
('Cliff','Ron','1998-01-21','N')

--Inserting into Insurance
INSERT INTO Insurance(PolicyNumber, Company, CoveragePlan)
VALUES 
('1452654','Merit Medical','Full Coverage'),
('1523645','Blue Cross','Double Coverage'),
('1234567','Bear Medical','Half Coverage'),
('1345678','Merit Medical','Full Coverage'),
('3546789','Bear Medical','Double Coverage'),
('8794512','Blue Cross','Full Coverage'),
('8974513','Merit Medical','Double Coverage'),
('7415123','Blue Cross','Full Coverage'),
('6541234','Merit Medical','Half Coverage'),
('8794561','Merit Medical','Double Coverage'),
('1235451','Merit Medical','Full Coverage'),
('1452123','Blue Cross','Double Coverage'),
('1452789','Blue Cross','Half Coverage'),
('1452647','Bear Medical','Half Coverage'),
('1452874','Bear Medical','Half Coverage')


--Inserting into Patient Insurance
INSERT INTO PatientInsurance ( PolicyNumber, PatientID)
VALUES('1452654','2'),
      ('1523645','3'),
      ('1234567','4'),
      ('1345678','5'),
      ('3546789','6'),
      ('8794512','7'),
      ('8974513','8'),
      ('7415123','9'),
      ('6541234','10'),
      ('8794561','11'),
      ('1235451','12'),
      ('1452123','13'),
      ('1452789','14'),
      ('1452647','15'),
      ('1452874','1')
	  SELECT*FROM PatientInsurance;
--Inserting into Medication
INSERT INTO Medication(Name, Description, QuantityInStock)
VALUES ('Taraza','Makes one tell the truth','20'),
('Ordrade','Brings clear headedness','30'),
('Sheena','Makes one more energetic','50'),
('Lucilla','Brings calmness to the mind','48'),
('Shwangu','A pain killer but make become violent','71'),
('Maudadib','May Cause hallucinations and vommiting','53'),
('Shaitan','Helps bone and nerve recovery','67'),
('Ixian','May help with listening and retention','17'),
('Guanima','Able to read minds','25'),
('Sandworm','Makes you into a worm','74'),
('Sandtrout','Helps with agility and muscle strength','97'),
('Shianoq','Makes people more impressionable','124'),
('Gammu','Become more vibrant and full of life','567'),
('Caladan','Cures headaches','56'),
('Arrakis','Cures stomach pains','234')

--Inserting into Patient Medication
INSERT INTO PatientMedication(PatientID, MedicationID, Dosage, Instructions )
VALUES
('1', '1' ,'2mg','Take two before bed'),
('15','2','2mL', 'Twice per day 12hrs apart'),
('14','3','2mg', 'Once a day in the morning with food'),
('13','4','3L', 'Drink with Alcohol'),
('12','5','5mg', 'Once at night with water'),
('11','6','1mg', 'Twice a day with food'),
('10','7','2mg', 'One per time, twice a day'),
('9','8','1mg', 'Two per time, once a day'),
('8','9','3L', 'Drink throughout the day'),
('7','10','2mg', 'Before bed with bedtime stories'),
('6','11','3L', 'Must have with coffee'),
('5','12','1mg', 'Three times a day, one at a time'),
('4','13','2mg', 'One every other day'),
('3','14','3L', 'Chug the whole thing once a week'),
('2','15','1L', 'Drink twice a day')

--Inserting into Billing
INSERT INTO Billing(PatientInsuranceID,BillIssueDate, AmountDue, DueDate)
VALUES 
('1','2020-05-05','20000','2020-09-05'),
('9','2020-07-07','2100','2020-09-07'),
('10','2020-08-09','3150','2021-01-30'),
('11','2020-09-30','5000','2022-05-15'),
('12','2020-10-31','5000','2020-12-30'),
('13','2020-11-01','5000','2022-01-01'),
('14','2020-12-08','5000','2021-05-30'),
('15','2020-01-07','5000','2021-06-15'),
('16','2020-02-08','5000','2021-06-06'),
('17','2020-03-15','5000','2023-01-17'),
('18','2020-04-16','5000','2020-09-15'),
('19','2020-05-17','5000','2020-10-30'),
('20','2020-06-18','5000','2020-12-30'),
('21','2020-07-19','5000','2020-12-01'),
('22','2020-08-20','5000','2021-01-05')

--Inserting into Out_Patient
INSERT INTO OutPatient(PatientID, HomeInstructions)
VALUES 
('1','Ice Everynight before bed for 20 minutes'),
('3','Do stretches in the morning and at night'),
('5','Make sure to get enough sleep'),
('7','Do Stretches before bed'),
('9','Yoga every morning and do stretches at night'),
('11','Avoid salt and make sure to get enough protein'),
('13','Walk around until soreness starts to occur then ice'),
('15','Do exercieses everynight and morning')

--Inserting into In_Patient
INSERT INTO InPatient(PatientID)
VALUES 
('2'),
('4'),
('6'),
('8'),
('10'),
('12'),
('14')

--Inserting into Room
INSERT INTO Room (RoomNumber)
VALUES 
('15'),
('14'),
('13'),
('12'),
('11'),
('10'),
('09'),
('08'),
('07'),
('06'),
('05'),
('04'),
('03'),
('02'),
('01')

--Inserting into Employee Phone Number
INSERT INTO PhoneNumber(EmployeeID, PhoneNumber, PrimaryPhoneFlag)
VALUES 
('1','4103253578','Y'),
('1','3182101720','N'),
('2','2102891957','Y'),
('3','9162517859','Y'),
('4','1231259785','N'),
('4','2568976934','Y'),
('5','4068747824','Y'),
('6','9872657845','Y'),
('7','9748529874','Y'),
('8','9877418521','Y'),
('9','7419877412','Y'),
('10','3571599512','Y'),
('11','7538524569','Y'),
('12','9877894123','Y'),
('13','6547891234','Y')

--Inserting into Employee Email
INSERT INTO Email(EmployeeID, Email)
VALUES 
('1','123@gmail.com'),
('2','321@gmail.com'),
('3','getsome@gmail.com'),
('4','awesomeness@gmail.com'),
('5','gamingemail@gmai.com'),
('6','fanboz@gmail.com'),
('7','theboys@gmail.com'),
('8','strangerthings@gmail.com'),
('9','ozarks@gmail.com'),
('10','solaropposites@gmail.com'),
('11','rickandmorty@gmail.com'),
('12','onepunch@gmail.com'),
('13','hunterxhunter@gmail.com'),
('14','naruto@gmail.com'),
('15','attackontitan@gmail.com')



--Inserting into Medical Employee
INSERT INTO MedicalEmployee(MedicalEmployeeID, AttendedUniversity, MedicalEmployeeType)
VALUES 
('1','Brown Unversity','S'),
('3','Cornell Unversity','D'),
('5','Harvard Unverity','N'),
('7','University of Utah','S'),
('9','University of Utah','D'),
('11','University of Utah','S'),
('13','Brigham Young Unversity','N')

SELECT * FROM MedicalEmployee WHERE MedicalEmployeeType = 'N';
--Inserting into Surgeon
INSERT INTO Surgeon (SurgeonEmployeeID, ABSCertDate)
VALUES 
('1','2005-05-05'),
('7','2021-07-07'),
('11','2020-12-07')

--Inserting into Doctor
INSERT INTO Doctor(DoctorEmployeeID, MDLicenseNumber)
VALUES ('3','1567894'),
('9','4987651')

--Inserting into Nurse
INSERT INTO RegisteredNurse(NurseEmployeeID,CertificationDate)
VALUES ('5','2020-12-15'),
('13','2021-08-08')


--Inserting into NonMedical Employee
INSERT INTO NonMedical(NonMedicalEmployeeID, NonMedicalEmployeeType)
VALUES 
('2','F'),
('4','C'),
('6','F'),
('8','C'),
('10','F'),
('12','C'),
('14','F')

SELECT*FROM NonMedical WHERE NonMedicalEmployeeType = 'C';
--Inserting into Front_Desk
INSERT INTO FrontDesk(FDEmployeeID, WeeklyHours, HourlyWage)
VALUES 
('2','30','12'),
('6','25','11'),
('10','35','12'),
('14','32','13')


--Inserting into Corporate
INSERT INTO Corporate (CorporateEmployeeID, Salary, Department)
VALUES ('4', '50000','Human Resources'),
('8','80000','Accounting'),
('12','85000','Finance')

--Inserting into Patient_Room
INSERT INTO PatientRoom(PatientID, RoomID, AttendingEmployeeID,CheckInDate,ReleaseDate)
VALUES 
('1','15','5','2020-03-30','2022-01-02'),
('3','14','5','2020-05-05','2022-05-03'),
('5','13','5','2020-12-30','2022-08-15'),
('7','12','13','2020-12-05','2022-01-12'),
('9','11','13','2021-01-15','2021-05-15'),
('12','10','13','2021-05-18','2021-09-15'),
('14','09','5','2021-06-21','2021-09-30')



