#!perl

use strict;
use warnings;

print "One word per line:\n";
chomp(my @words = <STDIN>);

my %reg;
foreach (@words) {
    $reg{$_} += 1;
}

foreach ( sort keys %reg ) {
    print "$_ was seen $reg{$_}\n";
}

print "The total of words seen so far: " . @words . "\n";