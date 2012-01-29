alias yidhra='ssh tekniklr@tekniklr.dyndns-remote.com'
alias git="$HOME/Dropbox/programs/git_forks/git-achievements/git-achievements"
alias pushgithub='git push -u origin master'
alias grep='grep --color=auto -i'
alias locate='locate -i'
alias updatedb='sudo /usr/libexec/locate.updatedb'

# locations
alias tekrails="cd $HOME/Documents/Web/tekniklr.com/tekniklr.com"
alias wptheme="cd $HOME/Documents/Web/tekniklr.com/tekniklr.com/public/wpblog/wp-content/themes/tekniklr.com"
program() { cd ~/Dropbox/programs/$1; }
_program() { _files -W ~/Dropbox/programs -/; }
compdef _program program


export PATH=$HOME/bin:$HOME/Dropbox/programs/bin:$HOME/Dropbox/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/opt/subversion/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then 
  source "$HOME/.rvm/scripts/rvm"
  rvm default
fi