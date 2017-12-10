#!/usr/bin/perl

# Question 5
# Adam Giaccaglia

use 5.010;
use strict;
use warnings;


my $inputStr = "";
my %digicount;

print "Give me a digit or X to stop: ";
chomp ($inputStr = <STDIN>);

while ($inputStr =~ /^\d+?$/){
  
  if(not exists $digicount{$inputStr}){
      $digicount{$inputStr} = 1;
   }else{
     $digicount{$inputStr} += 1;
   }
  
  print "Give me a digit: ";
  chomp ($inputStr = <STDIN>);
}


foreach my $num (sort keys %digicount) {
    printf "%-8s %s\n", $num, $digicount{$num};
}