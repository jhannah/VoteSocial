package VoteSocial::Controller::Login::Twitter;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

VoteSocial::Controller::Login::Twitter - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
  my ( $self, $c ) = @_;
  use Data::Dumper;
#  warn Dumper($c->config);
#  warn "JAY0---------------------";
#  warn Dumper([$c->auth_realms]);
  my $realm = $c->get_auth_realm('twitter');
#  warn Dumper($c->config);
#  warn "JAY000---------------------";
#  warn Dumper($realm->credential);
#  warn "JAY111---------------------";
#  warn "JAY0: " . $realm->credential->authenticate_twitter_url($c);
#  warn "JAY1";
  $c->res->redirect( $realm->credential->authenticate_twitter_url($c) );
}


sub callback : Local {
  my ($self, $c) = @_;

  if (my $user = $c->authenticate(undef,'twitter')) {
    # user has an account - redirect or do something cool
    $c->log->debug("Twitter callback success :)");
  } else {
    $c->log->debug("Twitter callback failure :(");
    # user doesn't have an account - either detect Twitter
    # credentials and create one, or return an error.
    #
    # Note that "request_token" and "request_token_secret"
    # are stored in $c->user_session as hashref variables under
    # the same names
  }
  $c->res->redirect("/");
}



=encoding utf8

=head1 AUTHOR

Jay Hannah

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
