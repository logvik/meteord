#!/bin/sh
set -e

$METEORD_DIR/lib/install_base.sh
$METEORD_DIR/lib/install_node.sh
$METEORD_DIR/lib/install_phantomjs.sh
$METEORD_DIR/lib/cleanup.sh
