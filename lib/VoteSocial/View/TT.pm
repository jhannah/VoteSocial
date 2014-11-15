package VoteSocial::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

VoteSocial::View::TT - TT View for VoteSocial

=head1 DESCRIPTION

TT View for VoteSocial.

=head1 SEE ALSO

L<VoteSocial>

=head1 AUTHOR

Jay Hannah

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
