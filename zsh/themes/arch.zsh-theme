# [user@host ~/small/path] %
#
# [user@host ~/big/path/to/folder]
# %
#
# [user@host ~/small/path] [main | ✔] %
#
# [user@host ~/big/path/to/folder] [main | ✔]
# %

source ~/.dotdir/zsh/themes/.git_helper.zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%} ["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[cyan]%}]"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg_bold[cyan]%} |"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{ ●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{ ✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{ ✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{ ↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{ ↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{ …%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"

function makeprompt() {
  PS1=""
  PS1="$PS1""%F{reset_color}["
  PS1="$PS1""%{$fg_bold[green]%}%n"
  PS1="$PS1""%F{reset_color}"
  PS1="$PS1""%{$fg_bold[normal]%}@"
  PS1="$PS1""%{$fg_bold[magenta]%}%M"
  PS1="$PS1""%{$fg_bold[yellow]%} %~"
  PS1="$PS1""%F{reset_color}]"
  CONFIG_GIT_PROMPT
  PS1="$PS1""$ZSH_THEME_GIT_PROMPT_TEXT"

  THE_FULL_PATH_TO_DIRECTORY=$PWD
  THE_PATH_TO_DIRECTORY="${PWD/$HOME/~}"     # Replace "$HOME" with "~"
  THE_SIZE_OF_PATH=${#THE_PATH_TO_DIRECTORY} # Size of "THE_PATH_TO_DIRECTORY"
  if [ $THE_SIZE_OF_PATH -gt 15 ]; then      # "-gt" = "greater than" = ">"
    PS1="$PS1"$'\n'
  else
    PS1="$PS1"" "
  fi;

  PS1="$PS1""%{$fg_bold[magenta]%}%%"
  PS1="$PS1""%{$fg[normal]%} "
}
