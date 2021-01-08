#!/bin/bash

SCRIPT_DIR="$PWD"

mysql -e 'create database IF NOT EXISTS phpcr_odm_tests;' -u root

cp ${SCRIPT_DIR}/cli-config.doctrine_dbal.php.dist ${SCRIPT_DIR}/cli-config.php
${SCRIPT_DIR}/bin/phpcrodm jackalope:init:dbal --force
${SCRIPT_DIR}/bin/phpcrodm doctrine:phpcr:register-system-node-types
