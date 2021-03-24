#!/bin/sh -l

echo Creating deployer directory

mkdir ~/.config
mkdir ~/.config/dfx
mkdir ~/.config/dfx/identity
mkdir ~/.config/dfx/identity/default

echo Adding identity.pem and wallets file file

echo $INPUT_IDENTITY > ~/.config/dfx/identity/default/identity.pem

echo $(ls ~/.config/dfx/identity/default)

echo $(cat ~/.config/dfx/identity/default/identity.pem) | sed 's/./&-/g'

dfx identity --network=ic get-wallet
# echo $INPUT_WALLETS > ~/.config/dfx/identity/default/wallets.json

dfx deploy --network=ic