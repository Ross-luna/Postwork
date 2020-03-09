#REALIZAR LA CONEXION 
mycli -u root -h ec2-54-213-51-169.us-west-2.compute.amazonaws.com
#INTRODUCIR CONTRASEÑa
bedu0588
#CREAR TABLA
ROSS> create table ventasimporte (
      id int primary key,
      tipoTx varchar(15),
      AprobadaRechazada varchar(11),
      merchant int,
      legalEntityName varchar(30),
      user int,
      bin int,
      panTerminacion int,
      claveOperacion int,
      marca varchar(20),
      ModoEntrada varchar(30),
      importe int,
      FechaAplicacion date
      )
	  	  
 create table ventasorigenB (
      id int primary key,
      merchanT int,
      legalEntityName int,
      userId varchar(20),
      afiliacion varchar(12),
      NombreAfiliacion varchar(20),
      autorizacion varchar(10),
      fiid varchar(5),
      BancoAdquiriente varchar(15),
      BancoEmisor varchar(15),
      ORIGEN varchar(20),
      LATITUD varchar(30),
      LONGITUD varchar(30)
      )

#ERROR AL SUBIR ARCHIVO :(
 LOAD DATA LOCAL INFILE "G:/Mi unidad/BEDU/Introduccion_a_base_de_datos/sesion03/postwork/VENTAS_IMPORTE.CSV" INTO
       table ventasimporte FIELDS TERMINATED BY ",";



