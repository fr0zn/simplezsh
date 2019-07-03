local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local jobs_bg="$fg_bold[red][fg: %j]%{$reset_color%}"

local _username="%n "
local _dir="$FG[032]%1~"
local _info="%1(j.$jobs_bg.) "
local _prompt="$FG[120]%(!.#.$)%{$reset_color%}"

# primary prompt
PROMPT='${_username}${_dir}$(git_prompt_info)${_info}${_prompt} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
