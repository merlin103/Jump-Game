#!/bin/perl -w

use strict;
use feature 'say';
use List::Util 'max';

sub Jump_Game{
	my @nums = @_;
	my $step = $nums[0];
	
	foreach (1 .. $#nums - 1){
		return 0 unless --$step;
		$step = max($step, $nums[$_]);
	}

	return 1
}

say(Jump_Game(2, 3, 1, 1, 4)); # 1
say(Jump_Game(3, 2, 1, 0, 4)); # 0
