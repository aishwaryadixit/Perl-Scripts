#!/usr/bin/env perl
#Copying the contents from one file to another file.
use strict;
use warnings;

open (my $fh, '<', 'f1.txt');

open (my $fh2, '>', 'fnew.txt');
foreach my $line (<$fh>) {
    print $fh2 $line;

}

close ($fh);
close ($fh2);
