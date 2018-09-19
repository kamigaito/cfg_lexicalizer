#!/bin/bash
perl scripts/perl/ptb2norm.pl \
./sample/sample.ptb \
./sample/sample.dep \
./output/output.head.norm \
./output/output.align \
./config/ptb.skip
