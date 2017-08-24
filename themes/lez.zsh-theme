if [[ -z $ZSH_THEME_CLOUD_PREFIX ]]; then
    ZSH_THEME_CLOUD_PREFIX='●'
fi

PROMPT='%(?.%{$fg[green]%}  $ZSH_THEME_CLOUD_PREFIX.%{$fg_bold[red]%}${(l:3:: :)?})%{$fg_bold[green]%} %~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
