#!/usr/bin/env perl
use strict;
use warnings;
use List::AllUtils qw(uniq);

my @arr=();
print ("Enter an array\n");
for (1..5) {my $n = <STDIN>; chomp $n; push @arr,$n;}
my @b = uniq @arr;
print @b

