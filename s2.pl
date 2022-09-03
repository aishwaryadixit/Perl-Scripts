#!/usr/bin/env perl
use strict;
use warnings;

my $res = calc (5, 5);
print "$res \n";

sub calc {

    my ($a, $b) = @_;
    my $sq = sub {
        return ($_[0]**2);
    };

    return (&$sq ($a) + &$sq ($b));
}

