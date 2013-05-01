#!/usr/bin/perl -w
use strict;
use warnings;
use utf8;
use Cwd;
use File::chdir;
use File::Spec;

my @paths = <*>;

foreach my $path (@paths) {
    if (-d $path) {
        my $full_path = File::Spec->catfile(getcwd(), $path);
        update_dir($full_path);
    }
}

sub update_dir {
    my $dir = shift;
    local $CWD = $dir;
    if( -d ".git" ) {
        my $gp = `git pull`;
        print "Updated directory: $dir\n";
    }
}

