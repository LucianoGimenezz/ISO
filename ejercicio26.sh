#!/bin/bash

if [ $# -eq 0 ]
then
  echo "No se recibio ningun parametro"
  exit 1
fi
cant=0
paths=()

for i in $*
do
  paths+=($i)
done

pos=0

for i in ${paths[*]}
do
  if [ `expr $pos % 2` -ne 0 ]
  then
    if [ -d $i ]
    then
      echo "$i es un directorio"
    elif [ -f $i ]
    then
      echo "$i es un archivo"
    else
      cant=`expr $cant + 1`
    fi
  fi
  pos=`expr $pos + 1`
done

echo "La cantidad de archivos inexistentes fue de $cant"
