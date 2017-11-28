#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $inputStr = "";
my @outputMatchs = ("");

print "Give me a string: ";
chomp ($inputStr = <STDIN>);

if($inputStr =~ /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d)/){
   push (@outputMatchs, "an odd digit followed by an even digit");
}
 push (@outputMatchs, "test");
foreach my $n (@outputMatchs) {
  print "Has ".$n."\n";
}
