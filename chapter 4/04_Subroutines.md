## Chapter 4 - Subroutines

### Subroutines

- Definir subrutinas
- Invocar subrutinas mediante &
- La ultima evaluada es la expresion de retorno
- Argumentos
- Variable especial interna para argumentos @_
- Limitar el alcance de las variables my
- Cantidad variable de argumentos foreach (@_) { ... }
- Declarar las variables strict
- Retornar valores desde una subrutina return
```
    my @names  = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
    my $result = &which_element_is("dino", @names);

    sub which_element_is {
        my ($what, @array) = @_;
        for (0..$#array) { # indices of @array's elements
            if ($what eq $array[$_]) {
                return $_; # return early once found
            }
        }
        -1;                # element not found
    }
```
- Recordar el valor de las variables state v5.10
- Signatures experimental feature
