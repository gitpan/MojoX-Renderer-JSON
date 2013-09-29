package Mojolicious::Plugin::JsonRenderer;
use strict;
use warnings;
use parent qw(Mojolicious::Plugin);

use MojoX::Renderer::JSON;

sub register {
    my ($self, $app) = @_;
    $app->renderer->add_handler(
        json => MojoX::Renderer::JSON->build
    );
}

1;

__END__

=head1 NAME

Mojolicious::Plugin::JsonRenderer - JSON::XS plugin for Mojolicious

=head1 SYNOPSIS

    # Mojolicious
    $app->plugin('json_renderer');

    # Mojolicious::Lite
    plugin 'json_renderer';

=head1 DESCRIPTION

Simple L<MojoX::Renderer::JSON> plugin for L<Mojolicious> and L<Mojolicious::Lite>.

=head1 METHODS

This module inherits all methods from L<Mojolicious::Plugin> except:

=over 2

=item * register

Registers json handler to L<Mojolicious::Renderer>.

=back

=head1 SEE ALSO

L<MojoX::Renderer::JSON>
L<Mojolicious::Renderer>
L<Mojolicious>

=head1 LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yowcow E<lt>yowcow@cpan.orgE<gt>

=cut

