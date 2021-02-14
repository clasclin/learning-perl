#!perl

use 5.010;
use strict;
use warnings;

say "What should I right justify:";
chomp(my @words = <STDIN>);
say( (0..9) x 3 );
printf "%20s\n" x @words, @words;
