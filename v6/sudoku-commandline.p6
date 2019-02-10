use v6;

constant separator = '+---+---+---+';

sub MAIN($sudoku) {
    my $substituted = $sudoku.trans: '0' => ' ';

    for $substituted.comb(9) -> $line {

        say separator if %++ %% 3;
        say '|', $line.comb(3).join('|'), '|';
    }
    say separator;
}
# call it with perl6-m sudoku-format-08.p6 0000000750000800940005006000100002000009 00057006003040001000023080000006063240000
