#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Code exact
# @raycast.mode silent
# @raycast.packageName VS Code project
#
# Optional parameters:
# @raycast.icon images/vscode.png
# @raycast.argument1 { "type": "text", "placeholder": "Project Name" }
#
# Documentation:
# @raycast.description Opens Project in VSCode
# @raycast.author maxmaio
# @raycast.authorURL https://github.com/maxmaio
on run argv
    do shell script "/usr/local/bin/code ~/Repos/" & ( item 1 of argv )
end run