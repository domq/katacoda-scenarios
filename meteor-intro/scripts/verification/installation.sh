#!/bin/sh

set -e -x
exec 2>> /tmp/check.log

which meteor
echo done
