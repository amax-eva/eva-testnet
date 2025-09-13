# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP


nohup erigon \
  --config=$PWD/config/erigon.yaml \
  --datadir=$PWD/data/erigon \
  --log.dir.path=$PWD/logs \
  --nat=extip:$EXTIP \
  --authrpc.jwtsecret=$PWD/secret/jwt.hex \
  > $PWD/erigon.log 2>&1 &
