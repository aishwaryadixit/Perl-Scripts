#!/usr/bin/env perl
#Remove the duplicate data from @array
use strict;
use warnings;
use experimental 'smartmatch';

my @array = (1, 2, 3, 4, 5, 1, 2, 2, 5, 4, 4);
my @b     = ();
my $i     = 0;
foreach my $a (@array) {
    if (!($a ~~ @b)) {
        @b[$i] = $a;
        $i++;
    }

}
print @b;

