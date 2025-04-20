#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use Test::Map::Tube tests => 3;

use Map::Tube::Delhi;

my $map = Map::Tube::Delhi->new;

ok_map($map);
ok_map_functions($map);
my @routes = <DATA>;
ok_map_routes($map, \@routes);

__DATA__
Route 1|Dwarka Sector 8|I. G. I. Airport|Dwarka Sector 8,Dwarka Sector 21,I. G. I. Airport
Route 2|New Delhi|Pragati Maidan|New Delhi,Rajiv Chowk,Barakhamba Road,Mandi House,Pragati Maidan
Route 3|Dwarka|Nawada|Dwarka,Dwarka Mor,Nawada
Route 4|Vaishali|Karkarduma|Vaishali,Kaushambi,Anand Vihar ISBT,Karkarduma
Route 5|Nangloi|Peeragarhi|Nangloi,Surajmal Stadium,Udyog Nagar,Peeragarhi
Route 6|nangloi|Peeragarhi|Nangloi,Surajmal Stadium,Udyog Nagar,Peeragarhi
Route 7|Chawri Bazar|Shivaji Stadium|Chawri Bazar,New Delhi,Shivaji Stadium
Route 8|Shivaji Stadium|Rajiv Chowk|Shivaji Stadium,New Delhi,Rajiv Chowk
Route 9|Delhi Aero City|Shivaji Stadium|Delhi Aero City,Dhaula Kuan,Shivaji Stadium
Route 10|I. G. I. Airport|Dhaula Kuan|I. G. I. Airport,Delhi Aero City,Dhaula Kuan
Route 11|Pratap Nagar|Shivaji Park|Pratap Nagar,Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 12|    Pratap Nagar|Shivaji Park|Pratap Nagar,Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 13|Pratap Nagar|    Shivaji Park|Pratap Nagar,Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 14|Pratap Nagar    |Shivaji Park|Pratap Nagar,Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 15|Pratap Nagar|Shivaji Park   |Pratap Nagar,Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 16|Shastri Nagar|Shivaji Park|Shastri Nagar,Inderlok,Ashok Park Main,Punjabi Bagh,Shivaji Park
Route 17|Rithala|Pitampura|Rithala,Rohini West,Rohini East,Pitampura
Route 18|Rohini West|Pitampura|Rohini West,Rohini East,Pitampura
Route 19|rohini west|pitampura|Rohini West,Rohini East,Pitampura
Route 20|Khan Market|Patel Chowk|Khan Market,Central Secretariate,Patel Chowk
Route 21|Okhla|Nehru Place|Okhla,Govind Puri,Kalkaji Mandir,Nehru Place
Route 22|Chandni Chowk|Tis Hazari|Chandni Chowk,Kashmere Gate,Tis Hazari
Route 23|Green Park|Race Course|Green Park,AIIMS,INA,Jor Bagh,Race Course
