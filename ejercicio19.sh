#!/bin/bash

files=(`ls | grep "^e"`)

echo "Menu de comandos"
pos=1
for i in ${files[@]}
do
  echo "$pos. $i" 
  pos=`expr $pos + 1` 
done
pos=`expr $pos + 1`
echo "$pos. Salir"
echo "Ingrese la opcion a ejecutar:"
read option
userOption=${files[`expr $option - 1`]}

while [ "$userOption" != "Salir" ]
do
  if [ "${userOption: -3}" == ".md" ]
  then
    $(cat $userOption)
  else
    $(./$userOption)
  fi
  echo "Ingrese la opcion a ejecutar:"
  read option
  userOption=${files[$option]}
done
