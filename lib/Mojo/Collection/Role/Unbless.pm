package Mojo::Collection::Role::Unbless;
 
use Role::Tiny;
 
use Data::Structure::Util;

our $VERSION = '0.001';
 
requires 'map';

sub unbless { shift->map(sub{Data::Structure::Util::unbless $_}) }

1;

=head1 NAME

Mojo::Collection::Role::Unbless - Unbless all elements in the collection,
useful for doing a TO_JSON of blessed hash objects.

=cut
