# user@host ~/path/to/folder [main | ✔]
# %

source ~/.dotdir/zsh/themes/.git_helper.zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[cyan]]"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg_bold[cyan] |"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{ ●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{ ✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{ ✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{ ↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{ ↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{ …%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"

function makeprompt() {
  PS1=""
  PS1="$PS1""%F{green}%n"                        # green   username
  PS1="$PS1""%F{reset_color}@"                   # normal  @
  PS1="$PS1""%F{magenta}%M"                      # magenta hostname
  PS1="$PS1""%F{yellow} %~ "                     # yellow  cwd
  CONFIG_GIT_PROMPT
  PS1="$PS1""$ZSH_THEME_GIT_PROMPT_TEXT"
  PS1="$PS1"$'\n'                                #
  PS1="$PS1""%F{magenta}%% "                     # magenta %
  PS1="$PS1""%F{reset_color}"                    #
}
