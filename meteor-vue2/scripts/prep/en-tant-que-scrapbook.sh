#!/bin/sh

chown -R scrapbook /home/scrapbook/.meteor || true
chown -R scrapbook /home/scrapbook/.config || true
rm -rf /home/scrapbook/tutorial/docker
