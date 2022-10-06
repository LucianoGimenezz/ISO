#!/bin/bash


num=($*)
totalImpares=0
for i in ${num[@]}
do
  if [ `expr $i % 2` -eq 0 ]
  then
    echo $i
  else
    totalImpares=`expr $totalImpares + 1`
  fi
done

echo "La cantidad de numeros impares fue de : $totalImpares"

