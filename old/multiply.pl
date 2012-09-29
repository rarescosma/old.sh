use XML::RegExp

open( DAT, "style.css" );

@raw=<DAT>;

open(MYOUTPUTFILE, ">newstyle.css");

foreach(@raw)
{
 chomp($_);
 if( s/(\s+)(\d*\.?\d*)em/$1 . $2*1.2 . "em"/e ) {}

 #print ("$_\n");
 print MYOUTPUTFILE ("$_\n");
}

close(MYOUTPUTFILE);
