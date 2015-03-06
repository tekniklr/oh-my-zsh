#echo "Running tekniklr.plugin.zsh..."

# zsh config
setopt    ALWAYS_TO_END AUTO_PUSHD AUTO_REMOVE_SLASH HIST_FIND_NO_DUPS
unsetopt  BEEP MENU_COMPLETE


# aliases
alias grep='grep --color=auto -i'
alias locate='locate -i'
alias updatedb='sudo /usr/libexec/locate.updatedb'

# silliness
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done' # via https://twitter.com/climagic/status/573885950759157760

# mysql
alias mysqlstart='sudo /opt/local/share/mysql5/mysql/mysql.server start'
alias mysqlstop='sudo /opt/local/share/mysql5/mysql/mysql.server stop'

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
export PERL5LIB=/Library/Perl/5.16:/System/Library/Perl/Extras/5.16/darwin-thread-multi-2level:/System/Library/Perl/Extras/5.16
PATH=$PATH:$HOME/bin:$HOME/Dropbox/programs/bin:$HOME/.rbenv/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin


# set up ruby
eval "$(rbenv init - zsh)"
