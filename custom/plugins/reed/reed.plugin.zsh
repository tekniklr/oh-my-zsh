#echo "Running reed.plugin.zsh..."

# oracle
alias oracle='rlwrap sqlplus'
export ORACLE_HOME='/Applications/Programming/Oracle/instantclient_11_2/'
export TNS_ADMIN=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export NLS_LANG=AMERICAN_AMERICA.UTF8
export ORA_NCHAR_LITERAL_REPLACE=TRUE

# postgresql
alias startpostgres='/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l logfile start'
alias stoppostgres='/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l logfile stop'

# remove development rails log files, which occasionally fill up my code volume
alias rmrailslogs='find /Volumes/code -type f -name "*.log" -delete'

# rails 4.2 no longer puts non-dev logging into stdout... alias workaround to 
# see console logging with triage
alias triage='(tail -F log/triage.log &) && rails s -e triage'

# locations
alias codedir='cd /Volumes/code/'
_code_dir() { _files -W /Volumes/code/git -/; }
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

# environment
PATH=$HOME/Documents/Reed/bin:$ORACLE_HOME:/opt/local/lib/postgresql92/bin:$PATH