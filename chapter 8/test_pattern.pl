#!perl

use strict;
use warnings;

if (@ARGV) {
    while(<STDIN>) {
        chomp;
        if ( /$ARGV[0]/ ) {
            print "Matched |$`<$&>$'|\n";
        } else {
            print "No match |$_\n";
        }
    }
}