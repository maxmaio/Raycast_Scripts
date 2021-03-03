#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Salesforce
# @raycast.mode silent
# @raycast.packageName Web Searches

# Optional parameters:
# @raycast.icon images/salesforce.png
# @raycast.argument1 { "type": "text", "placeholder": "env" }
# @raycast.argument2 { "type": "text", "placeholder": "ID" }

# Documentation:
# @raycast.description Opens ID in Salesforce
# @raycast.author maxmaio
# @raycast.authorURL https://github.com/maxmaio

open "https://swiftcapital--$1.my.salesforce.com/$2"