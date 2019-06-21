#!/bin/sh

set -e -x
exec 2>> /tmp/check.log

grep ^akryum:vue-component /home/scrapbook/tutorial/.meteor/packages
! grep ^blaze-html-templates /home/scrapbook/tutorial/.meteor/packages
echo done
