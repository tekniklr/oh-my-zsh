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
alias trouts='rake routes | cowsay -W 70 -f fish'
alias boop='touch' # https://mastodon.social/users/LottieVixen/updates/2669292


# mysql
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'


# locations
alias tekrails="cd $HOME/Documents/Web/tekniklr.com/tekniklr.com"
alias wptheme="cd $HOME/Documents/Web/tekniklr.com/tekniklr.com/public/wpblog/wp-content/themes/tekniklr.com"
webdir() { cd ~/Documents/Web/$1; }
_webdir() { _files -W ~/Documents/Web -/; }
compdef _webdir webdir
program() { cd ~/Dropbox/programs/$1; }
_program() { _files -W ~/Dropbox/programs -/; }
compdef _program program


# environment
export EDITOR=~/bin/subl
export PERL5LIB=/Library/Perl/5.16:/System/Library/Perl/Extras/5.16/darwin-thread-multi-2level:/System/Library/Perl/Extras/5.16
export PATH=~$PATH:~/bin:/bin:~/Dropbox/programs/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# rbenv
eval "$(rbenv init -)"
alias rails='bundle exec rails'