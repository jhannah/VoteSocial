use strict;
use warnings;

use VoteSocial;

my $app = VoteSocial->apply_default_middlewares(VoteSocial->psgi_app);
$app;

