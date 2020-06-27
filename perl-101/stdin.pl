#!/usr/bin/perl
sub get_line {
    my $text = <STDIN>;
    $text =~ s/\n//g;
    $text =~ s/\r//g;
    return $text;
}

print "Who are you? ";
$n = get_line;
print "Hello, $n, it's great to see you";
