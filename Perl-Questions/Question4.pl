#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $inputStr = "";

print "Give me a string: ";
chomp ($inputStr = <STDIN>);

my $count = 0;
foreach (split //, $inputStr) {
  $count += $_
}

print "Total Count: ".$count."\n"