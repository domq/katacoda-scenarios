#!/bin/sh

set -e -x
exec 2>> /tmp/check.log

test $(ps -u scrapbook|wc -l) -gt 1
echo done
