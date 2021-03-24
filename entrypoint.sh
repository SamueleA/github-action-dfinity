#!/bin/sh -l

echo Creating deployer directory
echo $(ls ~/)

# mkdir ~/.config/dfx/identity/default

echo Adding identity.pem file

echo $INPUT_PRIVATEKEY > ~/.config/dfx/identity/default/identity.pem

echo $(ls ~/)

echo $(cat ~/.config/dfx/identity/default/identity.pem)

# dfx deploy --network=ic