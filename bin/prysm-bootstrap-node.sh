
# 主节点的执行层 enode
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545
# enode值 配置到 erigon --bootnodes


# 主节点信标层 enr
curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# ern值 配置到 beacon-chain --bootstrap-node