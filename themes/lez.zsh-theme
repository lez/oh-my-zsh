if [[ -z $ZSH_THEME_LEZ_PREFIX ]]; then
    ZSH_THEME_LEZ_PREFIX='●'
fi

PROMPT='%(?.%{$fg[green]%}  $ZSH_THEME_LEZ_PREFIX.%{$fg_bold[red]%}${(l:3:: :)?})%{$fg_bold[green]%} %~ %{$fg_bold[cyan]%}$(git_prompt_info) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg_bold[green]%}] %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$fg_bold[green]%}]"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$reset_color%}%{$fg[green]%}
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$reset_color%}%{$fg[red]%}
