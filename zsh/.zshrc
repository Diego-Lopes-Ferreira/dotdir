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

if [ -f ~/.dotdir/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source ~/.dotdir/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  echo "WARNING: Auto suggestions is not installed"
  echo "Please clone the repo in ~/.dotdir/zsh"
  echo "  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.dotdir/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# ! MUST BE THE LAST THING
if [ -f ~/.dotdir/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.dotdir/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
  echo "WARNING: Syntax Highlighting is not installed"
  echo "Please clone the repo in ~/.dotdir/zsh"
  echo "  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.dotdir/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# DOCS
# GIT PROMPT
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
