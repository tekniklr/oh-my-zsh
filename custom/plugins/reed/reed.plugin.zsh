#echo "Running reed.plugin.zsh..."

# oracle
alias cdf='eval `osascript /Applications/Utilities/OpenTerminal.app/Contents/Resources/Scripts/OpenTerminal.scpt `'
alias oracle='rlwrap sqlplus'
export ORACLE_HOME='/Applications/Programming/Oracle/instantclient_11_2/'
export TNS_ADMIN=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export NLS_LANG=AMERICAN_AMERICA.UTF8

# postgresql
alias startpostgres='/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l logfile start'
alias stoppostgres='/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l logfile stop'

# when you get a lame rdoc mutex error, run this in your approot and commit changes.
alias simplediff='patch -p0 < ~/Documents/Reed/queue/simple.diff '

# locations
alias codedir='cd /Volumes/code/'
_code_dir() { _files -W /Volumes/code/git -/; _files -W /Volumes/code/wss-apps -/; }
gitdir() { cd /Volumes/code/git/$1; }
compdef _code_dir gitdir
svndir() { cd /Volumes/code/wss-apps/$1; }
compdef _code_dir svndir
slime() { subl /Volumes/code/git/$1; }
compdef _code_dir slime

# deployment
produce() { produce.sh $1; }
compdef _code_dir produce
stage() { stage.sh $1; }
compdef _code_dir stage
deploy() { stage.sh $1; produce.sh $1; }
compdef _code_dir deploy

# if [[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] ; then 
#   source "$HOME/perl5/perlbrew/etc/bashrc"
# fi

# set up ruby some more (rest was already done)
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then 
  rvm gemset use rails2reed
fi

# environment
PATH=$PATH:$HOME/bin:$HOME/Documents/Reed/bin:/Applications/Programming:/opt/local/lib/postgresql84/bin:/usr/local/git/bin:/opt/local/lib/mysql5/bin:/opt/local/bin:/opt/local/sbin:$ORACLE_HOME
#echo "Path is: $PATH"

kinit