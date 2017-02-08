#!/bin/bash

. lib/utils.sh

echo "Create ZClassic Params distribution package..."

run get_params.sh
run install_innosetup_params.sh