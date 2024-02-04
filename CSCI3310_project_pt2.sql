
CREATE TABLE Degree (
                DegreeID NUMBER(5) NOT NULL,
                AreaName VARCHAR2(40) NOT NULL,
                CONSTRAINT DEGREE_PK PRIMARY KEY (DegreeID)
);


CREATE TABLE Event (
                eID NUMBER(6) NOT NULL,
                eLocation VARCHAR2(50) NOT NULL,
                eName VARCHAR2(50) NOT NULL,
                eDate DATE NOT NULL,
                startTime DATE,
                endTime DATE,
                CONSTRAINT EVENT_PK PRIMARY KEY (eID)
);


CREATE TABLE CSUStudents (
                CSUStudentID NUMBER(10) NOT NULL,
                firstName VARCHAR2(40) NOT NULL,
                phoneNum VARCHAR2(40),
                Type CHAR(3) NOT NULL,
                Major VARCHAR2(50) NOT NULL,
                lastName VARCHAR2(40) NOT NULL,
                CONSTRAINT CSUSTUDENTS_PK PRIMARY KEY (CSUStudentID)
);


CREATE TABLE Company (
                CompanyID NUMBER(3) NOT NULL,
                CompanyName VARCHAR2(35) NOT NULL,
                CompanyLocation VARCHAR2(50) NOT NULL,
                CompanySize NUMBER DEFAULT NULL,
                CONSTRAINT COMPANY_PK PRIMARY KEY (CompanyID)
);
COMMENT ON COLUMN Company.CompanyName IS 'company name';
COMMENT ON COLUMN Company.CompanyLocation IS 'company  address';
COMMENT ON COLUMN Company.CompanySize IS 'company employee size';


CREATE TABLE Funds (
                FundID VARCHAR2(2) NOT NULL,
                donationAmount NVARCHAR2(10) DEFAULT 'amount' NOT NULL,
                Dept VARCHAR2(35) DEFAULT 'Department name' NOT NULL,
                lakeConnect NUMBER,
                CONSTRAINT FUNDS_PK PRIMARY KEY (FundID)
);
COMMENT ON COLUMN Funds.lakeConnect IS 'Yes or No accepting laker events emails';


CREATE TABLE Expertise (
                ExID NUMBER(6) NOT NULL,
                exName VARCHAR2(50) NOT NULL,
                CONSTRAINT EXPERTISE_PK PRIMARY KEY (ExID)
);


CREATE TABLE Alumni (
                AlumniID NUMBER(11) NOT NULL,
                firstName NVARCHAR2(10) NOT NULL,
                lastName NVARCHAR2(10) NOT NULL,
                major VARCHAR2(40) NOT NULL,
                workPhone VARCHAR2(10) DEFAULT NULL,
                email VARCHAR2(30) NOT NULL,
                linkedIn VARCHAR2(50) DEFAULT NULL,
                homePhone VARCHAR2(10) NOT NULL,
                CONSTRAINT ALUMNI_PK PRIMARY KEY (AlumniID)
);


CREATE TABLE invitation (
                eID NUMBER(6) NOT NULL,
                AlumniID NUMBER(11) NOT NULL,
                CONSTRAINT INVITATION_PK PRIMARY KEY (eID, AlumniID)
);


CREATE TABLE Donations (
                DonationID VARCHAR2(5) NOT NULL,
                Date_1 DATE NOT NULL,
                totalNum NVARCHAR2(10) NOT NULL,
                AlumniID NUMBER(11) NOT NULL,
                FundID VARCHAR2(2) NOT NULL,
                CONSTRAINT DONATIONS_PK PRIMARY KEY (DonationID)
);


CREATE TABLE AlumniEmployment (
                Alumni_AlumniID NUMBER(11) NOT NULL,
                CompanyID NUMBER(3) NOT NULL,
                dateJoined DATE NOT NULL,
                Salary NUMBER NOT NULL,
                dateLeft DATE DEFAULT NULL,
                jobTitle VARCHAR2(40) NOT NULL,
                CONSTRAINT ALUMNIEMPLOYMENT_PK PRIMARY KEY (Alumni_AlumniID, CompanyID, dateJoined)
);
COMMENT ON COLUMN AlumniEmployment.Alumni_AlumniID IS 'Alumni identification';
COMMENT ON COLUMN AlumniEmployment.dateJoined IS 'Date Alumni worked within company';


CREATE TABLE aExpertise (
                AlumniID NUMBER(11) NOT NULL,
                ExID NUMBER(6) NOT NULL,
                CONSTRAINT AEXPERTISE_PK PRIMARY KEY (AlumniID, ExID)
);


CREATE TABLE Mentor (
                mentorID NUMBER(11) NOT NULL,
                education VARCHAR2(50) NOT NULL,
                AlumniID NUMBER(11) NOT NULL,
                CSUStudentID NUMBER(10) NOT NULL,
                CONSTRAINT MENTOR_PK PRIMARY KEY (mentorID)
);


CREATE TABLE DegreeEarned (
                DegreeID NUMBER(5) NOT NULL,
                AlumniID NUMBER(11) NOT NULL,
                YearOf NUMBER(4) NOT NULL,
                CONSTRAINT DEGREEEARNED_PK PRIMARY KEY (DegreeID, AlumniID)
);


ALTER TABLE DegreeEarned ADD CONSTRAINT DEGREE_DEGREEEARNED_FK
FOREIGN KEY (DegreeID)
REFERENCES Degree (DegreeID)
NOT DEFERRABLE;

ALTER TABLE invitation ADD CONSTRAINT EVENT_INVITATION_FK
FOREIGN KEY (eID)
REFERENCES Event (eID)
NOT DEFERRABLE;

ALTER TABLE Mentor ADD CONSTRAINT CSUSTUDENTS_MENTOR_FK
FOREIGN KEY (CSUStudentID)
REFERENCES CSUStudents (CSUStudentID)
NOT DEFERRABLE;

ALTER TABLE AlumniEmployment ADD CONSTRAINT COMPANY_ALUMNIEMPLOYMENT_FK
FOREIGN KEY (CompanyID)
REFERENCES Company (CompanyID)
NOT DEFERRABLE;

ALTER TABLE Donations ADD CONSTRAINT FUNDS_DONATIONS_FK
FOREIGN KEY (FundID)
REFERENCES Funds (FundID)
NOT DEFERRABLE;

ALTER TABLE aExpertise ADD CONSTRAINT EXPERTISE_AEXPERTISE_FK
FOREIGN KEY (ExID)
REFERENCES Expertise (ExID)
NOT DEFERRABLE;

ALTER TABLE Mentor ADD CONSTRAINT ALUMNI_MENTOR_FK
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

ALTER TABLE aExpertise ADD CONSTRAINT ALUMNI_AEXPERTISE_FK
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

ALTER TABLE AlumniEmployment ADD CONSTRAINT ALUMNI_ALUMNIEMPLOYMENT_FK1
FOREIGN KEY (Alumni_AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

ALTER TABLE Donations ADD CONSTRAINT ALUMNI_DONATIONS_FK
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

ALTER TABLE DegreeEarned ADD CONSTRAINT ALUMNI_DEGREEEARNED_FK
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

ALTER TABLE invitation ADD CONSTRAINT ALUMNI_INVITATION_FK
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
NOT DEFERRABLE;

