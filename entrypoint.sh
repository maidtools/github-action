#!/bin/sh

set -e

composer global require maid/maid:dev-master

sh -c "$COMPOSER_HOME/vendor/bin/maid $*"