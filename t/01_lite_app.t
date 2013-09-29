use strict;
use warnings;
use Mojolicious::Lite;
use Test::Mojo;
use Test::More;

use_ok 'MojoX::Renderer::JSON';

my $app = app;

$app->renderer->add_handler(json => MojoX::Renderer::JSON->build);

get '/render_json' => sub {
    my $c = shift;
    $c->render(json => { message => 'マルチバイト' });
};

my $t = Test::Mojo->new($app);

$t->get_ok('/render_json')
  ->status_is(200);

done_testing;
