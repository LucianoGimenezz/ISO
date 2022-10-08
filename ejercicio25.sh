#!/bin/bash

users=($(cat /etc/group | grep "^users" | cut -d: -f4 | tr ',' ' '))

if [ $# -ne 0 ]
then
  case $1 in
    "-b")
      if [ $2 -ge 0 ] && [ $2 -lt ${#users[*]} ] 
        then
          echo ${users[$2]}
        else
          echo "El elemento en la posicion $2 no existe."
          exit 1
        fi
      ;;
    "-l")
       echo "La longitud del arreglo es: ${#users[*]}"
      ;;
    "-i")
        echo ${users[*]}
      ;;
  esac
else
  exit 0
fi

