#!perl

use warnings;
use utf8;

print "String to repeat: ";
chomp( $msg = <STDIN> );
print "How many times?: ";
chomp( $n = <STDIN> );
print "$msg\n" x $n;