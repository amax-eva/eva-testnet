# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

# p2p发现关闭，获取不到ENR值
# BOOTNODE=$(curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr')
# echo $BOOTNODE

CHECKPOINT_URL="http://172.31.30.93:3500"
FEE_RECIPIENT="0xF84AE3A59D9c8a08b9308Ba4D3d0341135c51989"
PEER="/ip4/172.31.30.93/tcp/13000/p2p/16Uiu2HAmFyo8PZqPVq6yVHfSeSrojE2Y3wd3fkqMyF53me24SZ3P"


nohup beacon-chain \
  --config-file=$PWD/config/beacon.yaml \
  --datadir=$PWD/data/beacon \
  --checkpoint-sync-url=$CHECKPOINT_URL \
  --p2p-host-ip=$EXTIP \
  --suggested-fee-recipient=$FEE_RECIPIENT \
  --jwt-secret=$PWD/secret/jwt.hex \
  --chain-config-file=$PWD/network/config.yaml \
  --genesis-state=$PWD/network/genesis.ssz \
  --log-file=$PWD/logs/beacon.log \
  --peer=$PEER \
  > $PWD/beacon.log 2>&1 &
