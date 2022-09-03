#!/usr/bin/env perl
#To read command-line arguments with Perl
use strict;
use warnings;
use Data::Dumper qw(Dumper);

print Dumper \@ARGV;
print $ARGV[0];
