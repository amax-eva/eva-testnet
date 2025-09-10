
# 主节点的执行层 enode
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545
# enode值 配置到 erigon --bootnodes

# {
#   "jsonrpc": "2.0",
#   "id": 1,
#   "result": {
#     "id": "fafb73560e93ac75c4d7e9e6d8e174fbc56ab825199b4aa009f8e05f97480eac",
#     "name": "erigon/v3.0.15-1a610b3f/linux-amd64/go1.23.11",
#     "enode": "enode://0cc02cb26258969f360fe737561f3d29c9f180ad605b65f6f648f7a4165ac1245f45383476a3eaec6e69c0cd58ff9ce03d315a582085a8447d661f049d7d502c@18.163.81.118:30303",
#     "enr": "enr:-Je4QHJq_sJCBtPvoG7VYpnGnSY7iSPF--9duyDkS0E_6TutJdoiJV78zY4_vr7n80YF3nQN_cH5ooSumcijcxfTCUUFg2V0aMfGhGDiLfSAgmlkgnY0gmlwhBKjUXaJc2VjcDI1NmsxoQIMwCyyYliWnzYP5zdWHz0pyfGArWBbZfb2SPekFlrBJIN0Y3CCdl-DdWRwgnZf",
#     "ip": "enode://0cc02cb26258969f360fe737561f3d29c9f180ad605b65f6f648f7a4165ac1245f45383476a3eaec6e69c0cd58ff9ce03d315a582085a8447d661f049d7d502c@18.163.81.118:30303",
#     "ports": {
#       "discovery": 30303,
#       "listener": 30303
#     },
#     "listenAddr": "[::]:30303",
#     "protocols": {
#       "eth": {
#         "network": 2248,
#         "difficulty": 0,
#         "genesis": "0x98d4756195d5b6c66088cd6542c842895cf10c529d51691bfc47c138a9e5837b",
#         "config": {
#           "chainName": "",
#           "chainId": 2248,
#           "homesteadBlock": 0,
#           "eip150Block": 0,
#           "eip155Block": 0,
#           "byzantiumBlock": 0,
#           "constantinopleBlock": 0,
#           "petersburgBlock": 0,
#           "istanbulBlock": 0,
#           "berlinBlock": 0,
#           "londonBlock": 0,
#           "terminalTotalDifficulty": 0,
#           "terminalTotalDifficultyPassed": true,
#           "mergeNetsplitBlock": 0,
#           "shanghaiTime": 0,
#           "cancunTime": 0,
#           "pragueTime": 0,
#           "blobSchedule": {
#             "cancun": {
#               "target": 3,
#               "max": 6,
#               "baseFeeUpdateFraction": 3338477
#             },
#             "prague": {
#               "target": 6,
#               "max": 9,
#               "baseFeeUpdateFraction": 5007716
#             }
#           },
#           "depositContractAddress": "0x00000000219ab540356cbb839cbe05303d7705fa"
#         },
#         "head": "0xf0d76c62d374817a8e5aa1b4858f2165bb527659a8fa35bd05dcf9a7bb5bd122"
#       }
#     }
#   }
# }

curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://16.163.97.13:8545

# {
#   "jsonrpc": "2.0",
#   "id": 1,
#   "result": {
#     "id": "f99bacdef7675ce84771e379d5c58791db790e8c1b4a20f3cca472fc62627a1e",
#     "name": "erigon/v3.0.15-1a610b3f/linux-amd64/go1.23.11",
#     "enode": "enode://d560f0223e3014af91122aa44827e44b90aaafe89d42c25f530476c6815675a312d1c8549eb373133690134d3c91f3454a6fac8e471a58b9a5d975352a89aa2f@16.163.97.13:30303",
#     "enr": "enr:-Je4QMieq3ntIzFvd9ipwj_KKCueokDrlhAq2ujQZqPyI8HCKceGty85Qk1MdVygwAFMlqxqa57dfeMY43fSoJuWRfIFg2V0aMfGhGDiLfSAgmlkgnY0gmlwhBCjYQ2Jc2VjcDI1NmsxoQPVYPAiPjAUr5ESKqRIJ-RLkKqv6J1Cwl9TBHbGgVZ1o4N0Y3CCdl-DdWRwgnZf",
#     "ip": "enode://d560f0223e3014af91122aa44827e44b90aaafe89d42c25f530476c6815675a312d1c8549eb373133690134d3c91f3454a6fac8e471a58b9a5d975352a89aa2f@16.163.97.13:30303",
#     "ports": {
#       "discovery": 30303,
#       "listener": 30303
#     },
#     "listenAddr": "[::]:30303",
#     "protocols": {
#       "eth": {
#         "network": 2248,
#         "difficulty": 0,
#         "genesis": "0x98d4756195d5b6c66088cd6542c842895cf10c529d51691bfc47c138a9e5837b",
#         "config": {
#           "chainName": "",
#           "chainId": 2248,
#           "homesteadBlock": 0,
#           "eip150Block": 0,
#           "eip155Block": 0,
#           "byzantiumBlock": 0,
#           "constantinopleBlock": 0,
#           "petersburgBlock": 0,
#           "istanbulBlock": 0,
#           "berlinBlock": 0,
#           "londonBlock": 0,
#           "terminalTotalDifficulty": 0,
#           "terminalTotalDifficultyPassed": true,
#           "mergeNetsplitBlock": 0,
#           "shanghaiTime": 0,
#           "cancunTime": 0,
#           "pragueTime": 0,
#           "blobSchedule": {
#             "cancun": {
#               "target": 3,
#               "max": 6,
#               "baseFeeUpdateFraction": 3338477
#             },
#             "prague": {
#               "target": 6,
#               "max": 9,
#               "baseFeeUpdateFraction": 5007716
#             }
#           },
#           "depositContractAddress": "0x00000000219ab540356cbb839cbe05303d7705fa"
#         },
#         "head": "0xf0d76c62d374817a8e5aa1b4858f2165bb527659a8fa35bd05dcf9a7bb5bd122"
#       }
#     }
#   }
# }


# 主节点信标层 enr
curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# ern值 配置到 beacon-chain --bootstrap-node

# {
#   "data": {
#     "peer_id": "16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9",
#     "enr": "enr:-Mq4QEg0jjSA1C95Ed_ai40ZMhCAQJz7skfCfosGeAiwIk0lZW5UZ2_I8iRAk_joXYQSBahjPGmwBfjZlizGvAvw3XyGAZktf3T3h2F0dG5ldHOIAAADAAAAAACEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBKjUXaEcXVpY4IyyIlzZWNwMjU2azGhA-T6f0xGg3PgAQopQN0FMIDzO1c6L_Baz9kEdxmnnkogiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g",
#     "p2p_addresses": [
#       "/ip4/18.163.81.118/tcp/13000/p2p/16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9",
#       "/ip4/18.163.81.118/udp/13000/quic-v1/p2p/16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9",
#       "/ip4/172.31.30.93/tcp/13000/p2p/16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9",
#       "/ip4/172.31.30.93/udp/13000/quic-v1/p2p/16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9"
#     ],
#     "discovery_addresses": [
#       "/ip4/18.163.81.118/udp/12000/p2p/16Uiu2HAmU4pr4m7E93NZvzMo6vrYjgYPcCoaAvAnUmnx2MRPMBy9"
#     ],
#     "metadata": {
#       "seq_number": "3",
#       "attnets": "0x0000030000000000"
#     }
#   }
# }

curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'

# {
#   "data": {
#     "peer_id": "16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F",
#     "enr": "enr:-Mq4QGN7KxE6oPfOL12OB39lDyqC0f6We_tKS29I_Bfm1E-QYIkAJ_bGqdiaLIo95C0gkZU2wCwpTwmTbB9mxKubUGmGAZktgqMvh2F0dG5ldHOIAAAAAAAwAACEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBCjYQ2EcXVpY4IyyIlzZWNwMjU2azGhAsTb7-gi97EquJelBdOuJxiLZnm-YolSIn8UpE4VXSCwiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g",
#     "p2p_addresses": [
#       "/ip4/16.163.97.13/tcp/13000/p2p/16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F",
#       "/ip4/16.163.97.13/udp/13000/quic-v1/p2p/16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F",
#       "/ip4/172.31.30.57/tcp/13000/p2p/16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F",
#       "/ip4/172.31.30.57/udp/13000/quic-v1/p2p/16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F"
#     ],
#     "discovery_addresses": [
#       "/ip4/16.163.97.13/udp/12000/p2p/16Uiu2HAm8g8QHXNLBGLvawLCiira6EafQavE458fypG3C98fyk8F"
#     ],
#     "metadata": {
#       "seq_number": "3",
#       "attnets": "0x0000000000300000"
#     }
#   }
# }


# curl http://16.163.97.13:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QLNbgSBINpouwL9N7z7o8q4l61ZXiVXLGifDrvZ94ztdfzz3MgKQ7HFy_kBR7hCZikJ8uXi-f4HWeiJnjWDuIhmGAZktgqMuh2F0dG5ldHOIAAAAAACAAQCEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBCjYQ2EcXVpY4IyyIlzZWNwMjU2azGhAsTb7-gi97EquJelBdOuJxiLZnm-YolSIn8UpE4VXSCwiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g

# curl http://18.163.81.118:3500/eth/v1/node/identity | jq -r '.data.enr'
# enr:-Mq4QEg0jjSA1C95Ed_ai40ZMhCAQJz7skfCfosGeAiwIk0lZW5UZ2_I8iRAk_joXYQSBahjPGmwBfjZlizGvAvw3XyGAZktf3T3h2F0dG5ldHOIAAADAAAAAACEZXRoMpCLUxW_cAAAOP__________gmlkgnY0gmlwhBKjUXaEcXVpY4IyyIlzZWNwMjU2azGhA-T6f0xGg3PgAQopQN0FMIDzO1c6L_Baz9kEdxmnnkogiHN5bmNuZXRzD4N0Y3CCMsiDdWRwgi7g



# curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://18.163.81.118:8545 | jq -r '.result.enode'
# enode://0cc02cb26258969f360fe737561f3d29c9f180ad605b65f6f648f7a4165ac1245f45383476a3eaec6e69c0cd58ff9ce03d315a582085a8447d661f049d7d502c@18.163.81.118:30303

# curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://16.163.97.13:8545 | jq -r '.result.enode'
# enode://d560f0223e3014af91122aa44827e44b90aaafe89d42c25f530476c6815675a312d1c8549eb373133690134d3c91f3454a6fac8e471a58b9a5d975352a89aa2f@16.163.97.13:30303
