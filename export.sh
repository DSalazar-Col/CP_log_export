#!/bin/bash

# conversion de archivos .log - registros de trafico de Check Point a archivos .csv para explorar en Exel

FILES="$FWDIR/log/*.log"

for f in ${FILES}
do echo "Converting Files"
	time fwm logexport –n –p –i "$f" –o "$f.csv"
	mv "$f.csv" /home/admin
done