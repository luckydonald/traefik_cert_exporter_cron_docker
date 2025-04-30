#!/bin/bash

CRON_SCHEDULE="${CRON_SCHEDULE:-"* * * * *"}"
COMMAND=${COMMAND:-date}

echo "Install cron job with schedule $CRON_SCHEDULE."
echo "$CRON_SCHEDULE root $COMMAND > /proc/1/fd/1 2>&1" > /etc/cron.d/docker-cron-job
cron -f