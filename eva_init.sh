
rm -rf $PWD/erigon/execution-data/

rm -rf $PWD/prysm/beacon-data/

mkdir -p $PWD/erigon/execution-data/

mkdir -p $PWD/prysm/beacon-data/

erigon init --datadir=$PWD/erigon/execution-data $PWD/network-configs/genesis.json
