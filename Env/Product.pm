package Env::Product;
use strict;
use warnings;
use utf8;

use parent 'Env';

use Console;

sub console { Console->new; };

1;
