#!/bin/bash

lanzar_moneda() {
	if [ $((RANDOM % 2)) -eq 0 ]; then
		echo "Cara"
	else
		echo "Cruz"
	fi
}

contador_cara=0
contador_cruz_=0
total_tiradas=0

####################################

while [[ ${contador_cara} -lt 8 && ${contador_cruz} -lt 8 ]]; do
	resultado=$(lanzar_moneda)
	total_tiradas=$((total_tiradas + 1))

	if [ "$resultado"  == "Cara" ]; then
		echo "Cara!"
		contador_cara=$((contador_cara + 1))
		contador_cruz=0
	else
		echo "Cruz!"
		contador_cara=0
		contador_cruz=$((contador_cruz + 1))
	fi
done

echo "Total de tiradas: $total_tiradas"


touch registro.txt
echo "$total_tiradas" >> "registro.txt"
