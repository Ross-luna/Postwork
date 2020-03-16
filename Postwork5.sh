#Ver en donde se encuentra
$ pwd
/c/Users/Serti
#Entrar a directorio correcto
cd g:/
cd "Mi unidad\BEDU\Introduccion_a_base_de_datos"
#Crear carpeta
mkdir sesion04
cd sesion04
#Copiar archivo
$ cp "G:\Mi unidad\bedunotas\ProyectoFEENICIA\baseFEE.csv" "G:\Mi unidad\BEDU\Introduccion_a_base_de_datos\sesion04"

#Entar a MongoBD con la siguiente dirección
mongodb://root:bedu0583@ec2-54-213-51-169.us-west-2.compute.amazonaws.com:27017/?authSource=admin&connectTimeoutMS=600000

#CREATE DATABASE
#CREATE COLLECTION
#ADD DATA
#IMPORT FILE

#CONSULTAS
#Cuantas transacciones de Banco Emisor BANORTE hay?
{ "BancoEmisor":"BANORTE"}
#Cuantas transacciones de userId = Gestopago y GestoPago-AforeMovil hay?
{ "userId":"Gestopago", "userId":"GestoPago-AforeMovil"}
#transacciones con importe igual o mayor que $20,000
{"importe":{ $gte:"20000"} }
#Transacciones que no contengan pertenezcan a los usuarios trillonario, zodiacastrologychart y AGENCIA UYEN CERO con un importe mayor o igual a $20,000
{ "userId" : {$nin:["trillonario","zodiacastrologychart","AGENCIA UYEN CERO"]},"importe":{ $gte: "20000"}}



