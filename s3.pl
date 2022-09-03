#!/usr/bin/env perl
use strict;
use warnings;

sub fac {
    my $a = @_;
    print ("a =$a \n");

    my $mul = sub {

        print ("val = $_[0] \n");
        return ($_[0]**$_[0] - 1);

    };

    return (&$mul ($a));
}

my $res = fac (4);

print "$res \n";
