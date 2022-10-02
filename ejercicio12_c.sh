#!/bin/bash
#Calculadora

case $2 in
      "-")
	      echo "El resultador es: `expr $1 - $3`"
     ;;
    "+")
	    echo "El resultado es: `expr $1 + $3`"
     ;;
    "*")
	    echo "El resultado es `expr $1 \* $3`"
     ;; 
    "/")
        
	    echo "El resultado es: `expr $1 / $3`"
    ;;
    *)
	    echo Operacion invalida
    ;;
   esac
