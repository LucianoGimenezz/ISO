#!/bin/bash

cantFIles=`find $HOME -name "*.$1" -type f | wc -l`

$(echo "
|  User   | Totalfiles  |  
|---------| ----------  |
|`whoami` |total $cantFIles  |" >> reporte.txt)
