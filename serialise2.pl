#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my %hash = (
    H  => 'Hydrogen',
    He => 'Helium',
);

open my $f, '>', 'f1.txt';
print $f %hash;
close $f;
