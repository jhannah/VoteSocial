package VoteSocial::Controller::Login::Facebook;
use Moose;
use namespace::autoclean;
use WWW::Facebook::API;

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

  if (my $user = $c->authenticate(undef,'facebook')) {
    # user is logged in - redirect or do something
  } else {
    # user has no account in your system
    # detect Facebook credentials and create an account
    # or do comething else
  } 
  $c->res->redirect("/");
}


#sub callback : Local {
# my ($self, $c) = @_;

# if (my $user = $c->authenticate(undef,'facebook')) {
    # user has an account - redirect or do something cool
#   $c->log->debug("Facebook callback success :)");
# } else {
#    $c->log->debug("Facebook callback failure :(");
    # user doesn't have an account - either detect Twitter
    # credentials and create one, or return an error.
    #
    # Note that "request_token" and "request_token_secret"
    # are stored in $c->user_session as hashref variables under
    # the same names
# }
# $c->res->redirect("/");
#}




=encoding utf8

=head1 AUTHOR

Jay Hannah,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
