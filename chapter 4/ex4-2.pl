#!perl

use strict;
use warnings;

sub total {
    my $total;
    foreach (@_) {
        $total += $_;
    }
    return $total;
}

print "The total sum from 1 to 1000 is: ", total(1..1000), "\n";
