use strict;
use warnings;
use Mojolicious::Lite;
use Test::Mojo;
use Test::More;

plugin 'json_renderer';

get '/json' => sub {
    my $c = shift;
    $c->render(json => { message => 'マルチバイト' });
};

my $app = app;
my $t = Test::Mojo->new($app);

$t->get_ok('/json')
  ->status_is(200);

done_testing;
