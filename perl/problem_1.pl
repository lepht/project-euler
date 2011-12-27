#!/usr/bin/perl 
#===============================================================================
#
#         FILE: problem_1.pl
#
#        USAGE: ./problem_1.pl  
#
#  DESCRIPTION: Find the sum of all the multiples of 3 or 5 below 1000.
#
#===============================================================================

use strict;
use warnings;

my $sum;

for (1..999) {
	$sum += $_ if ($_ % 3 == 0 || $_ % 5 == 0);
}

print $sum;
