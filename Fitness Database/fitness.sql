PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

DROP TABLE if exists People;
DROP TABLE if exists Routines;
DROP TABLE if exists Exercises;
DROP TABLE if exists People_Routines;
DROP TABLE if exists Routine_Exercises;
DROP TABLE if exists Person_Routine_Exercises;

CREATE TABLE  if not exists People(
	PersonID integer NOT NULL primary key,
	Name varchar(50),
	DOB varchar(10),
	Address varchar(50), 
	City varchar(20),
	State varchar(5),
	Zip varchar(10),
	Phone varchar(20)
	);
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Muhammad Mustafa', '21-07-1992', '3605 Kariya Drive', 'Ottawa', 'ON', 'L5B-3J4', '613-314-0465');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Abdul Bin Asif', '23-07-1988', '1460 Kariya Drive', 'Ottawa', 'ON', 'L5B-3Q2', '613-314-1234');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Ray Tarra', '13-04-1992', '460 Heron Rd', 'Ottawa', 'ON', 'Q1B-2F6', '613-780-0565');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Ehsan Mallock', '12-03-1989', '1460 Prince Of Wales Drive', 'Ottawa', 'ON', 'K1V-9X6', '613-218-8312');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Salman Aslam', '21-11-1996', '1800 Medowlands Drive', 'Ottawa', 'ON', 'L5B-3Y4', '613-323-1320');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Hassan Paracha', '05-07-1993', '240 Hunt Club Rd', 'Ottawa', 'ON', 'L1B-3T4', '613-354-0565');
INSERT INTO People (Name, DOB, Address, City, State, Zip, Phone) VALUES ('Mr Perfect', '05-04-1991', '110 Hunt Club Rd', 'Ottawa', 'ON', 'L1C-3H4', '613-154-0165');

CREATE TABLE if not exists Routines(
	RoutineID varchar(5) NOT NULL primary key,
	Routine_Name varchar(50)
	);
INSERT INTO "Routines" VALUES('R01','Chest/Tricep');
INSERT INTO "Routines" VALUES('R02','Back/Bicep');
INSERT INTO "Routines" VALUES('R03','Legs');
INSERT INTO "Routines" VALUES('R04','Shoulder/Calves');
INSERT INTO "Routines" VALUES('R05','HIIT');

CREATE TABLE if not exists Exercises(
	ExerciseID varchar(10) NOT NULL primary key,
	Exercise_Name varchar(50)
	);
INSERT INTO "Exercises" VALUES('BK01', 'Bent Over Rows');
INSERT INTO "Exercises" VALUES('BK02', 'Deadlifts');
INSERT INTO "Exercises" VALUES('BK03', 'Lat Pulls');
INSERT INTO "Exercises" VALUES('BK04', 'Cable Rows');
INSERT INTO "Exercises" VALUES('BK05', 'Good-Mornings');
INSERT INTO "Exercises" VALUES('BK06', 'Pull-ups');
INSERT INTO "Exercises" VALUES('BI01', 'Concentrated Curls');
INSERT INTO "Exercises" VALUES('BI02', 'Side Curls');
INSERT INTO "Exercises" VALUES('BI03', 'Cable Curls');
INSERT INTO "Exercises" VALUES('BI04', 'Cable Close Grip Curls');
INSERT INTO "Exercises" VALUES('TR01', 'Skull Crushers');
INSERT INTO "Exercises" VALUES('TR02', 'Cable Extensions');
INSERT INTO "Exercises" VALUES('TR03', 'Close Grip Bench Press');
INSERT INTO "Exercises" VALUES('TR04', 'Single-Handed Bent Extensions');
INSERT INTO "Exercises" VALUES('TR05', 'Concentrated Cable Extensions');
INSERT INTO "Exercises" VALUES('CH01', 'Flat Bench Press');
INSERT INTO "Exercises" VALUES('CH02', 'Incline Bench Press');
INSERT INTO "Exercises" VALUES('CH03', 'Decline Bench Press');
INSERT INTO "Exercises" VALUES('CH04', 'Lower Cable Extensions');
INSERT INTO "Exercises" VALUES('CH05', 'Upper Cable Extensions');
INSERT INTO "Exercises" VALUES('CH06', 'Fly Machine');
INSERT INTO "Exercises" VALUES('SH01', 'Shoulder Press');
INSERT INTO "Exercises" VALUES('SH02', 'Front Raises');
INSERT INTO "Exercises" VALUES('SH03', 'Side Raises');
INSERT INTO "Exercises" VALUES('LG01', 'Squat');
INSERT INTO "Exercises" VALUES('LG02', 'Leg Raises');
INSERT INTO "Exercises" VALUES('LG03', 'Leg Presses');
INSERT INTO "Exercises" VALUES('LG04', 'Leg Curls');
INSERT INTO "Exercises" VALUES('LG05', 'Calves Raises');
INSERT INTO "Exercises" VALUES('AB01', 'Crunches');
INSERT INTO "Exercises" VALUES('AB02', 'Hanging Leg Raises');
INSERT INTO "Exercises" VALUES('AB03', 'Planks');
INSERT INTO "Exercises" VALUES('AB04', 'Weighted Sided Standing Crunches');
INSERT INTO "Exercises" VALUES('BD01', 'Interval Sprints');
INSERT INTO "Exercises" VALUES('BD02', 'Lunges');
INSERT INTO "Exercises" VALUES('BD03', 'Push-ups');
INSERT INTO "Exercises" VALUES('BD04', 'Biking');
INSERT INTO "Exercises" VALUES('BD05', 'Burpees');
INSERT INTO "Exercises" VALUES('BD06', 'Full Lap Runs');

CREATE TABLE if not exists People_Routines(
	Person_RoutineID integer NOT NULL primary key,
	PersonID integer,
	RoutineID varchar(5),
	Routine_Date varchar(10),
	Time_Taken_in_mins varchar(5),
	foreign key (PersonID) references People(PersonID) on delete cascade,
	foreign key (RoutineID) references Routines(RoutineID) on delete cascade
	);
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(1, 'R01', '21-06-2015', '65');
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(2, 'R02', '25-08-2015', '60');
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(3, 'R03', '25-12-2015', '73');
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(4, 'R04', '07-07-2014', '65');
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(5, 'R05', '13-02-2013', '86');
INSERT INTO People_Routines (PersonID, RoutineID, Routine_Date, Time_Taken_in_mins) VALUES(6, 'R03', '12-12-2012', '79');

CREATE TABLE if not exists Routine_Exercises(
	Routine_ExerciseID integer NOT NULL primary key,
	RoutineID varchar(5),
	ExerciseID varchar(10),
	Repetitions integer,
	foreign key (ExerciseID) references Exercises(ExerciseID) on delete cascade,
	foreign key (RoutineID) references Routines(RoutineID) on delete cascade
	);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'CH06', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'TR01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'TR02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'TR03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'TR04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R01', 'TR05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK06', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BK04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R02', 'BI06', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R03', 'LG01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R03', 'LG02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R03', 'LG03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R03', 'LG04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R04', 'LG05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R04', 'SH01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R04', 'SH02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R04', 'SH03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD04', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD05', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'BD06', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'AB01', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'AB02', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'AB03', 3);
INSERT INTO Routine_Exercises (RoutineID, ExerciseID, Repetitions) VALUES('R05', 'AB04', 3);

CREATE TABLE if not exists Person_Routine_Exercises(
	Person_Routine_ExerciseID integer NOT NULL primary key,
	Person_RoutineID integer,
	ExerciseID varchar(10),
	Reps_Completed integer,
	foreign key (Person_RoutineID) references Person_Routines(Person_RoutineID) on delete cascade,
	foreign key (ExerciseID) references Routine_Exercises(ExerciseID) on delete cascade
	);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH03', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH04', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH05', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'CH06', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'TR01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'TR02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'TR03', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'TR04', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(1, 'TR05', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK02', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK03', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK04', 1);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK05', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BK06', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BI01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BI02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BI03', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(2, 'BI04', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(3, 'LG01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(3, 'LG02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(3, 'LG03', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(3, 'LG04', 1);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(4, 'LG05', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(4, 'SH01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(4, 'SH02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(4, 'SH03', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD03', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD04', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD05', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'BD06', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'AB01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'AB02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'AB03', 2);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(5, 'AB04', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(6, 'LG01', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(6, 'LG02', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(6, 'LG03', 3);
INSERT INTO Person_Routine_Exercises (Person_RoutineID, ExerciseID, Reps_Completed) VALUES(6, 'LG04', 2);
COMMIT;