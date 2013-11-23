#echo "Running tekniklr.plugin.zsh..."

# zsh config
setopt    ALWAYS_TO_END AUTO_PUSHD AUTO_REMOVE_SLASH HIST_FIND_NO_DUPS
unsetopt  BEEP MENU_COMPLETE


# aliases
alias yidhra='ssh tekniklr@tekniklr.dyndns-remote.com'
alias pushgit='git push -u origin master'
alias grep='grep --color=auto -i'
alias locate='locate -i'
alias updatedb='sudo /usr/libexec/locate.updatedb'


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
PATH=$PATH:$HOME/bin:$HOME/Dropbox/programs/bin:$HOME/Dropbox/bin:$HOME/.rbenv/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/lib/postgresql84/bin


# set up ruby
eval "$(rbenv init -)"
