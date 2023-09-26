#!/bin/bash

echo $@

if [[ $# -ne 2 ]]; then
echo "Se necesitan únicamente dos parámetros para ejecutar este script"
exit 1
fi

contador=0
linea=0

contador=$(curl -s $1 | grep -i $2 | wc -w)
linea=$(curl -s $1 | grep -n -m 1 $2)

if [[ contador -eq 0 ]]; then
echo "No se ha encontrado la palabra $palabra_a_buscar"
elif [[ contador -eq 1 ]]; then
echo "Una coincidencia"
else
echo La palabra $palabra_a_buscar aparece $contador veces
echo Aparece por primera vez en la línea $linea
fi

exit
~    
