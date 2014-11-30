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
Route 1|Nangloi|Peeragarhi|Nangloi (Green), Surajmal Stadium (Green), Udyog Nagar (Green), Peeragarhi (Green)