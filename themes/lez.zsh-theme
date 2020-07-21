if [[ -f ~/.oh-my-zsh.lez.local ]]; then
    source ~/.oh-my-zsh.lez.local
fi

if [[ -z $ZSH_THEME_LEZ_PREFIX ]]; then
    ZSH_THEME_LEZ_PREFIX='●'
fi

if [[ -z $ZSH_THEME_LEZ_PREFIX_COLOR ]]; then
    ZSH_THEME_LEZ_PREFIX_COLOR='034'  # darker green
fi

if [[ -z $ZSH_THEME_LEZ_DIR_COLOR ]]; then
    ZSH_THEME_LEZ_DIR_COLOR='010'  # green
fi

if [[ -n $SCHROOT_CHROOT_NAME ]]; then
    ZSH_THEME_LEZ_CHROOT_INDICATOR="($SCHROOT_CHROOT_NAME) "
fi

if [[ -n $SSH_CONNECTION ]]; then
    ZSH_THEME_LEZ_SSH_INDICATOR="%{$fg_bold[yellow]%}@$(hostname)%{$reset_color%}"
fi

if [[ -z $ZSH_THEME_LEZ_ROOT && $(whoami) = 'root' ]]; then
    ZSH_THEME_LEZ_ROOT='# '
fi

PROMPT='$ZSH_THEME_LEZ_SSH_INDICATOR$ZSH_THEME_LEZ_CHROOT_INDICATOR%(?.%{$FG[$ZSH_THEME_LEZ_PREFIX_COLOR]%}${(l:3:: :)ZSH_THEME_LEZ_PREFIX}.%{$fg_bold[red]%}${(l:3:: :)?})%{$FG[$ZSH_THEME_LEZ_DIR_COLOR]%} %~%{$fg_bold[cyan]%}$([[ $(git rev-parse --show-toplevel 2>/dev/null) != $HOME ]] && git_prompt_info) %{$fg_bold[red]%}$ZSH_THEME_LEZ_ROOT%{$reset_color%}'
RPROMPT='$(git_hash_info) %{$FG[238]%}$(timeofday)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg_bold[green]%}] %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$fg_bold[green]%}]"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$reset_color%}%{$fg[green]%}
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$reset_color%}%{$fg[red]%}

ZSH_THEME_GIT_HASH_PREFIX=%{$reset_color%}%{$FG[054]%}{%{$FG[238]%}
ZSH_THEME_GIT_HASH_SUFFIX=%{$reset_color%}%{$FG[054]%}}%{$reset_color%}
