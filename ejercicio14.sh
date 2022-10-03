#!/bin/bash

files=(`find $1 -name "*" -type f `)

if [ $2 == '-a' ]
then
    for i in ${files[*]}
    do
      `mv $i $i$3`
       echo "Archivos renombrados"
    done
fi

if [ $2 == '-b' ]
then
  for i in ${files[*]}
  do
    filePos=`echo $i | grep / -o | wc -l`
    realPos=`expr $filePos + 1 `
    file=`echo $i | cut -d/ -f$realPos`
    reName="$3$file"
    `mv $i $1$reName`
    echo Archivos renombrados
  done
fi

echo $flag
