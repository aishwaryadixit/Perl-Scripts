#!/usr/bin/env perl
#
use strict;
use warnings;
use autodie;

open my $fin, '<', 'samplefile.txt';
my $newstring = '';
while (<$fin>) {

    # fetching each line from the file

    $_ =~ s/\t/,/g;
    $newstring = "$newstring$_";

    #$newstring = $newstring . $_;

}

close $fin;

open my $fout, '>', 'samplefile.txt';
print $fout $newstring;
close $fout;

