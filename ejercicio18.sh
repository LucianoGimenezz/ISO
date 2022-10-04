#!/bin/bash

user=$(who | cut -d' ' -f1| grep -o $1 || echo "null")

while [ "$user" != "$1" ]
do
  echo "Search..."
 `sleep 10`
  echo "Search.."
  user=$(who | cut -d' ' -f1| grep -o $1)
done

echo "Usuario $1 loqueado en el sistema"
