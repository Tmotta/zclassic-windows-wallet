#!/bin/bash

echo "Package Inno Setup Blockchain..."

. lib/utils.sh
cd ..

# Make
rm_if_exists installer/zclassic-blockchain*
packages/inno/ISCC.exe zclassic-blockchain.iss
verify

