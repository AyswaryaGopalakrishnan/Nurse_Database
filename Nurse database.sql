Create Database NurDB
use NurDB
go

CREATE TABLE NURSE (
  [Nurse_ID] Varchar(10) NOT NULL,
  [First Name] varchar(30),
  [Last Name] varchar(30),
  [Phone Number] integer
);

 
Alter Table NURSE
Add constraint PK_Nurse_ID Primary key(Nurse_ID)

CREATE TABLE [DOCTOR] (
  [Doctor_ID] Varchar(10) NOT NULL,
  [First Name] varchar(30),
  [Last Name] varchar(30),
  [Phone Number] integer,
  [Nurse_ID] Varchar(10)
);


Alter Table DOCTOR
Add constraint PK_Doctor_ID Primary key(Doctor_ID)

Alter Table DOCTOR
Add constraint FK_Nurse_ID foreign key(Nurse_ID) references Nurse(Nurse_ID)

CREATE TABLE PATIENT (
  [Patient_ID] Varchar(10) NOT NULL,
  [First Name] Varchar(30),
  [last Name] Varchar(30),
  [Phone Number] Integer,
  [Nurse_ID] Varchar(10),
  [Doctor_ID] Varchar(10)
);

Alter Table PATIENT
Add constraint PK_Patient_ID Primary key(Patient_ID)

Alter Table PATIENT
Add constraint FK_Nurse_ID1 foreign key(Nurse_ID) references Nurse(Nurse_ID)

Alter Table PATIENT
Add constraint FK_Doctor_ID foreign key(Doctor_ID) references Doctor(Doctor_ID)


CREATE TABLE [DEPENDENT INFORMATION] (
  [National_Id] Integer NOT NULL,
  [First Name] Varchar(30),
  [Last Name] Varchar(30),
  [Phone Number] Integer,
  [Nurse_ID] Varchar(10)
);

Alter Table [DEPENDENT INFORMATION]
Add constraint PK_National_ID Primary key(National_ID)

Alter Table [DEPENDENT INFORMATION]
Add constraint FK_Nurse_ID2 foreign key(Nurse_ID) references Nurse(Nurse_ID)

CREATE TABLE [WORK SCHEDULE] (
  Nurse_ID Varchar(10) NOT NULL,
  Total_shifts integer NOT NULL,
  [Salary] integer NOT NULL
);

ALTER TABLE [Work Schedule]
ADD CONSTRAINT UC_sal UNIQUE (Salary);

Alter Table [WORK SCHEDULE]
Add constraint PK_Schedule Primary key(Nurse_ID,Total_shifts)

Alter Table [WORK SCHEDULE]
Add constraint FK_Nurse_ID3 foreign key(Nurse_ID) references Nurse(Nurse_ID)

CREATE TABLE [ACCOUNT DETAILS] (
  [Account number] Integer NOT NULL,
  [Routing Number] Integer,
  [Name on the Account] Varchar(30),
  [Name of the bank] Varchar(100),
  [Nurse_ID] Varchar(10) NOT NULL
);


Alter Table [ACCOUNT DETAILS]
Add constraint PK_Account_No Primary key([Account number])


Insert into NURSE Values('N001','Alex','Charles',469558)
Insert into NURSE Values('N002','Arya','Stark',469027)
Insert into NURSE Values('N003','Catherine','Pierce',469028)
Insert into NURSE Values('N004','Cassie','Donavon',469029)
Insert into NURSE Values('N005','Chandler','Bing',469030)
Insert into NURSE Values('N006','Damon','Salvatore',469031)
Insert into NURSE Values('N007','Elena','Gilbert',469032)
Insert into NURSE Values('N008','Joey','Tribiani',469033)
Insert into NURSE Values('N009','Monica','Geller',469034)
Insert into NURSE Values('N010','Rachel','Green',469035)
Insert into NURSE Values('N011','Ross','Geller',469036)

Select * from NURSE


Insert into DOCTOR Values('D001','Phoebe','Buffay',241510,'N001')
Insert into DOCTOR Values('D002','Jennifer','Aniston', 241511,'N002')
Insert into DOCTOR Values('D003','David','Schimmer', 241512,'N003')
Insert into DOCTOR Values('D004','Courtney','Cox', 241513,'N004')
Insert into DOCTOR Values('D005','Matt','Blanc', 241514,'N005')
Insert into DOCTOR Values('D006','Mathew','Perry', 241515,'N006')
Insert into DOCTOR Values('D007','Paul','Wesly', 241516,'N007')
Insert into DOCTOR Values('D008','Ian','Somerhalder', 241517,'N008')
Insert into DOCTOR Values('D009','Candice','King', 241518,'N009')
Insert into DOCTOR Values('D010','Claire','Holt', 241519,'N010')
Insert into DOCTOR Values('D011','Kayla','Well', 241520,'N011')

Select * from DOCTOR

Insert into PATIENT Values('P001','Shawn','Mendes', 432890,'N001','D001')
Insert into PATIENT Values('P002','Camilo','Cabelo', 432891,'N002','D002')
Insert into PATIENT Values('P003','Emma','Watson', 432892,'N003','D003')
Insert into PATIENT Values('P004','Charlie','Puth', 432893,'N004','D004')
Insert into PATIENT Values('P005','Ed','Sheeran', 432894,'N005','D005')
Insert into PATIENT Values('P006','Taylor','Swift', 432895,'N006','D006')
Insert into PATIENT Values('P007','Jughead','Jones', 432896,'N007','D007')
Insert into PATIENT Values('P008','Elizabeth','Cooper', 432897,'N008','D008')
Insert into PATIENT Values('P009','Archie','Andrews', 432898,'N009','D009')
Insert into PATIENT Values('P010','Veronica','Lodge', 432899,'N010','D010')
Insert into PATIENT Values('P011','Cheryl','Blossom', 432820,'N011','D011')

Select * from PATIENT

Insert into [DEPENDENT INFORMATION] Values('1001','Sabrina','Charles', 213780,'N001')
Insert into [DEPENDENT INFORMATION] Values('1002','Gwalior','Stark', 213781,'N002')
Insert into [DEPENDENT INFORMATION] Values('1003','Emilia','Pierce', 213782,'N003')
Insert into [DEPENDENT INFORMATION] Values('1004','Mathew','Donavan', 213783,'N004')
Insert into [DEPENDENT INFORMATION] Values('1005','Petrova','Bing',213784,'N005')
Insert into [DEPENDENT INFORMATION] Values('1006','George','Salvatore', 213785,'N006')
Insert into [DEPENDENT INFORMATION] Values('1007','Delena','Gilbert', 213786,'N007')
Insert into [DEPENDENT INFORMATION] Values('1008','krithi','Tribiaani', 213787,'N008')
Insert into [DEPENDENT INFORMATION] Values('1009','Hannah','Geller', 213788,'N009')
Insert into [DEPENDENT INFORMATION] Values('10010','Amy','Green', 213789,'N010')
Insert into [DEPENDENT INFORMATION] Values('1011','Judy','Geller', 213772,'N011')


Select * from [DEPENDENT INFORMATION]

Insert into [ACCOUNT DETAILS] Values(516723,795643,'Alex Charles','JC Morgan Chase','N001')
Insert into [ACCOUNT DETAILS] Values(516772, 795594,'Arya Stark' ,'Bank of America','N002')
Insert into [ACCOUNT DETAILS] Values(516821,795545,'Catherine Pierce', 'Wells Fargo','N003')
Insert into [ACCOUNT DETAILS] Values(516870,795496,'Cassie Donavan', 'Capital One','N004')
Insert into [ACCOUNT DETAILS] Values(516919,795447,'Chandler Bing', 'Federal Bank of America','N005')
Insert into [ACCOUNT DETAILS] Values(516968, 795398,'Damon Salvatore', 'Wells Fargo','N006')
Insert into [ACCOUNT DETAILS] Values(517017, 795349,'Elena Gilbert','Bank of America','N007')
Insert into [ACCOUNT DETAILS] Values(517066, 795300,'Joey Tribiaani','JC Morgan Chase','N008')
Insert into [ACCOUNT DETAILS] Values(517115, 795251,'Monica Geller', 'Capital One','N009')
Insert into [ACCOUNT DETAILS] Values(517164, 795202,'Rachel Green', 'Federal Bank of America','N010')
Insert into [ACCOUNT DETAILS] Values(517213, 795153,'Ross Geller', 'Bank of Texas','N011')



Select * from [ACCOUNT DETAILS] 

Insert into [WORK SCHEDULE] Values('N001',13,0)
Insert into [WORK SCHEDULE] Values('N002',14,0)
Insert into [WORK SCHEDULE] Values('N003',10,0)
Insert into [WORK SCHEDULE] Values('N004',8,0)
Insert into [WORK SCHEDULE] Values('N005',11,0)
Insert into [WORK SCHEDULE] Values('N006',9,0)
Insert into [WORK SCHEDULE] Values('N007',12,0)
Insert into [WORK SCHEDULE] Values('N008',15,0)
Insert into [WORK SCHEDULE] Values('N009',16,0)
Insert into [WORK SCHEDULE] Values('N010',7,0)
Insert into [WORK SCHEDULE] Values('N011',17,0)




UPDATE [WORK SCHEDULE]
SET Salary=Total_shifts*80

UPDATE [NURSE]
SET Nurse_ID='N010'
where Nurse_ID='N0010'

sELECT * FROM [WORK SCHEDULE]
UPDATE [NURSE]
SET [Last Name]=''
where Nurse_ID='N004'

Select * from NURSE
Select * from DOCTOR
Select * from PATIENT
Select * From [ACCOUNT DETAILS]
Select * from [WORK SCHEDULE]
Select * from [DEPENDENT INFORMATION]

/* Inner Join */

Select n.Nurse_ID,n.[First Name],n.[Last Name],n.[Phone Number],d.Doctor_ID 
from Nurse as n
Inner Join  Doctor as d 
On d.Nurse_ID=n.Nurse_ID
where n.Nurse_ID in ('N001','N003','N007')

/* Full Join */

Select n.Nurse_ID,n.[First Name],n.[Last Name],n.[Phone Number],w.Salary
from Nurse as n
Full Join  [WORK SCHEDULE] as w
On w.Nurse_ID=n.Nurse_ID
where n.Nurse_ID in ('N001','N003','N007')

/* Left Outer Join */

Select n.Nurse_ID,n.[First Name],n.[Last Name],n.[Phone Number],w.Salary
from Nurse as n
Left Outer Join  [WORK SCHEDULE] as w
On w.Nurse_ID=n.Nurse_ID
where n.[First Name] Like 'c%' 


/* Right Outer Join */

Select n.Nurse_ID,n.[First Name],n.[Last Name],n.[Phone Number],w.Salary,w.Total_shifts
from NURSE as n
right Outer Join  [WORK SCHEDULE] as w
On w.Nurse_ID=n.Nurse_ID
where w.Salary<900


/* Intersect */

SELECT Nurse_ID, Doctor_ID
FROM PATIENT
where [First Name] like'%a%'


INTERSECT

SELECT Nurse_ID,Doctor_ID
FROM DOCTOR
WHERE [First Name] not like '%a%'

/* Union */

SELECT Patient_ID as ID,[First Name],[last  Name]
FROM PATIENT
where [First Name]like'%e%'

Union

SELECT Doctor_ID as ID,[First Name],[last Name]
FROM DOCTOR
WHERE [First Name] not like '%e%'


/* Except */

SELECT Nurse_ID,Doctor_ID
FROM PATIENT
where [First Name] like'%l%'

Except

SELECT Nurse_ID,Doctor_ID
FROM DOCTOR
WHERE [First Name] not like '%l%'