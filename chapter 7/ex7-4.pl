#!perl 

use strict;
use warnings;

while (<>) {
    print if /\b[A-Z]([a-z])+\b/;
}