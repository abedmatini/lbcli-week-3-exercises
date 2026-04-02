# Create a native segwit address and get the public key from the address.

# 1. Create a native segwit (bech32) address and store it in a variable
ADDRESS=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress "" "bech32")

# 2. Get the address info and extract the public key using jq
bitcoin-cli -regtest -rpcwallet="builderswallet" getaddressinfo "$ADDRESS" | jq -r '.pubkey'
