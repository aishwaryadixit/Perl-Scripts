#!/usr/bin/env perl

package College::Student;
use strict;
use warnings;

use parent qw(College::Person);

sub import {
    print "Student has been imported.\n";
}

sub student {
    print "I am a student \n";
}

1;
