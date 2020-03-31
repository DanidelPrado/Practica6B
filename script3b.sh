i=1
x=0
dia=0
maxlineas=`cat /home/alumno/precipitaciones.txt | wc -l`
while [ $i -le $maxlineas ]; do
	x=`awk '{print $2}' /home/alumno/precipitaciones.txt | head -$i | tail -1`
	if [ $x = 0 ]; then
		dia=`awk '{print $1}' /home/alumno/precipitaciones.txt | head -$i | tail -1`
		case $dia in 
		    1|8)
				echo "El Lunes $dia no llovió"
				;;
			2|9)
				echo "El Martes $dia no llovió"
				;;
			3|10)
				echo "El Miércoles $dia no llovió"
				;;
			4)
				echo "El Jueves $dia no llovió"
				;;
			5)
				echo "El Viernes $dia no llovió"
				;;
			6)
				echo "El Sabado $dia no llovió"
				;;
			7)
				echo "El Domingo $dia no llovió"
				;;
		esac 		
	fi
	i=`expr $i + 1`
done