#!perl

use warnings;
use utf8;

$pi = 3.141516;
chomp( $radius = <STDIN> );
$circumference = 2 * $pi * $radius ;

print "The circumference of a circle with radius ($radius) is: ", $circumference;