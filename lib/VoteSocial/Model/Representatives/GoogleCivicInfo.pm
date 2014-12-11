package VoteSocial::Model::Representatives::GoogleCivicInfo;
use Config::General qw(ParseConfig);
use LWP::UserAgent;
use JSON;
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

sub fetch {
  my ($self, $address) = @_;
  my $uri = URI->new($config->{base_url} . "/representatives");
  $uri->query_param(key     => $config->{key});
  $uri->query_param(address => $address);

  my $ua = LWP::UserAgent->new;
  my $res = $ua->get($uri);

#  my $response = decode_json $res->content;
#  $response->{request} = "$uri";

#  return $response;
}


=head1 AUTHOR

Jay Hannah

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
