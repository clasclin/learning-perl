#!perl

use strict;
use warnings;

print "What should I right justify\n";
print "Choose the column width: ";

chomp(my $width = <STDIN>);
chomp(my @words = <STDIN>);

print( (0..9) x (1+$width/10), "\n");
foreach (@words) {
    printf "%*s\n", $width, $_;
}
