#!/bin/bash
#Evaluacion de expresiones

echo "Ingrese dos numeros:"
read num1 num2
echo "La multiplicacion de $num1 y $num2 es: `expr $num1 \* $num2`"
echo "La suma entre $num1 y $num2 es: `expr $num1 + $num2`"
echo "La resta entre $num1 y $num2 es: `expr $num1 - $num2`"

if [ $num1 -lt $num2 ] 
then
    MENOR=$num1	
else   	
    MENOR=$num2	 
fi
echo "El menor es: $MENOR"
