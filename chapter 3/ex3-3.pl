#!perl

use warnings;
use utf8;

@names = <STDIN>;
print sort @names;
@sorted = sort @names;
chomp(@sorted);
print "$_ " foreach (@sorted);
