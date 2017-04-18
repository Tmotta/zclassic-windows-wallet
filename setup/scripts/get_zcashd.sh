#!/bin/bash

# Config
ZCASHD_URL=https://github.com/z-classic/zclassic/releases/download/v1.0.8-1/zclassic-v1.0.8-1-macos-windows.zip

. lib/utils.sh
echo
echo "Downloading zcashd..."
init_get
cd ../packages

# zcashd
rm_if_exists zclassic.zip
echo "Downloading ${ZCASHD_URL}..."
curl ${CURL_PARAMS} -o zclassic.zip "${ZCASHD_URL}"
verify
