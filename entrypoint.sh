#!/bin/sh

./build/DPITunnel-cli-exec -doh -doh-server https://dns.google/dns-query -ttl 1 -ca-bundle-path "/DPITunnel/cacert.pem" -desync-attacks disorder_fake
