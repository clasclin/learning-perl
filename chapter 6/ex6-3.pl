#!perl

use strict;
use warnings;

my $column_width = 0;
foreach ( keys %ENV ) {
    if (length > $column_width) {
        $column_width = length;
    }
}

foreach ( sort keys %ENV ) {
    printf "%-*s%s\n", ($column_width + 2), $_, $ENV{$_};
}