
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
  --bootnodes="enode://62480a73be3430235916a024f0e1303d272e4c3f7b6b18c1fbbbd65a5baa475a7e56977c8c39c2274f33e6f00b93c8ebe8678e82dd448762acd94d669669702e@18.163.81.118:30303" \
  > $PWD/erigon.log 2>&1 &
