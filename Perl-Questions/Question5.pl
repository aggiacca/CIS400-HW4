#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $inputStr = "";
my @digits = ();

print "Give me a digit or X to stop: ";
chomp ($inputStr = <STDIN>);
while ($inputStr ne "X"){
  push (@digits, $inputStr);
  print "Give me a digit: ";
  chomp ($inputStr = <STDIN>);
}

foreach my $n (@digits) {
  print $n."\n";
}