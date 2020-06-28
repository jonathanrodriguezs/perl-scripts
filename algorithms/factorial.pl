#!/usr/bin/perl

# factorial recursive ($n) computes the factorial of $n
# using a recursive algorithm.
sub factorial_recursive {
    my ($n) = shift;
    return $n if $n <= 2;
    return $n * factorial_recursive($n - 1);
}

print factorial_recursive 120;
