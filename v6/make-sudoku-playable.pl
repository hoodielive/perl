use v6;

my $sudoku = '000000075000080094000500600010000200000900057006003040001000023080000006063240000';

$sudoku = $sudoku.trans('0' => ' '); # trans replaces each occurence of the pairs key with pairs value and returns
                                # the resulting string.

for 0..8 -> $line-number {
    say substr $sudoku, $line-number * 9, 9;
}
