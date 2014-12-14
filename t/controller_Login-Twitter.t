use strict;
use warnings;
use Test::More;


use Catalyst::Test 'VoteSocial';
use VoteSocial::Controller::Login::Twitter;

ok( request('/login/twitter')->is_success, 'Request should succeed' );
done_testing();
