package VoteSocial::Model::Representatives::GoogleCivicInfo;
use Config::General qw(ParseConfig);
use LWP::UserAgent;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';

my $config = {ParseConfig("votesocial.conf")}->{google_civic_info_api};

=head1 NAME

VoteSocial::Model::Representatives::GoogleCivicInfo - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=encoding utf8

=cut

sub html {
  my ($self) = @_;
  my $uri = URI->new($config->{base_url} . "/representatives");
  $uri->query_param(key     => $config->{key});
  $uri->query_param(address => "16204 Timberlane Dr Omaha NE 68136");

  my $ua = LWP::UserAgent->new;
  my $res = $ua->get($uri);

  return "<pre>Request: $uri\nResponse: " . $res->content;
}


=head1 AUTHOR

Jay Hannah

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
