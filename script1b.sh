valor=1

for i in $(cat /home/alumno/nombres.txt); do
	echo `mkdir $i`
	
	while [ $valor -le $1 ]; do
		echo `mkdir /home/alumno/Practica6B/$i/personal$valor`
		valor=`expr $valor + 1`
	done
	valor=1
done
