#!/usr/bin/perl -w
use strict;
use feature qw(say);

sub binary_search {
    my $w = 30;
    my @array = @_; # Use references
    my $low = 0;
    my $high = scalar @array;

    while ($low < $high) {
        my $try = int(($low + $high) / 2);
        if ($array[$try] > $w) {
            $high = $try;
        } elsif ($array[$try] < $w) {
            $low = $try + 1;
        } else {
            return $try;
        }
    }

    return -1;
}

say binary_search(2, 10, 12, 30, 32);
