use v6; 

my regex key { \w+ } 
my regex value { <!before \s> <-[ \n ; ]>+ <!after \s> } 
my regex pair { <key> \h* '=' \h* <value> \n+ } 
my regex header { '[' <-[ \[ \] \n ]>+ ']' \n+ } 
my regex comment { ';' \N*\n+ } 

my regex block { [ <pair> | <comment> ]* } 
my regex section { <header> <block> } 
my regex inifile { <block> <section>* } 

multi sub MAIN('test') {
	use Test; 
	ok 'abc' ~~ /^ <key> $/, '<key> matches a simple identifier'; 
	ok '[abc]' !~~ /^ <key> $/, '<key> does not match a section header'; 
	
	is ' abc ' ~~ /<value>/, 'abc', '<value> does not match leading or trailing whitespace'; 
	is ' a' ~~ /<value>/, 'a', '<value> matches single non-whitespace too'; 
	ok "a\nb" !~~ /^ <value> $/, '<value> does not match \n'; 
