# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

BOOTNODE=$(curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545 | jq -r '.result.enode')
echo $BOOTNODE

# enode://06d75fe537c9b68b4024dc57eccf01feebe68ccfd9d8b605797952f2c7d8d5abccd1173e94eb62d8327d33df7ee8829543a7c2a01660919794c21a84aa1ec8bc@172.31.30.93:30303


nohup erigon \
  --config=$PWD/config/erigon.yaml \
  --datadir=$PWD/data/erigon \
  --log.dir.path=$PWD/logs \
  --nat=extip:$EXTIP \
  --authrpc.jwtsecret=$PWD/secret/jwt.hex \
  --bootnodes=$BOOTNODE \
  > $PWD/erigon.log 2>&1 &
