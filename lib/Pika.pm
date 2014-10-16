package Pika;

# ABSTRACT: my tiny bot

use strict;
use warnings;
use utf8::all;
use boolean;
use feature ();
use autobox;
use autobox::Core;
use Method::Signatures;
use Import::Into;
use App::Cmd::Setup -app;

sub import {
    my $target = caller;
    my $class  = shift;

    'strict'->import::into($target);
    'warnings'->import::into($target);
    'utf8::all'->import::into($target);
    'autodie'->import::into($target, ':all');
    'feature'->import::into($target, ':5.14');
    'boolean'->import::into($target, ':all');
    'autobox'->import::into($target);
    'autobox::Core'->import::into($target);
    Method::Signatures->import::into($target, qw(method func));
}

1;
