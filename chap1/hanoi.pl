#!/usr/bin/env perl
use Modern::Perl;

use Data::Dumper;

sub hanoi {
    my ($n, $start, $end, $extra, $move_disk) = @_;
    if ($n == 1) {
        $move_disk->(1, $start, $end);
    } else { 
        hanoi($n-1, $start, $extra, $end, $move_disk);
        $move_disk->($n, $start, $end);
        hanoi($n-1, $extra, $end, $start, $move_disk);
    }
}

sub print_instruction {
    my ($disk, $start, $end) = @_;

    say "Move disk #$disk from $start to $end";
}

hanoi(3, 'A', 'C', 'B', \&print_instruction);

#hanoi(
#    [ 0, 1, 2, 3, 4, ],
#    [ ],
#    [ ],
#);
