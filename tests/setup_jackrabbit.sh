#!/bin/bash

SCRIPT_DIR="$PWD"

./tests/jackrabbit.sh

cp ${SCRIPT_DIR}/cli-config.jackrabbit.php.dist ${SCRIPT_DIR}/cli-config.php
${SCRIPT_DIR}/bin/phpcrodm doctrine:phpcr:register-system-node-types
