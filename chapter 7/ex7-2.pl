#!perl 

use strict;
use warnings;

while (<>) {
    print if /\b[Ff]red\b/;
}