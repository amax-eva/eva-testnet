# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

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
  --snapshots=true \
  --externalcl \
  --metrics \
  --metrics.addr=0.0.0.0 \
  --metrics.port=9001 \
  --torrent.port=42069 \
  > $PWD/erigon.log 2>&1 &
