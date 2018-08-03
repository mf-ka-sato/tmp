package Exec;
use strict;
use warnings;
use utf8;

use Writer;

my $writer = Writer->new->mixin(qw/Env::Test/);
my $writer2 = Writer->new->mixin(qw/Env::Product/);
$writer->write('hoge');
$writer2->write('hoge');

1;
