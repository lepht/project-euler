#!/usr/bin/perl 
#===============================================================================
#
#         FILE: problem_2.pl
#
#        USAGE: ./problem_2.pl  
#
#  DESCRIPTION: By considering the terms in the Fibonacci sequence whose values
#  				do not exceed four million, find the sum of the even-valued terms.
#
#===============================================================================

use strict;
use warnings;

my ($sum, $prev, $cur) = (0,1,1);

while ($cur < 4_000_000) {
	($prev, $cur) = ($cur, $prev + $cur);
	$sum += $cur if ($cur % 2 == 0);
}

print $sum;
