#!/usr/bin/perl

#read the password hash

$passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

use Digest::SHA qw/sha256_hex/;
use threads;
use threads::shared;
my @results :shared;
 
print "$_ : ",join(" ",search($_)), "\n" for (qw/
  04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2
/);
 
 
sub search {
  my $hash = shift;
  @results = ();
  $_->join() for map { threads->create('tsearch', $_, $hash) } 0..25;
  return @results;
}
 
sub tsearch {
  my($tnum, $hash) = @_;
  my $s = chr(ord("a")+$tnum) . "aaaa";
 
  for (1..456976) { # 26^4
    push @results, $s if sha256_hex($s) eq $hash;
    $s++;
  }
}

   