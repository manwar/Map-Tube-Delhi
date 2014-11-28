#!perl

use strict; use warnings;
use Test::More tests => 4;
use Map::Tube::Delhi;

my $metro = Map::Tube::Delhi->new;

eval { $metro->get_shortest_route; };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { $metro->get_shortest_route('Pitampura'); };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { $metro->get_shortest_route('XYZ', 'Pitampura'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid FROM node 'XYZ'\E/);

eval { $metro->get_shortest_route('Pitampura', 'XYZ'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid TO node 'XYZ'\E/);
