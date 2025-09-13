# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

BOOTNODE=$(curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545 | jq -r '.result.enode')
echo $BOOTNODE

# enode://b6b4b7bae96823c426b612e7d2080e4bcc5c8972d59f3fce983c2a327efc30571c8bc1b275182b54e08a9e2e639af8f35f1556b7a92bd2d6286840d03ef0659a@172.31.30.93:30303


nohup erigon \
  --config=$PWD/config/erigon.yaml \
  --datadir=$PWD/data/erigon \
  --log.dir.path=$PWD/logs \
  --nat=extip:$EXTIP \
  --authrpc.jwtsecret=$PWD/secret/jwt.hex \
  --bootnodes=$BOOTNODE \
  > $PWD/erigon.log 2>&1 &
