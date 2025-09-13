# EXTIP=$(curl -s ifconfig.me)
EXTIP=$(ip addr show ens5 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo $EXTIP

FEE_RECIPIENT="0xF84AE3A59D9c8a08b9308Ba4D3d0341135c51989"


nohup validator \
  --config-file=$PWD/config/validator.yaml \
  --chain-config-file=$PWD/network/config.yaml \
  --datadir=$PWD/data/validator \
  --suggested-fee-recipient=$FEE_RECIPIENT \
  --wallet-dir=$PWD/wallets/wallet1 \
  --wallet-password-file=$PWD/secret/prysm-password.txt \
  --log-file=$PWD/logs/validator.log \
  > $PWD/validator.log 2>&1 &
