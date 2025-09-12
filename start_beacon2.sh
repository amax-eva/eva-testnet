# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

BOOTNODE=$(curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr')
echo $BOOTNODE

nohup beacon-chain \
  --chain-id=2248 \
  --network-id=2248 \
  --datadir=$PWD/prysm/beacon-data/ \
  --execution-endpoint=http://127.0.0.1:8551 \
  --checkpoint-sync-url=http://172.31.30.93:3500 \
  --rpc-host=0.0.0.0 \
  --rpc-port=4000 \
  --http-host=0.0.0.0 \
  --http-cors-domain=* \
  --http-port=3500 \
  --p2p-host-ip=$EXTIP \
  --p2p-tcp-port=13000 \
  --p2p-udp-port=12000 \
  --p2p-quic-port=13000 \
  --min-sync-peers=0 \
  --p2p-max-peers=50 \
  --verbosity=debug \
  --slots-per-archive-point=32 \
  --suggested-fee-recipient=0x6318BC08F350835f8b2e2A542f04e2aB129Ab5C4 \
  --jwt-secret=$PWD/jwt.hex \
  --disable-monitoring=false \
  --monitoring-host=0.0.0.0 \
  --monitoring-port=8080 \
  --accept-terms-of-use=true \
  --no-discovery=true \
  --pprof \
  --pprofaddr=0.0.0.0 \
  --pprofport=6060 \
  --p2p-static-id=true \
  --chain-config-file=$PWD/network-configs/config.yaml \
  --genesis-state=$PWD/network-configs/genesis.ssz \
  --contract-deployment-block=0 \
  --peer="/ip4/172.31.30.93/tcp/13000/p2p/16Uiu2HAmRFThA4jLdPf3YcfnF3LKbyUGE4NGD5B7bBxyMGWejeNF" \
  > $PWD/beacon.log 2>&1 &

# --no-discovery=false \