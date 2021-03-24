#!/bin/sh -l

echo Creating deployer directory
echo $(ls ~/)

mkdir ~/.config/dfx/identity/deployer

echo Adding identity.pem file

echo $INPUT_PRIVATEKEY > ~/.config/dfx/identity/deployer/identity.pem

echo $(ls ~/)

dfx identity use deployer

# dfx deploy --network=ic