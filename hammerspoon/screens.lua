local screen = require "hs.screen"

print(screen{x=0,y=0})
primaryScreen=screen{x=0,y=0}
print(screen{x=1,y=0})
secondaryScreen=screen{x=1,y=0}

hs.application.launchOrFocus("Chrome")
