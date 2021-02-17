#!perl 

use strict;
use warnings;

while (<>) {
    print if /(\S)\1/;
}