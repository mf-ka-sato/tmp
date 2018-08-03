package Console;
use strict;
use warnings;
use utf8;

sub new {
    my $class = shift;
    bless +{} => $class;
}

sub write {
    my ($class, $message) = @_;
    print $message;
}

1;
