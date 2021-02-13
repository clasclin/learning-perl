## Chapter 3 - Lists and Arrays

### Lists and Arrays

- Acceder a los elementos de un arreglo
- Indice especial que contiene el ultimo indice $#var
- Listas literales
    - operador de rango ..
    - atajo para listas qw
- Asignar listas
    - un arreglo solo puede contener un scalar
- Añadir y quitar elementos
    - Al final
        - quita pop @arr
        - añade push @arr, @others
    - Al principio
        - quita shift
        - añade unshift @arr, @others
    - Al medio
        - quita splice @arr, $index, $length 
        - añade splice @arr, $index, $length, @others
- Interpolacion de arreglos en texto
- Estructura de control
    - foreach
- Operador que no hace nada ... v5.12
- Variable por defecto $_
- Operador que revierte el orden de una lista reverse
- Operador para ordenar una lista sort
- Operador que retorna indice y valor each v5.12 para arreglos
- Las funciones se comportan segun el contexto (void, scalar, list)
- Entrada de texto <STDIN> en contexto de lista