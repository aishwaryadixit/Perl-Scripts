#!/usr/bin/env perl
use strict;
use warnings;
use List::AllUtils qw(contains);

my @arr = ();
print ("Enter an array\n");
for (1 .. 5) { my $n = <STDIN>; chomp $n; push @arr, $n; }
my $i = 0;
my @b = ();

foreach my $a (@arr) {
    if (@b->contains ($a)) {
        @b[$i] = $a;
        $i++;
    }

}

