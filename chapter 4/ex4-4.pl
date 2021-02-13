#!perl

use 5.010;

use strict;
use warnings;

sub greet {
    state @names;
    my $name = shift;
    push @names, $name;
    if ($#names == 0) {
        print "Hi $name! You are the first one here!\n";
    } else {
        print "Hi ", pop @names, "! ", pop @names, " is also here!\n";
    }
}

greet "Fred";
greet "Barney";