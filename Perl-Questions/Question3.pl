#!/usr/bin/perl

# Question 3
# Adam Giaccaglia



use 5.010;
use strict;
use warnings;

my $inputStr = "";
my @outputMatchs = ("");
my @matches = ();
my $outputFilename = 'output.txt';

my $filename = 'input.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
 print "Reading File\n";
 
while (my $row = <$fh>) {
  chomp $row;
  if($row =~ /\b([a-z0-9]([a-z0-9.]+[a-z0-9])?\@[a-z0-9.-]+)\b/){
    push (@matches, $1);
  }

  
}

print "-------------------------\n";
print "Done Collecting\n";

my @sortedMatches = sort { lc($a) cmp lc($b) } @matches;


my $outFile;
open($outFile, '>', $outputFilename) or die "Could not open file '$outFile' $!";
foreach my $match (@sortedMatches){
  print $outFile $match.",\n";
}

print "Output file complete\n";