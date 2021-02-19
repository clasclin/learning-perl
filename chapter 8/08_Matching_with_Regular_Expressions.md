## Chapter 8 - Matching with Regular Expressions

### Matching with Regular Expressions

En este capitulo realize los ejercicios desde la terminal usando 
```powershell
> perl test_pattern.pl '\wa\b'
```

- Encontrar
```
    m// permite elegir otro delimitador m{}
    //i indiferente a mayusculas minusculas
    //s cambia el comportamiento del . haciendo que capture \n
    //x permite separar la expresion con espacios
    //six los modificadores se pueden combinar
```
- =~
```
    # almacena en la variable el resultado de la prueba
    print "Do you like perl? ";
    my $likes_perl = <STDIN> =~ /\byes\b/i;
    ...
    if ($likes_perl) { ... }
```
- Las capturas deben usarse en estructuras condicionales porque se resetean en cada captura
- Variables de captura
```
    $_ = "Hello there";
    if ( /\s ([a-zA-Z]+) ,/x ) {
        print "the word was $1\n";
    }
```
- Parentesis sin captura
```
    if (/(?:bronto)?saurus (?:BBQ)?(steak|burger)/) {
        print "Fred wants $1\n";
    }
```
- Capturas con nombres v5.10
```
    use v5.10;

    my $names = "Fred or Barney";
    if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
        say "I saw $+{name1} and $+{name2}";
    }
```
- Referencia anterior con nombre v5.10
```
    use v5.10;

    my $names = "Fred Flinstone and Wilma Flinstone";
    if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ) { # or use \k<last_name>
        say "I saw $+{last_name}";
    }
```
- Variables automaticas, son gratis pero tienen un costo: corren todo mas lento
```
    $& la parte del texto que coincide # ' there,'
    $` lo previo a coincidir           # 'Hello'
    $' posterior a coincidir           # ' neighbor'

    if ( "Hello there, neighbor" =~ /\s(\w+),/ ) {
        print "That actually matched: $&\n";
    }

    A partir de v5.10 se pueden usar otras tres variables
    ${^PREMATCH}
    ${^MATCH}
    ${^POSTMATCH}
```
