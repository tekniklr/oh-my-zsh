# oracle
alias cdf='eval `osascript /Applications/Utilities/OpenTerminal.app/Contents/Resources/Scripts/OpenTerminal.scpt `'
alias oracle='/usr/local/bin/yasql'
export ORACLE_HOME='/Applications/Programming/Oracle/instantclient_10_2/'
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
alias wss-apps='cd /Volumes/code/wss-apps/'
project() { cd /Volumes/code/wss-apps/$1; }
_project() { _files -W /Volumes/code/wss-apps -/; }
compdef _project project

# deployment
deploy_prod() { produce.sh $1; }
_deploy_prod() { _files -W /Volumes/code/wss-apps -/; }
compdef _deploy_prod deploy_prod
deploy_stag() { stage.sh $1; }
_deploy_stag() { _files -W /Volumes/code/wss-apps -/; }
compdef _deploy_stag deploy_stag
deploy() { stage.sh $1; produce.sh $1; }
_deploy() { _files -W /Volumes/code/wss-apps -/; }
compdef _deploy deploy

# if [[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] ; then 
#   source "$HOME/perl5/perlbrew/etc/bashrc"
# fi

export PATH=$PATH:$HOME/Documents/Reed/bin:/Applications/Programming:/opt/local/lib/postgresql84/bin:/usr/local/git/bin:/opt/local/lib/mysql5/bin:/opt/local/bin:/opt/local/sbin:$ORACLE_HOME

kinit