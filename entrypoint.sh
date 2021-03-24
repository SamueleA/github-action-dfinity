#!/bin/sh -l
echo here is the PK

echo $INPUT_PRIVATEKEY
echo here is the version....

echo $(dfx --version)

echo deploying dfx
# dfx deploy --network=ic