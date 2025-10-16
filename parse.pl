#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
    chomp;
    my @f = split /\|/;
    shift @f;
    map { s/^\s*(\S*)\s*$/$1/ } @f;
    my $l = join ',', @f;
    print "$l\n";
}

