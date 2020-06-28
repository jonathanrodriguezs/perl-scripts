#!/usr/bin/perl
use strict;
use warnings;

# euclidean algo ($a, $b) to compute the MCD of $a and $b
sub euclidean_mcd {
    my ($a, $b) = @_;
    return euclidean_mcd($b, $a) if ($a < $b);
    while($b != 0) {
        ($a, $b) = ($b, $a % $b);
    }
    return $a;
}

print euclidean_mcd 24, 300;
