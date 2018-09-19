#!/bin/perl

sub skip_list_loader {
    my ($skip_list_path) = (@_);
    my %skip_list;
    my $flag = 1;
    open(my $skip_fp, "$skip_list_path");
    while(my $line = <$skip_fp>){
        chop($line);
        if($line eq ""){
            last;
        }
        $skip_list{$line} = $flag;
        $flag++;
    }
    close($skip_fp);
    return %skip_list;
}

1;
