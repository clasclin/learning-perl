#!perl

use warnings;
use utf8;

@names = qw( fred betty barney dino wilma pebbles bamm-bamm );
chomp(@numbers = <STDIN>);
foreach (@numbers) {
    print "$_ $names[$_ - 1]\n";
}