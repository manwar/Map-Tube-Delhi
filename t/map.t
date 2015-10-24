#!perl -T

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

my $min_ver = 0.09;
eval "use Test::Map::Tube $min_ver tests => 2";
plan skip_all => "Test::Map::Tube $min_ver required." if $@;

use Map::Tube::Delhi;
my $map = Map::Tube::Delhi->new;
ok_map($map);
ok_map_functions($map);
