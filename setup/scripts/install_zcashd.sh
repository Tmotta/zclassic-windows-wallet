#!/bin/bash

echo "Package zcashd..."
DIR=$PWD

. lib/utils.sh
cd ../packages

rm_if_exists zclassic
7z -scrc -y -ozclassic x zclassic.zip
verify

# Dist
DIST_DIR="../../dist/zclassic"

cp -f zclassic/zcl*/zcl-cli.exe "${DIST_DIR}/client/zcash-cli.exe"
cp -f zclassic/zcl*/zcld.exe "${DIST_DIR}/server/zcashd.exe"

# Clean
rm -Rf zcashd
