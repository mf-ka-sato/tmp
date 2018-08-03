package Writer;
use strict;
use warnings;
use utf8;

use parent qw/Env MixIn/;

sub new {
    my $class = shift;
    return bless +{} => $class;
}

sub write {
    my ($self, $message) = @_;
    $self->console->write($message);
}

1;
