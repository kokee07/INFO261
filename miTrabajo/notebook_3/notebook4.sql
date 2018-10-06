create database Valdivia;
use Valdivia;
create table PERSONA(rut int auto_increment, nombre varchar(40), Edad int, primary key(rut));
create table LUGAR_DE_INTERES(lugar int auto_increment, descripción varchar(50), categoria varchar(50),latitud decimal(7,3),longitud decimal(7,3), primary key(lugar));
create table DESPLAZARSE(rut int, 
						fecha datetime,
						latitud decimal(6,3), 
						longitud decimal(6,3),
						foreign key(rut) references PERSONA(rut), Primary key(rut, fecha));
drop table DESPLAZARSE;
show tables;
describe DESPLAZARSE;

insert into PERSONA values (Null,"Jorge Delgado", 21);
insert into PERSONA values (Null,"Alferd Morales", 23);
insert into PERSONA values (Null,"Sanhueza", 22);	 
insert into PERSONA values (Null,"Seba Prro", 21);
insert into PERSONA values (Null,"Spun", 21);
insert into PERSONA values (Null,"Mono no vino", 21);
select * from PERSONA;

insert into LUGAR_DE_INTERES values (Null, "Mercado Fluvial", "Turismo", -39.81, -73.24);
insert into LUGAR_DE_INTERES values (Null, "Torreon Yungai", "Turismo/Historico", -1.23, 20.24);
insert into LUGAR_DE_INTERES values (Null, "Pendulo", "Turismo", -39.81, -73.24);
insert into LUGAR_DE_INTERES values (Null, "Puente Cau-Cau", "Turismo/Random", -23.0, -22.24);
insert into LUGAR_DE_INTERES values (Null, "Playa Collico", "Turismo", 20.32, -10.22);
insert into LUGAR_DE_INTERES values (Null, "Niebla", "Turismo", -99.81, -73.24);
select * from LUGAR_DE_INTERES;


insert into DESPLAZARSE values (1,'2017-03-09 12:00:00',-39.12, -70.23);
insert into DESPLAZARSE values (2,'2017-03-09 13:50:03',-39.12, -70.23);
insert into DESPLAZARSE values (3,'2017-03-09 12:40:20',-9.12, -70.23);
insert into DESPLAZARSE values (4,'2017-03-09 17:33:00',-39.2, -35.23);
insert into DESPLAZARSE values (4,'2017-03-09 18:03:10',-42.12, -40.23);
insert into DESPLAZARSE values (5,'2017-03-09 12:00:12',-39.12, -70.23);
select * from DESPLAZARSE;

Alter table PERSONA	add column nivel_de_estudio varchar(15) after edad;
alter table LUGAR_DE_INTERES modify latitud decimal(7,3) not null;
alter table LUGAR_DE_INTERES modify longitud decimal(7,3) not null;
