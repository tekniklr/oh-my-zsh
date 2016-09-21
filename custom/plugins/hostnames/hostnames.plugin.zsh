# copied from the profiles plugin, this looks only at the first part of the 
# hostname, instead of the last part of the hostname
# (e.g., given 'host.example.com', matches 'host' instead of 'example.com')

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
