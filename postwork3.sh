#ENTRAR Y CREAR CARPETA 
cd "G:\Mi unidad\BEDU"
mkdir Introduccion_a_base_de_datos
cd Introduccion_a_base_de_datos
mkdir sesion03
cd sesion03
mkdir postwork
cd postwork
#CONEXIÓN 
mycli -u root -h ec2-54-213-51-169.us-west-2.compute.amazonaws.com
Password: bedu0583
#CREAR TABLA
create database ROSS;
#MOSTRAR TABLA
show databases;
#SELECCIONAR LA TABLA A USAR
use ROSS
#DEFINIR VARIABLES DE TABLA USERS
CREATE TABLE users(
      id int primary key,
      genero varchar(2),
      edad int,
      ocupacion int,
      cp varchar(10));
show tables;
#DEFINIR VARIABLES DE TABLA MOVIES 
create table movies(
      id int primary key,
      nombre varchar(50),
      genero varchar(20));
show tables;
#LEER ARCHICO CSV
load data local infile "G:/Mi unidad/BEDU/Introduccion_a_base_de_datos/sesion03/postwork/users.csv" into table users fields terminated by ",";
#SELECCIONAR Y CONTAR  DE TABLA USERS GENERO FEMENINO DE EDAD DE 18 AÑOS
select * from users
select CP, COUNT(*) FROM users where genero="F"AND EDAD=18;

