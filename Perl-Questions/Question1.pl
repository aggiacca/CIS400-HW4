#!/usr/bin/perl

# Question 1
# Adam Giaccaglia

use 5.010;
use strict;
use warnings;

my $inputStr = "";


print "Give me a IP Address: ";
chomp ($inputStr = <STDIN>);

if($inputStr =~ /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d)/){
    print "IP address match"
}else{
    print "no match"
}
