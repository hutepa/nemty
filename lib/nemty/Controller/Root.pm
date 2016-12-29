package nemty::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

nemty::Controller::Root - Root Controller for nemty

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut


sub auto :Private {
    my ($self, $c) = @_;

    # 404 unless https and request method is GET/HEAD/POST or we're testing
    unless( grep /^(?:GET|HEAD|POST)$/, $c->req->method )
    {
        $c->detach('default');
    }
    if ($c->controller eq $c->controller('Root')) {
        return 1;
    }
    # user must be authenticated
    if ( !$c->user_exists )
    {
        $c->response->redirect($c->uri_for('/login'));
        return 0;
    }
    return 1;
}



sub login :Chained('/') PathPart('login') CaptureArgs(0) {}

sub login_auth :Chained('login') PathPart('') Args(0) POST {
    my ($self, $c) = @_;

        my $username = $c->req->params->{username};
        my $password = $c->req->params->{password};

        if ($username && $password) {
            #my $user = $c->find_user({ username => $username });
            #$c->set_authenticated($user);
            if ($c->authenticate({ username => $username,
                                  password => $password
                                }))
            {
                # authentication success, check user active and redirect to the secure landing page
                #if ($c->user->get_object->active) {
                    $c->response->redirect($c->uri_for($c->controller('Users')->action_for('list')));
                    return;
                #}
            }
            #if ( $c->user_exists )
            #{
            #    $c->response->redirect($c->uri_for($c->controller('Users')->action_for('list')));
            #    return;

#            }
            else {
                $c->stash(error_msg => "Bad username or password.$username");

            }
        }else {
            # Set an error message
            $c->stash(error_msg => "Empty username or password.")
                unless ($c->user_exists);
        }

    $c->forward('login_form');
}

sub login_form :Chained('login') PathPart('') Args(0) GET {
    my ($self, $c) = @_;

    # load the login template
    $c->stash(template => 'login.tt');
    $c->stash->{no_wrapper} = 1;

}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}
sub index :Path :Args(0) {
    #   my ( $self, $c ) = @_;

    # Hello World
    #$c->response->body( $c->welcome_message );
    #   $c->stash(template => 'index.tt');
    my ($self, $c) = @_;

    #if ( !$c->user_exists )
    #{
    #    $c->response->redirect($c->uri_for('/login'));
    #    return 0;
    #}
    # load the login template
    #$c->stash(template => 'index.tt');
    #$c->stash->{no_wrapper} = 1;
    $c->response->redirect($c->uri_for('/users/list'));
    #$c->stash->{no_wrapper} = 1;

}
=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {


    my ($self, $c) = @_;

    # don't require TLS for testing
    unless ($c->config->{testing} == 1) {
        $c->response->header('Strict-Transport-Security' => 'max-age=3600');
    }

    $c->response->header(
        'X-Frame-Options'           => 'DENY',
        'Content-Security-Policy'   => "default-src 'self' http://www.google.com https://www.google.com 'unsafe-eval' 'unsafe-inline'",
        'X-Content-Type-Options'    => 'nosniff',
        'X-Download-Options'        => 'noopen',
        'X-XSS-Protection'          => "1; 'mode=block'",
    );


}

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
