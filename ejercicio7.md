## Comando test:
### Evaluar archivos 
+ -f => Devuelve 0 si el archivo es de tipo estandar (file)
  + `test -f /etc/passwd` => Devuelve **True** ya que *passwd* es un archivo.
+ -d => Devuelve 0 si el archivo es un directorio.

### Evaluar Strings

+ `"$nombre" = "Maria"`
+ `"$nombre" != "Maria"`
+ ` A > Z`
+ ` A >= Z`
+ ` A < Z`
+ ` A <= Z`

### Evaluar numeros

+ *Igualdad* => `$edad -eq 20`
+ *Desigualdad* => `$edad -ne 20`
+ *Mayor* => `5 -gt 20`
+ *Mayor o Igual* => `5 -ge 20`
+ *Menor* => `5 -lt 20`
+ *Menor o Igual* => `5 -le 20`
