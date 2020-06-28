#!/usr/bin/perl -w
use strict;
use MongoDB;
 
my $client     = MongoDB->connect('mongodb://localhost');
my $collection = $client->ns('perl.scripts');
my $result     = $collection->insert_one({ name => 'mongodb.pl' });
my $data       = $collection->find_one({ _id => $result->inserted_id });
