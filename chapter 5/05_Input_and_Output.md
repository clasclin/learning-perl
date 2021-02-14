## Chapter 5 - Input and Output

### Input and Output

- Entrada desde la entrada estandard
- while para leer linea por linea
- foreach para leer hasta el final
- Atajo de entrada de teclado <>
- Invocando argumentos @ARGV
- Opciones mas complejas requieren Getopt::Long o Getopt::Std
- Salida por salida estandard
- print interpola las variables dejando espacios
    - print @arr   # abc
    - print "@arr" # a b c
    - printf "%*s", width, "wilma" # looks like `````wilma
    - printf "Items are:\n" . ("%10s\n" x @items), @items
- Manejador de archivos
    - open LOG, '>>:encoding(UTF-8)', $file_name
- Modobinario binmode
    - binmode STDOUT, ':encoding(UTF-8)'
- Errores fatales die
    - use autodie # v5.10
- Mensajes de advertencias warn
- Se puede elegir el manejador de archivo por defecto select
    - select LOG; $| = 1 # don't keep LOG entries sitting in the buffer
- say