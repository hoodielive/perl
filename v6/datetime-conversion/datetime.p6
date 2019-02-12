#!/usr/bin/env perl6

sub Main(Int $timestamp) {
    my $dt = DateTime.new(+$timestamp)
    if ($dt.hour, $dt.minute, $dt.second) == 0 {
        say $dt.Date; 
    }
    else {
        say $dt;
    }
}