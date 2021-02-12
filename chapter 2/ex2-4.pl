#!perl

use warnings;
use utf8;

print "First number: ";
chomp( $first = <STDIN> );
print "Second number: ";
chomp( $second = <STDIN> );
print $first * $second;