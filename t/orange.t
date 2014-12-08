use strict; use warnings;
use Test::More tests => 2;
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
Route 1|Delhi Aero City|Shivaji Stadium|Delhi Aero City,Dhaula Kuan,Shivaji Stadium
Route 2|I. G. I. Airport|Dhaula Kuan|I. G. I. Airport,Delhi Aero City,Dhaula Kuan
