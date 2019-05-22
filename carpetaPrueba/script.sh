#!/bin/bash

RUTA=$(pwd)
ARCHIVOS=$(ls $RUTA | grep -E '(á|é|í|ó|ú|ñ)')
#ARCHIVOS=$(ls $RUTA | grep -E [^'script.sh'])

convertir='áéíóúñÁÉÍÓÚÑ'
convertidas='aeiounAEIOUN'

for file in $ARCHIVOS;
    do
        modificado=$(echo "$file" | sed 'y/áéíóúñÁÉÍÓÚÑ/aeiounAEIOUN/')
	mv $RUTA/$file $RUTA/$modificado
done
