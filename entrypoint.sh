#!/bin/bash

if [[ -z "$@" ]] ; then
    exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
else
    exec "$@"
fi
