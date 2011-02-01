#!/usr/bin/env perl
use Modern::Perl;

#say "Hello world!";

sub decToBin {
    my $dec = shift;
    
    #find the lowest power of two greater than the number
    
    #append the current results to the upcoming results

}

sub binary {
    my ($n) = @_;
    say "Binary called with: $n";
    return $n if $n == 0 || $n == 1;

    my $k = int($n / 2);
    my $b = $n % 2;

    my $E = binary($k);
    return $E . $b;
}

my $bin = binary(37);
#TODO: In future, use assert
if ($bin eq "100101") {
    say "Success!";
} else {
    say "Fail!";
    say "Result was $bin";
}

my $dec = decToBin("111");
#TODO: In future, use assert
if ($dec == 7) {
    say "Success!";
} else {
    say "Fail!";
    say "Result was $dec";
}
