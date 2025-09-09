
# 主节点的执行层 enode
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545
# enode值 配置到 erigon --bootnodes


# 主节点信标层 enr
curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# ern值 配置到 beacon-chain --bootstrap-node

curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'


# curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QLNbgSBINpouwL9N7z7o8q4l61ZXiVXLGifDrvZ94ztdfzz3MgKQ7HFy_kBR7hCZikJ8uXi-f4HWeiJnjWDuIhmGAZktgqMuh2F0dG5ldHOIAAAAAACAAQCEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBCjYQ2EcXVpY4IyyIlzZWNwMjU2azGhAsTb7-gi97EquJelBdOuJxiLZnm-YolSIn8UpE4VXSCwiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g

# curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QEg0jjSA1C95Ed_ai40ZMhCAQJz7skfCfosGeAiwIk0lZW5UZ2_I8iRAk_joXYQSBahjPGmwBfjZlizGvAvw3XyGAZktf3T3h2F0dG5ldHOIAAADAAAAAACEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBKjUXaEcXVpY4IyyIlzZWNwMjU2azGhA-T6f0xGg3PgAQopQN0FMIDzO1c6L_Baz9kEdxmnnkogiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g