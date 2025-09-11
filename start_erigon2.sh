# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

BOOTNODE=$(curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545 | jq -r '.result.enode')
echo $BOOTNODE

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
  --bootnodes="enode://97e5eb942811a04b18ccc79ff42d5ef4a578622d47826a481557fc0725e9c9ee6c2ce7a361e33937fe7e702e36e8d66b8ed77fbe1eb67bc0315a788ed0984780@172.31.30.93:30303" \
  > $PWD/erigon.log 2>&1 &
