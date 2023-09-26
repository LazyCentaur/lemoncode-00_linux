#!/bin/bash

read -p "Escribe la palabra que quieres buscar: " palabra_a_buscar
web=https://www.diariocordoba.com/vida-y-estilo/2023/09/25/adios-patatas-cocidas-medicos-piden-dv-92273757.html

contador=0
linea=0

contador=$(curl -s $web | grep -i $palabra_a_buscar | wc -w)
linea=$(curl -s $web | grep -n -m 1 $palabra_a_buscar)

if [[ contador -eq 0 ]]; then
echo "No se ha encontrado la palabra $palabra_a_buscar"
elif [[ contador -eq 1 ]]; then
echo "Una coincidencia"
else
echo La palabra $palabra_a_buscar aparece $contador veces
echo Aparece por primera vez en la línea $linea
fi

exit
