nohup validator --chain-config-file=$PWD/network-configs/config.yaml \
  --accept-terms-of-use=true \
  --suggested-fee-recipient=0x6318BC08F350835f8b2e2A542f04e2aB129Ab5C4 \
  --beacon-rest-api-provider=http://${EXTIP}:3500 \
  --disable-monitoring=false \
  --monitoring-host=0.0.0.0 \
  --monitoring-port=8080 \
  --beacon-rpc-provider=${EXTIP}:4000 \
  --wallet-dir=$PWD/wallets-one \
  --wallet-password-file=$PWD/prysm-password/prysm-password.txt \
  > $PWD/validator.log 2>&1 &