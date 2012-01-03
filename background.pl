#!/usr/bin/perl
use strict;
use warnings;

my $sleeptimer = 20;
my $backgrounddirectory = "~/.bg";

while ( 1 ) {
	my @images=glob "$backgrounddirectory/*{jpg,png,gif}";
	for my $i ( 0 .. @images-1 ) {
		system("feh --bg-scale $images[$i]");
		sleep( $sleeptimer );
	}
}
