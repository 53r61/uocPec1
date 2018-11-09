#!/bin/bash

#filtramos en el archivo passwd que es donde se guardan los usuarios, lo hacemos con la columna 3 ya que ahí es donde estan el nombre de los usuarios, ponemos 3==0 para el root y 3==500 para el resto, ya que es apartir de UDI 500 dondo los identificamos 
#guardamos todo en nuestra variable usarios
usuarios=$(awk -F: '{if ($3==0 || $3>500) print $1}' /etc/passwd)
#recorro la variable con un for y voy creando los archivos con los nombres de los usuarios a la vez que creo la ruta y meto la informacion del usu que le han dado al sistema
for i in ${usuarios}
do
	mkdir -p /root/informes/ 
	ps -u $i >> /root/informes/$i

done

