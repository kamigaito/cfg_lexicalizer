#!/bin/bash
./scripts/example/ptb2norm.sh
./scripts/example/ptb2norm.head.sh
./scripts/example/ptb2norm.empty.sh
./scripts/example/norm2ptb.sh
./scripts/example/norm2ptb.head.sh
./scripts/example/norm2ptb.empty.sh
diff ./sample/sample.ptb ./output/output.ptb
#diff ./sample/sample.ptb ./output/output.head.ptb
#diff ./sample/sample.empty.ptb ./output/output.empty.ptb
