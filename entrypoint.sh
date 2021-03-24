#!/bin/sh -l

mkdir ~/.config/dfx/identity/deployer

echo $INPUT_PRIVATEKEY > ~/.config/dfx/identity/deployer/identity.pem

dfx identity use deployer

dfx deploy --network=ic