#!/bin/bash

select option in Listar DondeEstoy QuienEsta Salir
do
	case $option in
		"Listar")
		     echo `ls -l`	
		 ;;
	 "DondeEstoy")
		 echo `pwd`
		 ;;
	 "QuienEsta")
		 echo `who`
		 ;;
	  "Salir")
		  exit 0
		;;
 esac
done
