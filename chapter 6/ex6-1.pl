#!perl

use strict;
use warnings;

my %family = ( fred => 'filnstone', barney => 'rubble', wilma => 'flinstone' );

print "Tellme a name: ";
chomp(my $member = <STDIN>);

if ( exists $family{$member} ) {
    print "$member is from $family{$member}\n";
} else {
    print "Unkown family\n";
}
