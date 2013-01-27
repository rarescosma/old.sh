use XML::RegExp

# Get I/O resources
open( INPUT_FILE, "style.css" );
open( OUTPUT_FILE, ">style_multiplied.css" );

@lines=<INPUT_FILE>;

foreach( @lines ) {
 chomp( $_ );
 
 # Take all lines containing 'em' values
 # and multiply the value by 1.2
 if( s/(\s+)(\d*\.?\d*)em/$1 . $2*1.2 . "em"/e ) {}

 print OUTPUT_FILE ("$_\n");
}

close( OUTPUT_FILE );
