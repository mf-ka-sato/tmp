package Env::Test;
use strict;
use warnings;
use utf8;

use parent 'Env';

use Console;

package TestConsole {
    sub new { bless +{} => shift; }
    sub write { shift; warn @_; }
}

sub console { TestConsole->new; };

1;
