ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="💩 "
ZSH_THEME_GIT_PROMPT_CLEAN="💯 "

PROMPT='%{$fg[magenta]%}%m%{$fg[black]%}:%{$fg[blue]%}%c%{$fg[black]%}$(git_prompt_info)%{$fg[black]%} ✨  '
RPROMPT='%{$fg[yellow]%}%*%{$reset_color%}'
