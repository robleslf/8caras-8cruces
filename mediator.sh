#!/bin/bash

for (( i=1; i<=1000000; i++ )); do

	./monedeitor_pro.sh

done


echo "La media de tiradas por cada tirada es: "
awk '{ sum += $1 } END { print sum / NR }' registro.txt
