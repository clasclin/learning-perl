## Chapter 7 - Regular Expressions

### Regular Expressions

- Comodines
```
    . cualquier caracter exepto nueva linea
    \\ barra invertida
    \N cualquier caracter exepto nueva linea v5.12
```
- Cuantificador
```
    ? el caracter anterior 0 o 1
    * el caracter anterior 0 o mas veces greedy
    + el caracter anterior 1 o mas veces
    {n} donde n es la cantidad de ocurrencias pero no se limita a n
    {n,m} donde n es la cantidad minima y m la maxima
```
- Regexp::Debugger
- Grupos en parentesis
```
    (fred)+ coincide con fredfredfred
    \1 referencias a una captura
    /x hay una bandera que permite acomodar mejor la expresion regular
    \g{n} donde n es otra forma de hacer referencia al grupo de captura v5.10
```
- Alternativas
```
    | es un or fred|barney
    [abc] solo uno es posible a la vez
    [^def] cualquiera exepto d, e, f
```
- Algunos atajos a expresiones comunes
```
    \s cualquier espacio
    \h cualquier espacio horizontal v5.10
    \v cualquier espacio vertical v5.10
    \d cualquier digito
    \w palabra segun perl
    \R cualquier salto de linea v5.10
```
- La negacion se da con mayusculas
```
    \S no espacio
    \H no espacio horizontal
    \D no digito
    \V no espacio vertical
    \W no palabra
    \N no nueva linea v5.18
```
- Unicode tiene propiedades
```
    \p{PROPERTY} su negacion es \P{PROPERTY}
    \p{Space}
    \p{Digit}
```
- Anclas
```
    \Ahttps?: el comienzo de una url
    \.png\z archivo terminado en .png
    \.png\Z archivo terminado en .png\n
    \A\s*\Z una linea en blanco que opcionalmente puede conener espacios
    \b el final de una palabra
    \bsearch\B encuentra searches, searching, searched, pero no search o research
```