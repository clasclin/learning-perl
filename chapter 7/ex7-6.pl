#!perl 

use strict;
use warnings;

while (<>) {
    print if /(\bfred\b|\bwilma\b){1,}.*(\bwilma\b|\bfred\b){1,}/;
}