binmode STDIN,":utf8";
binmode STDOUT,":utf8";
binmode STDERR,":utf8";
$sent_path = $ARGV[0];
$pos_path = $ARGV[1];
$cons_path = $ARGV[2];
$decoded_path = $ARGV[3];
open(my $fp_sent,$sent_path);
open(my $fp_pos,$pos_path);
open(my $fp_cons,$cons_path);
open(my $fp_orig,$orig_path);
open(my $fp_dec,$dec_path);
while(1){
    my $line_sent = <$fp_sent>;
    my $line_pos = <$fp_pos>;
    my $line_cons = <$fp_cons>;
    my $line_orig = <$fp_orig>;
    my $line_dec = <$fp_dec>;

    if(!$line_sent){
        exit(1);
    }
    chomp($line_sent);
    chomp($line_pos);
    chomp($line_cons);
    chomp($line_orig);
    chomp($line_dec);
    my @sent = split(/ /,$line_sent);
    my @pos = split(/ /,$line_pos);
    my @cons = split(/ /,$line_cons);
    my $XX_count = 0;
    foreach(@cons){
        if($_ eq "XX" || $_ eq "." || $_ eq "," || $_ eq ":" || $_ eq "''" || $_ eq "``" || $_ eq "*" || $_ eq "*?*" || $_ eq "*EXP*" || $_ eq "*ICH*" ||  $_ eq "*NOT*" || $_ eq "*PPA*" || $_ eq "*RNR*" || $_ eq "*T*" || $_ eq "*U*" || $p eq "0"){
            $XX_count++;
        }
    }
    if(scalar(@sent) != $XX_count || scalar(@pos) != $XX_count){
        print STDERR scalar(@sent)."!=".$XX_count." token size does not match.\n";
        print $line_sent."\n";
        exit(1);
    }
    if($line_orig ne $line_dec){
        print STDERR "Wrongly decoded.\n";
        exit(1);
    }
}
