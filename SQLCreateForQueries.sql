CREATE TABLE ptblModel
(ModelID char(6),
ModelName varchar(30) NOT NULL,
ModelDescription varchar(30) NOT NULL,
RecommendedPrice money,
CONSTRAINT pkpModel
PRIMARY KEY (ModelID));

CREATE TABLE ptblProduct
(SerialNumber char(12),
ModelID char(6) NOT NULL,
CONSTRAINT pkSerialNumber
PRIMARY KEY (SerialNumber),
CONSTRAINT fkModel
FOREIGN KEY (ModelID) REFERENCES ptblModel (ModelID));

CREATE TABLE ptblCustomer
(CustomerID int,
CustomerLastName varchar(30) NOT NULL,
CustomerFirstName varchar(30) NOT NULL,
CustomerAddress varchar(40) NOT NULL,
CustomerCity varchar(30) NOT NULL,
CustomerState char(2) NOT NULL,
CustomerZip varchar(12) NOT NULL,
CustomerEmail varchar(30) NOT NULL,
CustomerPhone char(10) NOT NULL,
CONSTRAINT pkpCustomer
PRIMARY KEY (CustomerID));


CREATE TABLE ptblDistributor
(DistributorID int,
DistributorName varchar(60) NOT NULL,
DistributorAddress varchar(40) NOT NULL,
DistributorCity varchar(30) NOT NULL,
DistributorState char(2) NOT NULL,
DistributorZip varchar(12) NOT NULL,
DistributorEmail varchar(30) NOT NULL,
DistributorPhone char(10) NOT NULL,
CONSTRAINT pkpDistributor
PRIMARY KEY (DistributorID));

CREATE TABLE ptblUser
(UserID int,
UserLastName varchar(30) NOT NULL,
UserFirstName varchar(30) NOT NULL,
UserAddress varchar(40) NOT NULL,
UserCity varchar(30) NOT NULL,
UserState char(2) NOT NULL,
UserZip varchar(12) NOT NULL,
UserEmail varchar(30) NOT NULL,
UserPhone char(10) NOT NULL,
CONSTRAINT pkpUser
PRIMARY KEY (UserID));

CREATE TABLE ptblOther
(OtherID int,
OtherLastName varchar(30) NOT NULL,
OtherFirstName varchar(30) NOT NULL,
OtherAddress varchar(40) NOT NULL,
OtherCity varchar(30) NOT NULL,
OtherState char(2) NOT NULL,
OtherZip varchar(12) NOT NULL,
OtherEmail varchar(30) NOT NULL,
OtherPhone char(10) NOT NULL,
CONSTRAINT pkpOther
PRIMARY KEY (OtherID));

CREATE TABLE ptblEmployee
(EmployeeID int,
EmployeeLastName varchar(30) NOT NULL,
EmployeeFirstName varchar(30) NOT NULL,
JobDescription varchar(60) NOT NULL,
CONSTRAINT pkpEmployee
PRIMARY KEY (EmployeeID));

CREATE TABLE ptblComplaint
(ComplaintID int,
ComplaintType varchar(8) NOT NULL
CONSTRAINT pkpComplaintID
PRIMARY KEY (ComplaintID));
 
CREATE TABLE ptblProblem
(ProblemID int,
ProblemType varchar(200) NOT NULL,
CONSTRAINT pkpProblemID
PRIMARY KEY (ProblemID));

CREATE TABLE ptblTest
(TestID int,
TestType varchar(20),
CONSTRAINT pkpTestID
PRIMARY KEY (TestID));

CREATE TABLE ptblProblemReport
(ReportID int,
SerialNumber char(12) NOT NULL,
ProblemID int NOT NULL,
ComplaintID int NOT NULL,
CustomerID int,
DistributorID int,
UserID int,
EmployeeID int,
OtherID int,
ReportDate date NOT NULL,
ProblemDescription varchar(500) NOT NULL,
Injury bit NOT NULL,
InjuryDescription varchar(500),
ReturnDate date,
CONSTRAINT pkpReport
PRIMARY KEY (ReportID),
CONSTRAINT fkProblemReportSerialNumber
FOREIGN KEY (SerialNumber) REFERENCES ptblProduct (SerialNumber),
CONSTRAINT fkProblemReportProblem
FOREIGN KEY (ProblemID) REFERENCES ptblProblem (ProblemID),
CONSTRAINT fkProblemReportComplaint
FOREIGN KEY (ComplaintID) REFERENCES ptblComplaint (ComplaintID),
CONSTRAINT fkCustomerReporter
FOREIGN KEY (CustomerID) REFERENCES ptblCustomer (CustomerID),
CONSTRAINT fkDistributorReporter
FOREIGN KEY (DistributorID) REFERENCES ptblDistributor (DistributorID),
CONSTRAINT fkUserReporter
FOREIGN KEY (UserID) REFERENCES ptblUser (UserID),
CONSTRAINT fkEmployeeReporter
FOREIGN KEY (EmployeeID) REFERENCES ptblEmployee (EmployeeID),
CONSTRAINT fkOtherReporter
FOREIGN KEY (OtherID) REFERENCES ptblOther (OtherID));

CREATE TABLE ptblTestReport
(TestReportID int,
ReportID int NOT NULL,
TestID int NOT NULL,
EmployeeID int NOT NULL,
TestDate date NOT NULL,
TestDescription varchar(500) NOT NULL,
TestResults varchar(200) NOT NULL,
Recommendation varchar(500),
TestComplete bit NOT NULL,
CONSTRAINT pkpTestReport
PRIMARY KEY (TestReportID),
CONSTRAINT fkTestReportProblemReport
FOREIGN KEY (ReportID) REFERENCES ptblProblemReport (ReportID),
CONSTRAINT fkTestReportTest
FOREIGN KEY (TestID) REFERENCES ptblTest (TestID),
CONSTRAINT fkTestReportEmployee
FOREIGN KEY (EmployeeID) REFERENCES ptblEmployee (EmployeeID));
