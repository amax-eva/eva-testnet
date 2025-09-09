
mkdir -p $PWD/erigon/execution-data/

mkdir -p $PWD/prysm/beacon-data/

erigon init --datadir=$PWD/erigon/execution-data $PWD/network-configs/genesis.json
