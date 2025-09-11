# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

BOOTNODE=$(curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr')
echo $BOOTNODE

nohup beacon-chain --chain-id=2248 --network-id=2248 \
  --accept-terms-of-use=true \
  --datadir=$PWD/prysm/beacon-data/ \
  --execution-endpoint=http://${EXTIP}:8551 \
  --checkpoint-sync-url=http://172.31.20.3:3500 \
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
  --pprof \
  --pprofaddr=0.0.0.0 \
  --pprofport=6060 \
  --p2p-static-id=true \
  --chain-config-file=$PWD/network-configs/config.yaml \
  --genesis-state=$PWD/network-configs/genesis.ssz \
  --contract-deployment-block=0 \
  --peer="enr:-Mq4QBrObcnfbwi-CCeFEIxD0wg7A5vtCXIvT9MOjuFMjBOyAz8DUKpFbhGh-40ElH4d-klUi45tNal_j5PZ1q1_zaaGAZk4F_GGh2F0dG5ldHOIAAAAAAAwAACEZXRoMpA2kZ8kcAAAOP__________gmlkgnY0gmlwhKwfHl2EcXVpY4IyyIlzZWNwMjU2azGhA4BXZj3m_I61Xdyh9uJdECP2BT7du9t_fz1d2dyBPcN7iHN5bmNuZXRzAIN0Y3CCMsiDdWRwgi7g" \
  --bootstrap-node="enr:-Mq4QBrObcnfbwi-CCeFEIxD0wg7A5vtCXIvT9MOjuFMjBOyAz8DUKpFbhGh-40ElH4d-klUi45tNal_j5PZ1q1_zaaGAZk4F_GGh2F0dG5ldHOIAAAAAAAwAACEZXRoMpA2kZ8kcAAAOP__________gmlkgnY0gmlwhKwfHl2EcXVpY4IyyIlzZWNwMjU2azGhA4BXZj3m_I61Xdyh9uJdECP2BT7du9t_fz1d2dyBPcN7iHN5bmNuZXRzAIN0Y3CCMsiDdWRwgi7g" \
  > $PWD/beacon.log 2>&1 &

# --no-discovery=false \