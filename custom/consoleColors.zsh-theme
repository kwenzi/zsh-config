# consoleColors.zsh-theme

# color vars

eval gray='%{$fg[gray]%}'
eval blue='%{$fg[blue]%}'
eval purple='%{$fg[magenta]%}'
eval dark_purple='%{$fg_bold[magenta]%}'
eval red='%{$fg[red]%}'
eval dark_red='%{$fg_bold[red]%}'
eval yellow='%{$fg[yellow]%}'
eval orange='%{$fg_bold[yellow]%}'
eval reset_color='%{$reset_color%}'

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..$red%? ↵$reset_color)"

# primary prompt
PROMPT='$blue%~\
$(git_prompt_info) \
$purple%(!.#.»)$reset_color '
PROMPT2='$red\ $reset_color'
RPS1='${return_code}'

# right prompt
RPROMPT='$red%n@$dark_red%m$reset_color% $gray|$purple%*$gray|$reset_color'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$yellow(branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$yellow)%{$reset_color%}"
