
# 主节点的执行层 enode
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545
# enode值 配置到 erigon --bootnodes

curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://16.163.97.13:8545


# 主节点信标层 enr
curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# ern值 配置到 beacon-chain --bootstrap-node

curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'


# curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QLNbgSBINpouwL9N7z7o8q4l61ZXiVXLGifDrvZ94ztdfzz3MgKQ7HFy_kBR7hCZikJ8uXi-f4HWeiJnjWDuIhmGAZktgqMuh2F0dG5ldHOIAAAAAACAAQCEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBCjYQ2EcXVpY4IyyIlzZWNwMjU2azGhAsTb7-gi97EquJelBdOuJxiLZnm-YolSIn8UpE4VXSCwiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g

# curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QEg0jjSA1C95Ed_ai40ZMhCAQJz7skfCfosGeAiwIk0lZW5UZ2_I8iRAk_joXYQSBahjPGmwBfjZlizGvAvw3XyGAZktf3T3h2F0dG5ldHOIAAADAAAAAACEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBKjUXaEcXVpY4IyyIlzZWNwMjU2azGhA-T6f0xGg3PgAQopQN0FMIDzO1c6L_Baz9kEdxmnnkogiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g



# curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545 | jq -r '.result.enode'
# enode://0cc02cb26258969f360fe737561f3d29c9f180ad605b65f6f648f7a4165ac1245f45383476a3eaec6e69c0cd58ff9ce03d315a582085a8447d661f049d7d502c@18.163.81.118:30303

# curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://16.163.97.13:8545 | jq -r '.result.enode'
# enode://d560f0223e3014af91122aa44827e44b90aaafe89d42c25f530476c6815675a312d1c8549eb373133690134d3c91f3454a6fac8e471a58b9a5d975352a89aa2f@16.163.97.13:30303
