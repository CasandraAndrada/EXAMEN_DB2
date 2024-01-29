create table if not exists spital (
    id int primary key not null,
    nume varchar(255) not null,
    locatie varchar(255) not null,
    capacitate int,
    contact varchar(20)
);

create table if not exists echipamente (
    id int primary key not null,
	spital_id int not null,
    nume_echipament varchar(255) not null,
    stare varchar(20),
    foreign key (spital_id) references spital(id)
);

create table if not exists departament (
    id int primary key not null,
    nume varchar(100) not null,
    spital_id int,
    foreign key (spital_id) references spital(id)
);

create table if not exists asistent_medical (
    id int primary key not null,
    id_departament int not null,
    grad varchar(60),
    foreign key (id_departament) references departament(id)
);

create table if not exists doctor (
    id int primary key not null,
	nume_doctor varchar (50) not null,
    id_departament int not null,
    specializare varchar(100) not null,
    foreign key (id_departament) references departament(id)
);

create table if not exists internare (
    id int primary key not null,
    id_pacient int,
    id_doctor int,
    data_internare date,
    departament varchar(255),
    id_camera int
);

create table if not exists pacient (
    id int primary key not null,
    nume_pacient varchar(60) not null,
    prenume varchar(60) not null,
    data_nasterii date,
    sex varchar(10),
    adresa varchar(255),
	id_internare int not null,
	foreign key (id_internare) references internare(id)
);

create table if not exists camera (
    id int primary key not null,
    numarcamera int not null,
    capacitate int,
    stare varchar(30),
    id_pacient int not null,
    foreign key (id_pacient) references pacient(id)
);

create table if not exists programare (
    id int primary key not null,
    id_pacient int not null,
    id_doctor int,
    data_programarii date,
    foreign key (id_pacient) references pacient(id),
    foreign key (id_doctor) references doctor(id)
);
