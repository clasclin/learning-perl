#!perl

use strict;
use warnings;

sub average {
    my $num_elements = @_;
    my $total;
    foreach (@_) {
        $total += $_;
    }
    return $total / $num_elements;
}

sub above_average {
    my $average = average @_;
    my @above;
    foreach (@_) {
        if ($_ > $average) {
            push @above, $_;
        }
    }
    return @above;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";

my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
