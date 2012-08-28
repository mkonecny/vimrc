#!/usr/bin/env perl 
use strict;
use warnings;
use utf8;

use Getopt::Long;
use Cwd;
use File::Spec;
use File::Copy;

my $home = $ENV{HOME};
my $cwd  = getcwd();

my $write_home = '';
my $copy_home  =  '';

GetOptions( 
    'write_home!' => \$write_home,
    'copy_home!' => \$copy_home,
);

($write_home, $copy_home) = (!!$write_home, !!$copy_home);

print "Assuming home directory is: '$home'\n";
print "Assuming repository directory is: '$cwd'\n";

print "Running with cmd options:
\t--write_home='$write_home'
\t--copy_home='$copy_home'\n";

unless( $write_home xor $copy_home ) {
    print "You must satisfy either --copy_home or --write_home (but not both)\n";
    exit 0;
}

my $vim = ".vimrc";
my $vimrc_home = File::Spec->catfile($home, $vim);
my $vimrc_rep  = File::Spec->catfile($cwd, $vim);

print "Assuming vimrc (home,rep) = ($vimrc_home, $vimrc_rep)\n";

if( $write_home ) {
    # rep must exist
    if( -e $vimrc_rep ) { 
        copy( $vimrc_rep, $vimrc_home ) or die "failed to copy to target rep vimrc\n";
        print "Wrote $vimrc_home\n";
    } else {
        print "Repository vimrc ($vimrc_rep) must exist\n";
    }
    exit 0;
}

if( $copy_home ) {
    # home must exist
    if( -e $vimrc_home ) {
        copy( $vimrc_home, $vimrc_rep ) or die "failed to copy to hom vimrc\n";
        print "Wrote $vimrc_rep\n";
    } else {
        print "Home vimrc ($vimrc_home) must exist\n";
    }
}



