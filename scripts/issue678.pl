my $data_file = 'zrodlo.html';

open DATA, "$data_file" or die "can't open $data_file $!";
while (<DATA>)
 {
 my($line) = $_;

   if ($line =~ /<a href="\/mim\/slownik\/words.html.*">(a\w+ .*)<\/a>/)
	   {
			print "$1\n";
	   }
 }
 close (DATA);