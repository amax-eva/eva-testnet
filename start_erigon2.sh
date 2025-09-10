
nohup erigon --networkid=2248 \
  --verbosity=debug \
  --datadir=$PWD/erigon/execution-data \
  --port=30303 \
  --http.api=eth,erigon,engine,web3,net,debug,trace,txpool,admin \
  --http.vhosts=* \
  --ws \
  --allow-insecure-unlock \
  --nat=extip:$EXTIP \
  --http \
  --http.addr=0.0.0.0 \
  --http.corsdomain=* \
  --http.port=8545 \
  --authrpc.jwtsecret=$PWD/jwt.hex \
  --authrpc.addr=0.0.0.0 \
  --authrpc.port=8551 \
  --authrpc.vhosts=* \
  --externalcl \
  --metrics \
  --metrics.addr=0.0.0.0 \
  --metrics.port=9001 \
  --torrent.port=42069 \
  --bootnodes="enode://0cc02cb26258969f360fe737561f3d29c9f180ad605b65f6f648f7a4165ac1245f45383476a3eaec6e69c0cd58ff9ce03d315a582085a8447d661f049d7d502c@18.163.81.118:30303","enode://d560f0223e3014af91122aa44827e44b90aaafe89d42c25f530476c6815675a312d1c8549eb373133690134d3c91f3454a6fac8e471a58b9a5d975352a89aa2f@16.163.97.13:30303" \
  > $PWD/erigon.log 2>&1 &
