numborrados=`ls -l $1 | find $1/*.txt | wc -l`
echo `rm $1/*.txt`
echo "Se han borrado $numborrados archivos"