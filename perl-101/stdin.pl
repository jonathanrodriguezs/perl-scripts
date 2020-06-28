#!/usr/bin/perl
sub get_line {
    my $line = <STDIN>;
    $line =~ s/\R//g;
    return $line;
}

print "Who are you? ";
$n = get_line;
print "Hello, $n, it's great to see you";
