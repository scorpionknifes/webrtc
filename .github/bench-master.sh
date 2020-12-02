BENCH_COUNT=5
REF_NAME=$(git symbolic-ref HEAD --short)

SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

go test -bench=. -count=$BENCH_COUNT $SCRIPT_PATH/.. >bench-$REF_NAME.txt