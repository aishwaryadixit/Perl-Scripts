#!/usr/bin/env perl

use strict;
use warnings;
use autodie;

use Data::Dumper qw(Dumper);

open my $fin, '<', 'f1.txt';

my %hash = map { chomp; $_ } <$fin>;

print Dumper \%hash;
