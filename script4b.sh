valor=0
maxlineas=`cat /home/alumno/numeros.txt | wc -l`
i=1
pares="Los numeros pares son: "
impares="Los numeros impares son: "
numpares=0
numimpares=0
while [ $i -le $maxlineas ]; do
	valor=`cat /home/alumno/numeros.txt | head -$i | tail -1`
	division=`expr $valor % 2` 
	if [ $division -eq 0 ]; then
		pares="$pares $valor"
		numpares=`expr $numpares + 1`
	else
		impares="$impares $valor"
		numimpares=`expr $numimpares + 1`		
	fi 
	i=`expr $i + 1`
done

echo "$pares total: $numpares"
echo "$impares total: $numimpares"