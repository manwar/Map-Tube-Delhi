use strict; use warnings;
use Test::More tests => 3;
use Map::Tube::Delhi;

my $metro = Map::Tube::Delhi->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is_deeply($metro->get_shortest_route($from, $to), _expected_route($expected), $description);
}

sub _expected_route {
    my ($route) = @_;
    my $nodes   = [];
    foreach my $name (split /\,/,$route) {
        push @$nodes, $metro->get_node_by_name($name);
    }

    return Map::Tube::Route->new(
       { from  => $nodes->[0],
         to    => $nodes->[-1],
         nodes => $nodes });
}

__DATA__
Route 1|Rithala|Pitampura|Rithala,Rohini West,Rohini East,Pitampura
Route 2|Rohini West|Pitampura|Rohini West,Rohini East,Pitampura
Route 3|rohini west|pitampura|Rohini West,Rohini East,Pitampura