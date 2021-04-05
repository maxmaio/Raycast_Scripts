#!/bin/bash

# Current Weather
#
# Dependency: This script requires Nodejs.
# Install Node: https://nodejs.org/en/download/
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Current Weather
# @raycast.mode fullOutput
# @raycast.packageName Current Weather
#
# Optional parameters:
# @raycast.icon 🌦
#
# Documentation:
# @raycast.description Grabs the weather and displays data 
# @raycast.author maxmaio
# @raycast.authorURL github.com/maxmaio

export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/pypl2.pem
node /Users/mmaio/Repos/RayCast_Scripts/Dashboard/current-weather.js