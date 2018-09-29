#!/usr/bin/env perl
#===============================================================================
#
#         FILE: test_02.pl
#
#        USAGE: ./test_02.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Larry 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/29/2018 03:48:07 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


if (-d "/tmp") {
  print "/tmp is a directory\n"; 
}
else {
  print "/tmp is not a directory\n";
}

