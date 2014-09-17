docker-logrotate
================

logrotate + varsy/configurator 

It's uses configuration file `/conf/logrotate/logrotate.conf` to run `logrotate` and
send reload command to the necessary services.

### List of environment variables

* `ETCDCTL_PEERS` - address of etcd service to send reload signal. Recommended.

### Example
```
touch /mnt/logrotate.status
docker run --rm -it --volumes-from=configurator -v /mnt/logs:/mnt/logs -v /mnt/logrotate.status:/var/lib/logrotate.status sergeyzh/logrotate
```

