#!/usr/bin/env perl
#Demonstrate how to use push() and pop() functions:
use strict;
use warnings;
use Switch;

my @arr = ();
for (1 .. 5) {
    $_ = <STDIN>;

    push (@arr, $_);
}

my $cases = 3;
while ($cases != 4) {
    print ("\n1 to push\n2 to pop\n 3 to display\n4 to exit");
    $cases = <>;
    chomp ($cases);
    switch ($cases) {
        case 1 {
            print ("Enter new value");
            my $val = <>;
            push (@arr, $val);
        }
        case 2 {
            print (pop (@arr));
        }
        case 3 {
            foreach (@arr) {
                print ($_);
            }
        }
        case 4 {
            exit ();
        }
    }

}

