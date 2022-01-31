#!/usr/bin/env perl

use strict;
use warnings;

use Maths::Calculator;

my $opr = '+';
my $obj = Maths::Calculator->new;

while ($opr) {
    print "Enter the arithmetic opr\n";

    $opr = <STDIN>;

    print "Enter 2 numbers\n";

    my $n1 = <STDIN>
      ; # <> (readline operator) reads a whole line, _including_ the ending newline character!
    my $n2 = <STDIN>;

    chomp $n1;
    chomp $n2;
    chomp $opr;

    if ($opr eq "+") {
        print "Addition\n";
        my $res = $obj->addition ($n1, $n2);
        print "Result: $res\n";

    }

    elsif ($opr eq "-") {
        my $res = $obj->subtraction ($n1, $n2);
        print ("Subtraction Result: $res\n");
    }

    elsif ($opr eq "*") {
        my $res = $obj->multiplication ($n1, $n2);
        print ("Multiplication Result: $res\n");
    }

    elsif ($opr eq "/") {
        my $res = $obj->division ($n1, $n2);
        print ("Division Result: $res\n");
    }

    elsif ($opr eq "h") {
        my $res = $obj->history;
        print ("History $res \n");
    }
}
print " No operator provided. \n";
