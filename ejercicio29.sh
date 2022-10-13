#!/bin/bash

files=($(find /home -name "*.doc" -type f | grep -o '[^/]*$' | tr '\n' ' '))

state=0

function verArchivo {
  for i in ${files[*]}
  do
    file=`echo $i | grep -o "$1"`
    if [ "$file" = "$1" ]
    then
      state=1
      echo $file
      break
    fi
  done
  if [ $state -eq 0 ]
  then
    echo "Archivo no encontrado"
    exit 5
  fi
}

function cantidadArchivos {
  echo "La cantidad de archivo es de ${#files[*]}"
}

function borrarLogicamente {
  flag=0
  pos=0
  for i in ${files[*]}
    do
      file=`echo $i | grep -o "$1"`
      if [ "$file" = "$1" ]
      then
        flag=1
        break
      else
        pos=`expr $pos + 1`
      fi
    done
    if [ $flag -eq 0 ]
    then
      echo "Archivo no encontrado"
      exit 10
    fi 
    unset $files[$pos]
    files=(${files[*]}) 
}

function borrarDelFLS {
  file=$(echo ${files[*]} | grep -o "$1")
  if [ -z $file ]
  then
    echo "Archivo no encontrado"
    exit 10
  else
    path=`find /home -name "${1}.doc" -type f`
    `rm $path`
    borrarLogicamente $1
    echo "Archivo eliminado"
  fi
  exit 0
}

function borrarArchivos {
  echo "Desea eliminar el archivo  $1 logicamente?"
  select option in Yes No 
  do
    case $option in
        "Yes")
           borrarLogicamente $1 
          ;;
        "No")
          borrarDelFLS $1
          ;;
      esac
  done
}


verArchivo hola 
cantidadArchivos
borrarArchivos documento
