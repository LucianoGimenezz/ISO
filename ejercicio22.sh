#!/bin/bash

num=(10 3 5 7 9 3 5 4)

function productora {
  total=1 
  for i in ${num[*]}
  do
    total=`expr $total \* $i`
  done
}

productora
echo "El resultado final es: $total"
