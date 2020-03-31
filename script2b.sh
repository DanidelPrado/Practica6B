maxlineas=`cat /home/alumno/precipitaciones.txt | wc -l`
i=1
media=0
valor=0

while [ $i -le $maxlineas ]; do 
	valor=`awk '{print $2}' /home/alumno/precipitaciones.txt | head -$i | tail -1`
	media=`expr $media + $valor`
	i=`expr $i + 1`
done
media=`expr $media / $maxlineas`
echo "La media de precipitaciones es $media"