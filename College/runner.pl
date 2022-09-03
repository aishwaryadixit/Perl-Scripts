#!/usr/bin/env perl

use strict;
use warnings;

require College::Student;
College::Student->import;

use College::Person;

College::Student->person;

College::Person->person;

our $var2 = 'something';

print "Outside Before: $var2\n";

sub func {
    local $var2;

    $var2 = 1;
    print "Inside        : $var2\n";
}

func ();

print "Outside After : $var2\n";

local $var2 = 'world';
print "Outer local   : $var2\n";

my %hash = (
    H  => 'Hydrogen',
    He => 'Helium',
);

open my $f, '>', 'f1.txt';

