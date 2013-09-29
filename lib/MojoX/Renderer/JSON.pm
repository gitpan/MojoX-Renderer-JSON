package MojoX::Renderer::JSON;
use 5.008005;
use strict;
use warnings;
our $VERSION = "0.02";

use JSON::XS qw(encode_json);

sub build {
    sub {
        my ($renderer, $c, $output, $options) = @_;
        $$output = encode_json($options->{json})
    };
}

1;
__END__

=encoding utf-8

=head1 NAME

MojoX::Renderer::JSON - Fast L<JSON::XS> rendering handler for L<Mojolicious::Renderer>

=head1 SYNOPSIS

    sub startup {
        my $app = shift;

        # Either via plugin
        $app->plugin('json_renderer');

        # or manually
        use MojoX::Renderer::JSON;
        $app->renderer->add_handler(
            json => MojoX::Renderer::JSON->build,
        );

        ...
    }

=head1 DESCRIPTION

This module enables L<Mojolicious> app to render JSON with L<JSON::XS>.

=head1 METHODS

=head2 build

Builds and returns a JSON rendering handler for L<Mojolicious::Renderer>.

=head1 SEE ALSO

L<Mojolicious::Renderer>
L<Mojolicious>

=head1 LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yowcow E<lt>yowcow@cpan.orgE<gt>

=cut

