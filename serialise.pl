#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

my %hash = (
    H  => 'Hydrogen',
    He => 'Helium',
);

open my $f, '>', 'f1.txt';
foreach my $element (%hash) {

    print $f $element . "\n";
}
close $f;
