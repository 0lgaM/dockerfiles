#!/bin/sh
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- apache2-foreground "$@"
fi

exec "$@"


#root@b91c024c0c64:/# cat /usr/local/bin/docker-php-entrypoint

