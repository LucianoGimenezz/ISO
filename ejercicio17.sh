#!/bin/bash

files=(`ls`)

for i in ${files[@]}
do
  if [ -f $i ]
  then
    nameChanged=$(echo $i | tr [:lower:] [:upper:] | tr -d "a" | tr -d "A")
    echo $nameChanged
  fi
done
