#!/bin/bash

function inicializar {
  array=()
}


function agregar_elem {
  $array+=($1)
}

function eliminar_elem {
  if [ $1 -ge 0 ] && [ $1 -lt ${#array[*]} ]
  then
    unset $array[$1]
    array=(${array[*]})
  fi
}

function longitud {
  echo "${#array[*]}"
}

function imprimir {
  echo "${array[*]}"
}


function inicializar_Con_Valores {
  array=()
  for((i=0; i < $1; i++))
  do
    $array[$i]=$2
  done
}
