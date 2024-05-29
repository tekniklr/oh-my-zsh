# zsh config
setopt    ALWAYS_TO_END AUTO_PUSHD AUTO_REMOVE_SLASH HIST_FIND_NO_DUPS
unsetopt  BEEP MENU_COMPLETE


# aliases
alias grep='grep --color=auto -i'
alias locate='locate -i'
alias updatedb='sudo /usr/libexec/locate.updatedb'


# get public IP
alias whereami="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"


# silliness
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done' # via https://twitter.com/climagic/status/573885950759157760
alias trouts='rails routes | cowsay -W 70 -f fish'
alias boop='touch' # https://mastodon.social/users/LottieVixen/updates/2669292


# mysql
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'


# locations
alias codedir="cd $HOME/Documents/code/"
alias tekrails="cd $HOME/Documents/code/tekniklr_web/tekniklr.com"


# environment
export EDITOR=~/bin/subl
export PERL5LIB=/Library/Perl/5.16:/System/Library/Perl/Extras/5.16/darwin-thread-multi-2level:/System/Library/Perl/Extras/5.16
export PATH=$PATH:~/bin:/bin:~/Documents/code/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/.local/bin/:~/.rbenv/bin


# rbenv
if type rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi