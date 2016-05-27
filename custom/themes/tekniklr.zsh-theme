ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="💩"
ZSH_THEME_GIT_PROMPT_CLEAN="🍺"

local host="%{$fg[magenta]%}%m%{$fg[black]%}"
local location="%{$fg[blue]%}%c%{$fg[black]%}"
local time="%{$fg[yellow]%}%*%{$reset_color%}"

local prompt_char="⇒"
local pass="%{$fg[green]%}${prompt_char}%{$reset_color%} "
local fail="%{$fg[red]%}${prompt_char}%{$reset_color%} "
local exit_status="%(?,${pass},${fail})"

PROMPT='${host}🍕 ${location}$(git_prompt_info) ${exit_status} '
RPROMPT='${time}'
