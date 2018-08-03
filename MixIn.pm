package MixIn;
use strict;
use warnings;
use utf8;
use FindBin;
use UNIVERSAL::require;
use Class::Inspector;

sub mixin {
    my ($self, @arg_classes) = @_;
    my $ref = ref $self;
    $ref->require;
    $_->require for @arg_classes;
    my $functions = Class::Inspector->functions($ref);
    for my $function (@$functions) {
        my $before;
        eval('$before = &'."$ref".'::'."$function");
        warn $before;
        *{aaa::function} = sub {
            my ($x, @x);
            eval('unshift @' . "$ref" . '::ISA, @arg_classes');
            wantarray 
                ? @x = $before->(@_)
                : $x = $before->(@_);
            eval('shift @' . "$ref" . '::ISA, @arg_classes');
            wantarray
                ? @x
                : $x;
        };
    }
    return $self;
};

1;
