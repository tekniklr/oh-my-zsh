if [[ -z $commands[thefuck] ]]; then
    return 0
fi

# Register alias
eval "$(thefuck --alias)"

fuck-command-line() {
    local FUCK="$(THEFUCK_REQUIRE_CONFIRMATION=0 thefuck $(fc -ln -1 | tail -n 1) 2> /dev/null)"
    [[ -z $FUCK ]] && echo -n -e "\a" && return
    BUFFER=$FUCK
    zle end-of-line
}
zle -N fuck-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey "\e\e" fuck-command-line
