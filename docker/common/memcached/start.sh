#!/bin/bash

set -o errexit

CMD="/usr/bin/memcached"
ARGS="-u memcached -vv"

# Loading common functions.
source /opt/kolla/kolla-common.sh

# Execute config strategy
set_configs

exec $CMD $ARGS
