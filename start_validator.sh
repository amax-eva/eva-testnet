# EXTIP=$(curl -s ifconfig.me)
# EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
# echo $EXTIP

FEE_RECIPIENT="0x6318BC08F350835f8b2e2A542f04e2aB129Ab5C4"


nohup validator \
  --config-file=$PWD/config/validator.yaml \
  --chain-config-file=$PWD/network/config.yaml \
  --datadir=$PWD/data/validator \
  --suggested-fee-recipient=$FEE_RECIPIENT \
  --wallet-dir=$PWD/wallets/wallet1 \
  --wallet-password-file=$PWD/secret/prysm-password.txt \
  --log-file: $PWD/logs/validator.log \
  > $PWD/validator.log 2>&1 &
