#!/bin/bash
# Mostrar numeros y sus cuadrados

for((i = 1; i <= 100; i++))
do
  echo "${i}^2 = `expr $i \* $i`"
done
