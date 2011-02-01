#!/usr/bin/env perl
use Modern::Perl;

sub factorial {
    my ($n) = shift;

    if ($n == 1) {
        return 1;
    }
    return $n * factorial($n - 1);
}

my $result = factorial(3);
if ($result == 6) {
    say "Success!";
} else {
    say "Fail!";
    say "Result was $result";
}


