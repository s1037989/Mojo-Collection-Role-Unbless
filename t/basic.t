use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

use Mojo::Collection 'c';

my $c = c->new(bless({a=>1}, 'A'), bless({b=>1}, 'B'))->with_roles('Mojo::Collection::Role::Unbless');
is $c->size, 2;
is ref $c->first, 'A';
$c = $c->unbless;
is $c->size, 2;
is ref $c->first, 'HASH';

done_testing;
