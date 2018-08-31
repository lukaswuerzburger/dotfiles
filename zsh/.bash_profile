# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

alias mu="cd /Volumes/GoogleDrive/Team\ Drives/Product/Dev\ Resources/iOS"

function iosv () {
    agvtool new-marketing-version $1
    git add .
    git commit -m "Bump marketing version to $1"
}

function findDSYM () {
    mdfind "com_apple_xcode_dsym_uuids == $1"
}

