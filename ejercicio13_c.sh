#!/bin/bash

resultado=`find $HOME -name $1`

if [ $resultado ]
then
   if [ -f $resultado ]
   then
     echo "Es un archivo"
   else 
     echo "Es un directorio"
   fi
else
   echo `mkdir $HOME/$1`
   echo "Directorio creado en: $HOME"
fi
