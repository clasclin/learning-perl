#!perl

use strict;
use warnings;

$^I = ".out";

while (<>) {
    s/(fred)(.*)(wilma)/\u$3$2\u$1/i;
    print;
}