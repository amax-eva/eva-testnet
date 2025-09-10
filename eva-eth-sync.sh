
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' http://18.163.81.118:8545

curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' http://16.163.97.13:8545

curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' http://43.198.212.114:8545

curl http://18.163.81.118:8080/healthz

curl http://16.163.97.13:8080/healthz

curl http://43.198.212.114:8080/healthz