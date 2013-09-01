#!/usr/bin/env perl

use warnings;
use strict;

#### CHANGE
open (my $fh, "<", "data.txt") or die "could not open file: $!\n";

my %names;

while (my $line = <$fh>) {
	chomp $line;
	$names{$line} = 0;
}

my @sorted = sort {$a <=> $b} keys %names;
print "@sorted\n\n";

foreach my $key (keys %names) {
	print "$key: $names{$key}\n";
}
