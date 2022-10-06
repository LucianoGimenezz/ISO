#!/bin/bash

files=(`ls`)

for i in ${files[@]}
do
  if [ -f $i ]
  then
     reNameFile=$(echo $i | tr 'A-Z a-z' 'a-z A-Z' | tr -d 'aA')
     echo $reNameFile;
  fi
done
