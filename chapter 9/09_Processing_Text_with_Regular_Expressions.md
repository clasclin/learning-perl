## Chapter 9 - Processing Text with Regular Expressions

### Processing Text with Regular Expressions

- Substituciones
```
    s/find/replace/ buscar y reemplazar
    s/find/replace/g buscar y reemplazar globalmente
    s/\A\s+|\s+\z//g elimina los espacios al principio y al final

    se pueden usar multiples delimitadores
    s{find}{replace}
    s[find]{replace}
    s<find>#replace#

    (my $copy = $original) =~ /s\d+ ribs?/10 ribs/;
    ocurre primero la asignacion de la copia y luego se modifican los datos
```
- Cambiar mayusculas y minusculas
```
    \U mayusculas
    \L minusculas
    \E finaliza el cambio

    en su variante minuscula afectan al siguiente caracter
    \u
    \l

    $_ = "I saw Barney with fred.";
    s/(barney|fred)/\U$1/gi; # I saw BARNEY with FRED.

    s/(\w+) with (\w+)/\U$1\E with $1/i; # I saw FRED with barney.

    s/(fred|barney)/\u\L$1/gi; # I saw Fred with Barney.

    No solo disponibles en sustituciones tambien se pueden usar en interpolaciones de comillas
    my $input  = 'fRed';
    my $string = 'FRED';
    if ( "\L$input" -eq "\L$string" ) {
        print "They are the same\n";
    }

    o en su variente de funciones
    lc
    uc
    fc
    lcfirst
    ucfirst
```
- Metaquoting
```
    if ( s/\Q(((\E(Fred)/$1/ ) { ... }

    if ( s/\Q$prefix\E(Fred)/$1/ ) { ... }

    my $prefix = quotemeta( $input_pattern );
    if ( s/$prefix(Fred)/$1/ ) { ... }
```
- Separar y unir
```
    my @fields = split /separator/, $sting;
    my $result = join $glue, @pieces;
```
- Encontrar
```
    m// en contexto de lista permite especificar que mantener
    my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
    my @words = ($text =~ /([a-z]+)/ig);
    print "Result: @words\n"; # Fred dropped a ton granite block on Mr. Slate

    my $text = "Barney Rubble Fred Flinstone Wilma Flinstone";
    my %last_name = ($text =~ /(\w+)\s+(\w+)/g); # key value
```
- Non greedy
```
    my $text = '<b>Fred</b> and <b>Barney</b>';
    my $match_count = $text =~ s|<b>(.*?)</b>|\U$1|g; # FRED and BARNEY

    ?? zero matches
    *? zero o more a few as possible
    +? one or more a few as possible
```