# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

FEE_RECIPIENT="0x6318BC08F350835f8b2e2A542f04e2aB129Ab5C4"


nohup beacon-chain \
  --config-file=$PWD/config/beacon.yaml \
  --datadir=$PWD/data/beacon \
  --p2p-host-ip=$EXTIP \
  --suggested-fee-recipient=$FEE_RECIPIENT \
  --jwt-secret=$PWD/secret/jwt.hex \
  --chain-config-file=$PWD/network/config.yaml \
  --genesis-state=$PWD/network/genesis.ssz \
  --log-file=$PWD/logs/beacon.log \
  > $PWD/beacon.log 2>&1 &
