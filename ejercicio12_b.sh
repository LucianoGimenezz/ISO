#!/bin/bash

if [ $# -ne 2 ]
then
  exit 1
fi

echo "La multiplicacion entre $1 y $2 es: `expr $1 \* $2`"
echo "La suma entre $1 y $2 es: `expr $1 + $2` "
echo "La resta entre $1 y $2 es: `expr $1 - $2`"

if [ $1 -lt $2 ]
then
   MENOR=$1
else 
   MENOR=$2
fi

echo "El menor es: $MENOR"
