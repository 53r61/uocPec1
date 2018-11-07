#!/bin/bash

 
usuarios=$(awk -F: '{if ($3==0 || $3>500) print $1}' /etc/passwd)
VAR=date
for i in ${usuarios}
do
	mkdir -p /root/informes/ 
	ps -u $i >> /root/informes/$i&&$VAR
	cat /root/informes/$i&&$VAR
	echo $VAR
done

