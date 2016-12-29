package nemty::Controller::Users;
use Moose;
use namespace::autoclean;
use Digest::MD5 qw(md5 md5_hex md5_base64);

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

nemty::Controller::Users - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched nemty::Controller::Users in Users.');
}

sub list :Local {

    my ($self, $c) = @_;

    $c->stash(users => [$c->model('DB::Subscriber')->all]);

    $c->stash(template => 'users/list.tt');
}

sub create :Local {

    my ($self, $c) = @_;

    # Set the TT template to use
    $c->stash(template => 'users/create.tt');
}

sub form_create_do :Local {
    my ($self, $c) = @_;

    my $user_name   = $c->request->params->{username}     || 'N/A';
    my $pass    = $c->request->params->{password}    || 'N/A';
    my $enc_pass = md5($pass);

    my $user = $c->model('DB::Subscriber')->create({
        username   => $user_name,
        password  => $pass,
        encryptedpassword => $enc_pass,
    });

    # Store new model object in stash and set template
    $c->stash(cuser     => $user,
        template => 'users/create_done.tt');
}


sub delete :Path :Args(1) {
    my ($self, $c, $username) = @_;

    #$c->stash->{object} = $c->model('DB::Subscriber')->find({
    #    username => $username
    #});

    #die "User $username not found!" if !$c->stash->{object};
    #
    #
    #$c->stash->{object}->delete;

    # Set a status message to be displayed at the top of the view
    #$c->stash->{status_msg} = "user deleted.";

    $c->model('DB::Subscriber')->search({
            username => $username,
        })->delete;

    # Forward to the list action/method in this controller
    $c->forward('list');
}

=encoding utf8

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
