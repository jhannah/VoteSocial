use strict;
use warnings;
use Test::More;


use Catalyst::Test 'VoteSocial';
use VoteSocial::Controller::Login::Facebook;

ok( request('/login/facebook')->is_success, 'Request should succeed' );
done_testing();
