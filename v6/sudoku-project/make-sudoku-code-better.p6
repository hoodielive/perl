my $sudoku = '000000075000080094000500600010000200000900057006003040001000023080000006063240000';

$sudoku = $sudoku.trans('0' => ' ');

constant $separator = '+---+---+---+';
my $index = 0;

for $sudoku.comb(9) -> $line {
    if $index++ %% 3 {
        say $separator;
    }
    say '|', $line.comb(3).join('|'), '|';
}
say $separator if $index++ %% 3;
