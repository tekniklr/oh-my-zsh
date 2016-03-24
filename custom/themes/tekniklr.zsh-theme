# Based on the pygmalion theme, but with truncated paths and tweaked colors

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[black]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[cyan]%}%n%{$fg[black]%}@%{$fg[magenta]%}%m%{$fg[black]%}:%{$fg[blue]%}%c%{$fg[black]%}$(git_prompt_info)%{$fg[black]%} ⇒%{$reset_color%}  '

