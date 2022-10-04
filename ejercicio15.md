## Cut
Los parametros que puede recibir son, `-d`, con esta flag podemos indicarle desde donde vamos a cortar lo que reciba como entrada. `-f`, esta flag va acompañada de un numero mayor a 0, que indica la fila que quiero seleccionar. e.g

```
 cat /etc/passwd | cut -d: -f1
```
