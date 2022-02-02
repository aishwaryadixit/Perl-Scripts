package Maths::Calculator;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self  = {};

    $self->{history} = '';
    return bless $self, $class;
}

sub history {
    my $self = shift;

    return $self->{history};
}

sub addition {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    $self->{history} .= "\n$n1 + $n2\n";

    return $n1 + $n2;
}

sub subtraction {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    if ($n1 > $n2) {
        $self->{history} .= "\n$n1 - $n2\n";
        return $n1 - $n2;
    }

    else {
        $self->{history} .= "\n$n2 - $n1\n";
        return $n2 - $n1;
    }
}

sub multiplication {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    $self->{history} .= "\n$n1 * $n2\n";
    $n1 = $n1 * $n2;

    return $n1;
}

sub division {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    $self->{history} .= "\n$n1 / $n2\n";

    if ($n2 != 0) {
        return $n1 / $n2;
    }

    else {
        return "Cannot divide by 0";
    }
}

sub exponent {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    $self->{history} .= "\n$n1 ^ $n2\n";
    $n1 = $n1**$n2;
    return $n1;
}

sub root {
    my $self = shift;
    my $n1   = shift;
    my $n2   = shift;

    $self->{history} .= "\n$n1 root $n2\n";

    my $inverse = 1 / $n2;
    my $res  = $n1**$inverse;
    return $res;
}

1;
