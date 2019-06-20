#!/bin/sh

set -e
test $(ps -u scrapbook|wc -l) -lt 1
