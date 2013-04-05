use XML::RegExp;

$f="css";
open( DAT, $f ) || die( "Error: Could not open '$f'" );

@raw=<DAT>;

foreach (@raw) {
	chomp( $_ );

	# Zona Libera 
	if ( /<link>(.*)<\/link>/ ) {
		print "$1\n";
	}

	# Torrente TIFF
	#if ( /<a href=\"(.*)\">/ ) {
        #	print "wget \"http://89.137.118.224/TIFF2011/Torrente/$1\"\n";
	#}

	#if ( /url\((.*)\)/ ) {
	#	print "$1\n";
	#}
}
