#!/usr/bin/env perl
#===============================================================================
#
#         FILE: test_01.pl
#
#        USAGE: ./test_01.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Larry Solomon 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/29/2018 03:46:32 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

foreach $a ('1', '2') {
  foreach $b ('a', 'b') {
    print "$a $b\n";  
  }
}

