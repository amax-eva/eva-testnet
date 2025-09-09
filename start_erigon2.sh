
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
  --bootnodes=enode://5d31c8ed7acf2ab5165ded5e6cb1b2f021fbf5844ec8eb1bb2ffa572a09fb8d9e8f5149cddc166043eae9de4ab3a13ca4a94fde564319a811e7e0c5d64aa3bd0@18.163.81.118:30303 \
  > $PWD/erigon.log 2>&1 &
