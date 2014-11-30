use strict; use warnings;
use Test::More tests => 3;
use Map::Tube::Delhi;

my $metro = Map::Tube::Delhi->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is($metro->get_shortest_route($from, $to), $expected, $description);
}

__DATA__
Route 1|Rithala|Pitampura|Rithala (Red), Rohini West (Red), Rohini East (Red), Pitampura (Red)
Route 2|Rohini West|Pitampura|Rohini West (Red), Rohini East (Red), Pitampura (Red)
Route 3|rohini west|pitampura|Rohini West (Red), Rohini East (Red), Pitampura (Red)