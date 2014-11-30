use strict; use warnings;
use Test::More tests => 1;
use Map::Tube::Delhi;

my $metro = Map::Tube::Delhi->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is($metro->get_shortest_route($from, $to), $expected, $description);
}

__DATA__
Route 1|Green Park|Race Course|Green Park (Yellow), AIIMS (Yellow), INA (Yellow), Jor Bagh (Yellow), Race Course (Yellow)