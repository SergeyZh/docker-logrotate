#!/bin/sh

if [ ! -z "${ETCDCTL_PEERS}" ] ; then
    export ETCDCTL_PEERS
fi

/usr/sbin/logrotate /conf/logrotate/logrotate.conf

