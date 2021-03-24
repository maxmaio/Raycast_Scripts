#!/bin/zsh

# Dependency: requires speed-test (https://github.com/sindresorhus/speed-test)
# Install with npm: `npm install --global speed-test`

# @raycast.title Speedtest
# @raycast.author Max Maio
# @raycast.authorURL https://github.com/maxmaio
# @raycast.description Test internet speed [speed-test](https://github.com/sindresorhus/speed-test).

# @raycast.icon 🏎
# @raycast.mode inline
# @raycast.packageName Internet
# @raycast.refreshTime 20m
# @raycast.schemaVersion 1

json=$(speed-test -j)


ping=$(echo "$json" | jq -r '.ping')
bps_down=$(echo "$json" | jq -r '.download')
bps_up=$(echo "$json" | jq -r '.upload')

mbps_down=$(echo "scale=2; $bps_down" | bc)
mbps_up=$(echo "scale=2;   $bps_up" | bc)

echo "↓ ${mbps_down}mbps  ↑ ${mbps_up}mbps  ↔ ${ping}ms"