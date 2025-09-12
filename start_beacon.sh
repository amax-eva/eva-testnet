# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

nohup beacon-chain \
  --chain-id=2248 \
  --network-id=2248 \
  --datadir=$PWD/prysm/beacon-data \
  --execution-endpoint=http://127.0.0.1:8551 \
  --chain-config-file=$PWD/network-configs/config.yaml \
  --genesis-state=$PWD/network-configs/genesis.ssz \
  --jwt-secret=$PWD/jwt.hex \
  --rpc-host=0.0.0.0 \
  --rpc-port=4000 \
  --http-host=0.0.0.0 \
  --http-cors-domain=* \
  --http-port=3500 \
  --p2p-host-ip=$EXTIP \
  --p2p-tcp-port=13000 \
  --p2p-udp-port=12000 \
  --p2p-quic-port=13000 \
  --p2p-static-id=true \
  --p2p-max-peers=50 \
  --min-sync-peers=0 \
  --verbosity=debug \
  --slots-per-archive-point=32 \
  --suggested-fee-recipient=0x6318BC08F350835f8b2e2A542f04e2aB129Ab5C4 \
  --disable-monitoring=false \
  --monitoring-host=0.0.0.0 \
  --monitoring-port=8080 \
  --accept-terms-of-use=true \
  --no-discovery=true \
  --pprof \
  --pprofaddr=0.0.0.0 \
  --pprofport=6060 \
  --contract-deployment-block=0 \
  > $PWD/beacon.log 2>&1 &
