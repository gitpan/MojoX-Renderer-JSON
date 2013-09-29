# NAME

MojoX::Renderer::JSON - Fast [JSON::XS](http://search.cpan.org/perldoc?JSON::XS) rendering handler for [Mojolicious::Renderer](http://search.cpan.org/perldoc?Mojolicious::Renderer)

# SYNOPSIS

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

# DESCRIPTION

This module enables [Mojolicious](http://search.cpan.org/perldoc?Mojolicious) app to render JSON with [JSON::XS](http://search.cpan.org/perldoc?JSON::XS).

# METHODS

## build

Builds and returns a JSON rendering handler for [Mojolicious::Renderer](http://search.cpan.org/perldoc?Mojolicious::Renderer).

# SEE ALSO

[Mojolicious::Renderer](http://search.cpan.org/perldoc?Mojolicious::Renderer)
[Mojolicious](http://search.cpan.org/perldoc?Mojolicious)

# LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

yowcow <yowcow@cpan.org>
