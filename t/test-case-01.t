use strict; use warnings;
use Test::More tests => 5;
use Map::Tube::Delhi;

my $map = Map::Tube::Delhi->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    my $route = $map->get_shortest_route($from, $to);
    is($route, $expected, $description);
}

__DATA__
Route 1|Pratap Nagar|Shivaji Park|Pratap Nagar, Shastri Nagar, Inderlok, Ashok Park Main, Punjabi Bagh, Shivaji Park
Route 2|    Pratap Nagar|Shivaji Park|Pratap Nagar, Shastri Nagar, Inderlok, Ashok Park Main, Punjabi Bagh, Shivaji Park
Route 3|Pratap Nagar|    Shivaji Park|Pratap Nagar, Shastri Nagar, Inderlok, Ashok Park Main, Punjabi Bagh, Shivaji Park
Route 4|Pratap Nagar    |Shivaji Park|Pratap Nagar, Shastri Nagar, Inderlok, Ashok Park Main, Punjabi Bagh, Shivaji Park
Route 5|Pratap Nagar|Shivaji Park   |Pratap Nagar, Shastri Nagar, Inderlok, Ashok Park Main, Punjabi Bagh, Shivaji Park
