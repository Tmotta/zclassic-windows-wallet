#!/bin/bash

echo "Package Inno Setup Params ZClassic..."

. lib/utils.sh
cd ..

# Make
rm_if_exists installer/*params*
packages/inno/ISCC.exe zclassic-params.iss
verify

