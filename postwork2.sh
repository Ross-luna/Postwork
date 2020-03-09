#ENTRAR A CARPETA
cd "G:\Mi unidad\BEDU\ml-1m" "G:\Mi unidad\BEDU\ProyectoRossL"
cd ml-1m
#MOSTRAR CAPRPETAS
ls
#VER QUE HAY EN ARCHIVO
head movies.dat
#CAMBIAR TIPO DE ARCHIVO (.dat a .csv)
sed "s/::/,/g" movies.dat > movies.csv
#CONSULTA DE PELICULAS DEL AÑO 2000-MUESTRA REGISTROS
grep -a "(2000)" movies.csv | head
#CONSULTA DE PELICULAS DEL AÑO 2000-CONTABILIZA REGISTROS
grep -a "(2000)" movies.csv | wc
#CONSULTA DE PELICULAS DEL AÑO 2000-GUARDA CONSULTA 
grep -a "(2000)" movies.csv > consultamovies.csv
ls
#MUESTRA DATOS DEL ARCHIVO
head ratings.dat
#CAMBIAR TIPO DE ARCHIVO (.dat a .csv)
sed "s/::/,/g" ratings.dat > ratings.csv
#CONTABILIZA REGISTROS 
wc ratings.csv
ls
#MUESTRA DATOS DEL ARCHIVO
head users.dat
#CAMBIAR TIPO DE ARCHIVO (.dat a .csv)
sed "s/::/,/g" users.dat > users.csv
wc users.csv

