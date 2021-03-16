#!perl

use strict;
use warnings;

$^I = ".out";

while (<>) {
    s/fred/Larry/i;
    print;
}