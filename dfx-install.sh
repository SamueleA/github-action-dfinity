#!/bin/sh -l
yes | sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)" | killall -9 yes
