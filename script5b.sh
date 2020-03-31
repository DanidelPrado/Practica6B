maxlineas=`cat /home/alumno/listado.txt | wc -l`
i=1
uslinux=0
proclinux=0
uswindows=0
procwindows=0
while [ $i -le $maxlineas ]; do
	so=`awk '{print $2}' /home/alumno/listado.txt | head -$i | tail -1`
	if [ $so = "Linux" ]; then
		uslinux=`expr $uslinux + 1`
		proclinux=`expr $proclinux + $(awk '{print $3}' /home/alumno/listado.txt | head -$i | tail -1)`
		else
		uswindows=`expr $uswindows + 1`
		procwindows=`expr $procwindows + $(awk '{print $3}' /home/alumno/listado.txt | head -$i | tail -1)`
	fi
	i=`expr $i + 1`
done

echo "Usuarios Linux: $uslinux Procesos Linux: $proclinux"
echo "Usuarios Windows: $uswindows Procesos Windows: $procwindows"