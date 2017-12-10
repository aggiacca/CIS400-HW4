#!/usr/bin/perl

# Question 2
# Adam Giaccaglia

use 5.010;
use strict;
use warnings;

my $inputStr = "";
my @outputMatchs = ();

print "Give me a string: ";
chomp ($inputStr = <STDIN>);

if($inputStr =~ /\b\d*[13579]\d*[02468]\b/){
   push (@outputMatchs, "an odd digit followed by an even digit");
}
if($inputStr =~ /\b\w[^\w]\d\b/){
   push (@outputMatchs, "a letter followed by a non-letter followed by a number");
}
if($inputStr =~ /\b[A-Z]\w+\b/){
   push (@outputMatchs, "a word that starts with an upper case letter");
}
if($inputStr =~ /\b[yY][eE][sS]\b/){
   push (@outputMatchs, "the word 'yes' in any combination of upper and lower cases letters");
}
if($inputStr =~ /\b(the)+\b/){
   push (@outputMatchs, "one or more times the word 'the'");
}
if($inputStr =~ /\b\d\d\.\d{1,2}\.\d\d\b/){
   push (@outputMatchs, "a date in the form of one or two digits, a dot, one or two digits, a dot, two digits");
}
if($inputStr =~ /[.!?\\-]/){
   push (@outputMatchs, "a punctuation mark ");
}

foreach my $n (@outputMatchs) {
  print "Has ".$n."\n";
}
