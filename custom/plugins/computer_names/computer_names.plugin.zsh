# copied from the profiles plugin, this looks only at macOS computer names, 
# ignoring host entirely (as host may change via dhcp and computer name is 
# more static)

# You will probably want to list this plugin as the first in your .zshrc.

# This will look for a custom profile for the local machine

# get computer name (not full hostname, if we can help it)
if hash networksetup 2>/dev/null; then
  ComputerName=$(networksetup -getcomputername) # works on macOS
else
  ComputerName=`hostname` # fall back to linux
fi

# look for configuration filess for this computer name
profile=$( tr '[A-Z]' '[a-z]' <<< $ComputerName)
file=$ZSH_CUSTOM/computer_names/$profile
if [ -f $file ]; then
  source $file
fi
