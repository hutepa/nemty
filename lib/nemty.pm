package nemty;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application.
#
# Note that ORDERING IS IMPORTANT here as plugins are initialized in order,
# therefore you almost certainly want to keep ConfigLoader at the head of the
# list if you're using it.
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use Catalyst qw/
    -Debug
    ConfigLoader
    Static::Simple

    StackTrace
    Authentication
    Session
    Session::Store::File
    Session::State::Cookie
/;

extends 'Catalyst';

our $VERSION = '0.01';

# Configure the application.
#
# Note that settings in nemty.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
    name => 'nemty',
    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
    enable_catalyst_header => 0, # Send X-Catalyst header

    # Check the command line args for TESTING, else set it false
    testing => $ENV{TESTING} || 0,

    # Configure SimpleDB Authentication
    'Plugin::Authentication' => {
        default => {
            class           => 'SimpleDB',
            user_model      => 'DB::User',
            password_type   => 'clear',
        },
    },

    # Set the right headers for nginx
    using_frontend_proxy => 1,

    # Sessions will last an hour
    'Plugin::Session' => {
        expires => 3600,
    },

    # Captch::reCAPTCHA
    # Add your public and private key here, switch to enabled =>1 to turn on
    'Captcha' => {
        enabled => 0,
        private_key => '',
        public_key  => '',
    },
);

# Start the application
__PACKAGE__->setup();

=encoding utf8

=head1 NAME

nemty - Radius Admin

=head1 SYNOPSIS

    script/nemty_server.pl

=head1 DESCRIPTION

Web application to manage Radius server.

=head1 SEE ALSO

L<nemty::Controller::Root>, L<Catalyst>

=head1 AUTHOR

Mahmoud Abdelsalam

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
