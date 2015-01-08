package VoteSocial::Controller::Login::Facebook;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

VoteSocial::Controller::Login::Facebook - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
  my ( $self, $c ) = @_;

  my $user = $c->authenticate({
    scope => ['offline_access', 'publish_stream'],
  });
 
  # ->authenticate set up a response that'll redirect to Facebook.
  #
  # Wait for the user to tell Facebook to authorise our application
  # by aborting our own request processing with ->detach and simply
  # sending the redirect.
  #
  # Once the user confirmed access for our application, Facebook will
  # redirect back to the URL of this action and ->authenticate will
  # return a valid user retrieved from the user store using the token
  # received from Facebook.

  $c->detach unless $user;
  $c->res->redirect("/");  
}



=encoding utf8

=head1 AUTHOR

Jay Hannah,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
