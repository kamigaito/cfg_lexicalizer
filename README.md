cfg_lexicalizer
===============

`cfg_lexicalizer` can convert s-expressed trees to normalized ones, described in the paper ''Grammar as a Foreign Language.'' by Vinyals et al., In Proc of ICLR2015.".

## Examples
### With no head lexicalization on no empty elements
#### Convert s-expressed trees to normalized ones.
`````
#!/bin/bash
perl scripts/perl/ptb2norm.pl \
./sample/sample.ptb \ # S-expressed trees. (input file)
./output/output.norm \ # Converted trees. (output file)
./config/ptb.skip # Skip words for this replacing. Note that the words located after the empty line is ignored. (input file)
`````
You can run this command by using `./scripts/example/ptb2norm.sh`
#### Convert normalized trees to s-expressed ones
`````
#!/bin/bash
perl ./scripts/perl/norm2ptb.pl \
./sample/sample.sent \ # Token sequences (input file)
./sample/sample.pos \ # Part-of-speech sequences (input file)
./output/output.norm \ # Converted trees. (output file)
./output/output.ptb \ # S-expressed trees. (output file)
./config/none.skip # Skip words for this replacing. Note that the words located after the empty line is ignored. (input file)
`````
You can run this command by using `./scripts/example/norm2ptb.sh`
### With head lexicalization on no empty elements
#### Convert s-expressed trees to normalized ones.
`````
#!/bin/bash
perl scripts/perl/ptb2norm.pl \
./sample/sample.ptb \ # S-expressed trees. (input file)
./sample/sample.dep \ # Dependency trees (input file)
./output/output.norm \ # Converted trees. (output file)
./output/output.align \ # Moses style alignments between sentences and normalized trees. (output file)
./config/ptb.skip # Skip words for this replacing. Note that the words located after the empty line is ignored. (input file)
`````
You can run this command by using `./scripts/example/ptb2norm.head.sh`
#### Convert normalized trees to s-expressed ones
`````
#!/bin/bash
perl ./scripts/perl/norm2ptb.pl \
./sample/sample.sent \ # Token sequences (input file)
./sample/sample.pos \ # Part-of-speech sequences (input file)
./output/output.norm \ # Converted trees. (output file)
./output/output.ptb \ # S-expressed trees. (output file)
./config/none.skip # Skip words for this replacing. Note that the words located after the empty line is ignored. (input file)
`````
You can run this command by using `./scripts/example/norm2ptb.head.sh`
### With no head lexicalization on empty elements
#### Convert s-expressed trees to normalized ones.
`````
#!/bin/bash
perl scripts/perl/ptb2norm.pl \
./sample/sample.ptb \ # S-expressed trees.
./output/output.norm \ # Converted trees.
./config/ptb.empty.skip # Skip words for this replacing. Note that the words located after the empty line is ignored.
`````
You can run this command by using `./scripts/example/ptb2norm.empty.sh`
#### Convert normalized trees to s-expressed ones
`````
#!/bin/bash
perl ./scripts/perl/norm2ptb.pl \
./sample/sample.sent \ # Token sequences
./sample/sample.pos \ # Part-of-speech sequences
./output/output.norm \ # Converted trees.
./output/output.ptb \ # S-expressed trees.
./config/empty.skip # Skip words for this replacing. Note that the words located after the empty line is ignored.
`````
You can run this command by using `./scripts/example/norm2ptb.empty.sh`
