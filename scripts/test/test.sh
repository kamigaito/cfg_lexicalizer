#!/bin/bash

# With head

echo "### With head ###"

perl ./scripts/perl/ptb2norm.pl \
./sample/sample.ptb \
./sample/sample.dep \
./output/output.norm \
./output/output.align \
./config/ptb.skip

perl ./scripts/perl/norm2ptb.pl \
./sample/sample.sent \
./sample/sample.pos \
./output/output.norm \
./output/output.ptb \
./config/ptb.skip

perl scripts/perl/test.pl \
./sample/sample.sent \
./sample/sample.pos \
./output/output.norm \
./sample/sample.ptb \
./output/output.ptb

# Without head

echo "### Without head ###"

perl scripts/perl/ptb2norm.pl \
./sample/sample.ptb \
./output/output.norm \
./config/ptb.skip

perl ./scripts/perl/norm2ptb.pl \
./sample/sample.sent \
./sample/sample.pos \
./output/output.norm \
./output/output.ptb \
./config/ptb.skip

perl scripts/perl/test.pl \
./sample/sample.sent \
./sample/sample.pos \
./output/output.norm \
./sample/sample.ptb \
./output/output.ptb

exit 0
