DROP TABLE if exists classname;
DROP TABLE if exists enrolled cascade;
DROP TABLE if exists Classes;
DROP TABLE if exists Login;
DROP TABLE if exists Staff;
DROP TABLE if exists Faculty;
DROP TABLE if exists Student;
DROP TABLE if exists Name cascade;
DROP TABLE if exists Department;
DROP TABLE if exists Person;

CREATE TABLE Person (
    school_id int not null,
    age int null,
    sex varchar(1) null,
    DOB varchar(10) null,
    address varchar(50) null,
    
    PRIMARY KEY(school_id)
);

CREATE TABLE Department (
    department_id int not null,
    department_name varchar(30),

    PRIMARY KEY(department_id)
);

CREATE TABLE Name (
    school_id int not null,
    fname varchar(20) not null,
    mi varchar(20) null,
    lname varchar(20) not null,

    FOREIGN KEY(school_id) REFERENCES Person (school_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Student (
    school_id int not null,
    year int not null,
    major varchar(30) not null,
    GPA int not null,

    FOREIGN KEY(school_id) REFERENCES Person (school_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Faculty (
    school_id int not null,
    rank varchar(20) null,
    department int not null,

    FOREIGN KEY(school_id) 
        REFERENCES Person (school_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY(department) 
        REFERENCES Department (department_id)
        ON DELETE restrict ON UPDATE CASCADE
);

CREATE TABLE Staff (
    school_id int not null,
    job varchar(20) not null,
    department int not null,

    FOREIGN KEY(school_id) 
        REFERENCES Person (school_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY(department) 
        REFERENCES Department (department_id)
        ON DELETE restrict ON UPDATE CASCADE
);

CREATE TABLE Login (
    school_id int not null,
    pwd varchar(20) not null,
    usertype varchar(20),

    FOREIGN KEY(school_id) 
        REFERENCES Person (school_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE classes (
    class_id int not null,
    faculty_id int not null,
    department int not null,
    location varchar(20) not null,
    semester varchar(20) not null,

    PRIMARY KEY(class_id), 

    FOREIGN KEY(department) 
        REFERENCES Department (department_id)
        ON DELETE restrict ON UPDATE CASCADE,

    FOREIGN KEY(faculty_id)
        REFERENCES Person (school_id)
        ON DELETE restrict ON UPDATE CASCADE
);

Create table enrolled (
    school_id int not null,
    Class_id int not null,
    grade int,

    Primary key (school_id, class_id),

    Foreign key (school_id) references Person(school_id)
    on DELETE cascade on update CASCADE,

    Foreign key (class_id) references classes (class_id)
    on DELETE restrict on update CASCADE
);

Create table classname (
    class_id int not null,
    classname varchar(50),

    Primary key (class_id),

    Foreign key (class_id) references classes(class_id)
    on DELETE cascade on update cascade

);