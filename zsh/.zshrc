autoload -U compinit && compinit
autoload -U colors && colors
autoload -Uz vcs_info

setopt prompt_subst

# ZSH_AUTOSUGGEST_STRATEGY="completion"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bg=normal"

ZSH_THEME_NAME="colorful"

if [ -f ~/.dotdir/zsh/themes/$ZSH_THEME_NAME.zsh-theme ]; then
  source ~/.dotdir/zsh/themes/$ZSH_THEME_NAME.zsh-theme
else
  echo "Theme '$ZSH_THEME_NAME' not found"
  echo "Using arch theme instead"
  source ~/.dotdir/zsh/themes/arch.zsh-theme
fi

precmd() {
  vcs_info;
  makeprompt;
}

if [[ -r ~/.dotdir/.aliasrc ]]; then
  . ~/.dotdir/.aliasrc
fi

HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.dotdir/zsh/.zshhistory
setopt HIST_IGNORE_ALL_DUPS

source ~/.dotdir/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# *LAST THING
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
source ~/.dotdir/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# DOCS
# GIT PROMPT
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
