#!/usr/bin/perl
use strict;
use warnings;

my $sleeptimer = 20;
my $backgrounddirectory = "~/.bg/";
my @images=`ls $backgrounddirectory`;

while ( 1 ) {
	for my $i ( 0 .. @images-1 ) {
		system("feh --bg-scale $backgrounddirectory@images[$i]");
		sleep( $sleeptimer );
	}
}
