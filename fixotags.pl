#!/usr/bin/perl
use Switch;
use Cwd;

# take an emacs-style tags file
# from 'otags' and put it in
# for for taglist vim module
# Note: 'ocamltags' might provide nicer output

$sep = "\t";
$newsection = 1;

while (<>) {
    # skip blank lines or ^L mean new section
    #if ( m/^\s+$/ ) { print "#"; next; }
    $line = $_ ;

    # section begins with ^L
    if ( $line =~ m/^\x0C$/ ) { # \x0c = ^L
        $newsection = 1;
        #print STDERR "==> New section\n";
        next;
    }

    # first line of each section has a filename
    if ( $newsection && ($line =~ m/^([^,]+),[0-9]+$/ ) ) {
        $fname = getcwd().'/'.$1 ;
        #print STDERR "==> New file $fname\n";
        $newsection = 0;
        next;
    }

    $newsection = 0;
    # original:
    # (stmt pattern)^?(symbol)^A(linenum),(symbol idnum)
    if ( $line =~ /^(.*)(.*)(.*)\,(.*)$/ ) {
        ($pat, $sym, $lnum, $idnum) = ( $1, $2, $3, $4 );
        #print STDERR "==> New symbol $sym\n";

        # added to taglist.vim :
        #  " ocaml language
        #  let s:tlist_def_ocaml_settings = 'ocaml;m:module;t:type;d:definition'
        #
        # get type from 1st match in pattern, if type "and"
        # use the type from last entry
        $pat =~ m/\b(.+)\b\s+\b$sym\b/;
        $rawtype = $1;

        switch (  $rawtype ) {
            case "and" { $type = $lasttype ; }
            case "let" { $type = "d" ; }
            case "type" { $type = "t" ; }
            case "module" { $type = "m" ; }
        }

        # target:
        # (symbol)\t/(pattern)/\t(file)\t(type)\tline:(line)
        print $sym.$sep.$fname.$sep.'/^'.$pat.'/;"'.$sep.$type.$sep.'line:'.$lnum."\n" if $pat;

        $lasttype = $type ;
    }
}
