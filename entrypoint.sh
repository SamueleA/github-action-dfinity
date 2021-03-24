#!/bin/sh

yes | sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)" | killall -9 yes

echo $INPUT_APIKEY

dfx deploy --network=ic