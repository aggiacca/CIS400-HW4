#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $inputStr = "";
my @outputMatchs = ("");

my $filename = 'input.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  #print "$row\n";
}

my $testString = "adam\@test.com awfjiojfwej blah\@google.com "

my @matches = $testString =~ '^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$'