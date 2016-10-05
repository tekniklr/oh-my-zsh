# copied from the profiles plugin, this looks only at the first part of the 
# hostname, instead of the last part of the hostname
# (e.g., given 'host.example.com', matches 'host' and 'host.example' instead 
# of 'example.com' and 'com')

# You will probably want to list this plugin as the first in your .zshrc.

# This will look for a custom profile for the local machine
parts=(${(s:.:)HOST})
for i in {1..${#parts}}; do
  profile=${(j:.:)${parts[0,$i]}}
  file=$ZSH_CUSTOM/hostnames/$profile
  if [ -f $file ]; then
    source $file
  fi
done

# note: on macOS some wi-fi networks will abscond with your hostname! force 
# the correct hostname with `sudo scutil --set HostName <my cool hostname>`
# https://apple.stackexchange.com/questions/50022/hostname-changes-in-the-terminal-when-connecting-to-some-wifi-networks

# note re: note: you can unset hostnames defined this way (in case a service 
# relies on the dhcp hostname) with: `sudo scutil --set HostName ''`
# https://jamfnation.jamfsoftware.com/discussion.html?id=15411