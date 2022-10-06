#!/bin/bash
# PIlA

pila=()

function push {
  pila+=($1)
}

function pop {
 posFinal=`expr ${#pila[*]} - 1`
 elemento=${pila[$posFinal]}
 unset pila[$posFinal]
 pila=(${pila[@]})
 return $elemento
}

function length {
  longitud=${#pila[@]}
  return $longitud 
}


function print {
  for i in ${pila[@]}
  do
    echo $i
  done
}

for((i=1; i<=10; i++))
do
  push $i
done

#Ejercicio 21

pop
echo "Elemento eliminado: $elemento"
pop
echo "Elemento eliminado: $elemento"
pop 
echo "Elemento eliminado: $elemento"
length
echo "La longitud de la pila es: $longitud"
print
