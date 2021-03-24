#!/bin/sh -l

echo Creating deployer directory

mkdir ~/.config
mkdir ~/.config/dfx
mkdir ~/.config/dfx/identity
mkdir ~/.config/dfx/identity/default
echo $(ls ~/)
echo $(ls ~/.config)
echo $(ls ~/.config/dfx/identity)

echo Adding identity.pem file

echo $INPUT_PRIVATEKEY > ~/.config/dfx/identity/default/identity.pem

echo $(ls ~/)

echo $(cat ~/.config/dfx/identity/default/identity.pem)

# dfx deploy --network=ic