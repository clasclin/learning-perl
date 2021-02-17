#!perl

use 5.010;
use strict;
use warnings;

if (@ARGV) {
    while (<STDIN>) {
        chomp;
        if ( /$ARGV[0]/ ) {
            print "\tMatches\n";
        } else {
            print "\tNot found\n";
        }
    }
}