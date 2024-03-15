#!/bin/sh

./build/DPITunnel-cli-exec -builtin-dns -ttl 1 -ca-bundle-path "/DPITunnel/cacert.pem" -desync-attacks disorder_fake
