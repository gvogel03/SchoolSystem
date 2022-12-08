insert into person (school_id, age, sex, DOB, address)
values (1, 18, 'M', '01/01/2000', '1234 Gold Ln'),
(2, 15, 'F', '01/02/2003', '1235 Silver Ln'),
(3, 37, 'F', '12/06/1985', '1234 Purple Ln'),
(4, 53, 'M', '12/04/1995', '1234 White Ln'),
(5, 36, 'M', '08/17/1975', '1234 Red Ln'),
(6, 56, 'F', '02/08/2003', '90 Quail Ln'),
(7, 42, 'M', '03/16/1988', '7491 S. El Dorado Lane'),
(8, 42, 'F', '12/10/2001', '65 Saxton Street'),
(9, 42, 'F', '08/26/1997', '4 Greenrose Street'),
(10, 42, 'M', '01/12/2001', '72 Sage St.'),
(11, 42, 'M', '06/15/1992', '7841 Pierce Ave.'),
(12, 42, 'M', '06/10/1996', '2 Sheffield Dr.'),
(13, 42, 'M', '08/14/1992', '37 Poor House Avenue'),
(14, 42, 'F', '09/13/1986', '62 Newport Lane'),
(15, 42, 'F', '12/04/1988', '8072 Cleveland Lane');
--done

insert into name (school_id, fname, mi, lname)
values (1, 'John', 'A', 'Wick'),
(2, 'Jane', 'B', 'Wick'),
(3, 'Bill', 'C', 'Nye'),
(4, 'Scott', 'D', 'Hale'), --faculty
(5, 'Quintorius', 'E', 'Troutt'),
(6, 'Simone', 'F', 'Ben'), --faculty
(7, 'Justin', 'G', 'Case'),
(8, 'Rhodri', 'H', 'Schwartz'),--faculty
(9, 'Rhianna', 'I', 'Velez'),--student
(10, 'Abdur', 'J', 'Diaz'),--student
(11, 'Trey', 'K', 'Bush'),--faculty
(12, 'Donovan', 'L', 'Dixon'),--student
(13, 'Marcus', 'M', 'Peterson'),--student
(14, 'Tiana', 'N', 'Ruiz'),--student
(15, 'Jorja', 'O', 'Solis');--student
--done

insert into department (department_id, department_name)
values (1, 'Computer Science'),
(2, 'Arts'),
(3, 'Biology'),
(4, 'Administration');
--done

insert into student (school_id, year, major, GPA)
values (1, 2019, 'Computer Science', 2),
(2, 2022, 'Biology', 4),
(3, 2016, 'Computer Science', 3),
(7, 2022, 'Arts', 2),
(9, 2022, 'Computer Science', 4),
(10, 2019, 'Biology', 4),
(12, 2020, 'Computer Science', 4),
(13, 2021, 'Arts', 4),
(14, 2024, 'Computer Science', 4),
(15, 2023, 'Biology', 4);
--done

insert into faculty (school_id, rank, department)
values (4, 'Tenured Professor', 1),
(6, 'Assistant Professor', 1),
(8, 'Assistant Professor', 3),
(11, 'Assistant Professor', 2);
--done

insert into staff(school_id, job, department)
values (5, 'Admin', 4);
--done

insert into login (school_id, pwd, usertype)
values(1, 'passwd', 'STUDENT'),
(2, 'p4sswd', 'STUDENT'),
(3, 'asdfjkklalsdkjsdfa', 'STUDENT'),
(4, 'apples', 'TEACHER'),
(5, '!1234', 'ADMIN'),
(6, '5432', 'TEACHER'),
(7, 'atenine', 'STUDENT'),
(8, 'smallspoon19', 'TEACHER'),
(9, 'ivoryalarm12', 'STUDENT'),
(10, 'funnyapple92', 'STUDENT'),
(11, 'roundmonth59', 'TEACHER'),
(12, 'bestmice82', 'STUDENT'),
(13, 'superpuma31', 'STUDENT'),
(14, 'jumpyhippo50', 'STUDENT'),
(15, 'icycheese83', 'STUDENT');
--done

insert into classes (class_id, faculty_id, department, location, semester)
values (1, 4, 1, 'JO 4.414', 'S22'),
(2, 4, 1, 'ECSW 2.216', 'S22'),
(5, 6, 1, 'ECSN 3.312', 'S22'),
(4, 8, 3, 'SLC 1.203', 'S22'),
(3, 11, 2, 'JSOM 3.213', 'S22');
--done

insert into enrolled (school_id, class_id, grade)
values (1, 2, 90),
(1, 3, 76),
(2, 3, 98),
(2, 4, 87),
(3, 5, 83),
(7, 1, 92),
(7, 3, 85),
(9, 2, 91),
(9, 4, 94),
(10, 4, 83),
(10, 1, 100),
(12, 3, 100),
(12, 2, 80),
(12, 5, 76),
(13, 3, 92),
(13, 4, 76),
(14, 2, 98),
(14, 4, 82),
(14, 5, 88),
(15, 4, 90);
--done

insert into classname (class_id, classname)
values (1, 'Intro to CS'),
(2, 'Database Systems'),
(3, 'Sculptures'),
(4, 'Anatomy'),
(5, 'Automata Theory');
--done