
echo EXTIP=$(curl -s ifconfig.me) > .env
source .env
echo $EXTIP
