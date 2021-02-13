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
        my $current = pop @names;
        print "Hi ", $current, "! I've also seen: @names\n";
        push @names, $current;
    }
}

greet "Fred";
greet "Barney";
greet "Wilma";
greet "Betty";
