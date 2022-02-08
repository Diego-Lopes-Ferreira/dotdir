# if (im in the repo top-level): show git info
# else if (im inside a repo): show the top level
# else: shows nothing

if [ -f ~/.dotdir/zsh/zsh-git-prompt/zshrc.sh ]; then
  source ~/.dotdir/zsh/zsh-git-prompt/zshrc.sh
else
  git_super_status() {
    echo ""
  }
  echo "WARNING: Auto suggestions is not installed"
  echo "Please clone the repo in ~/.dotdir/zsh"
  echo "  git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/.dotdir/zsh/zsh-git-prompt/zshrc.sh"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}["
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

function CONFIG_GIT_PROMPT() {
  if [ -d .git ]; then
    ZSH_THEME_GIT_PROMPT_TEXT=$(git_super_status)
  else
    ZSH_THEME_GIT_PATH=$(git rev-parse --show-toplevel 2> /dev/null)
    ZSH_THEME_GIT_TOP_LEVEL=$(basename $ZSH_THEME_GIT_PATH 2> /dev/null)
    if [ -z "$ZSH_THEME_GIT_TOP_LEVEL" ]; then # "-z" test to check whether a string is empty
      ZSH_THEME_GIT_PROMPT_TEXT=""
    else
      ZSH_THEME_GIT_PROMPT_TEXT="$ZSH_THEME_GIT_PROMPT_PREFIX""project: ""$ZSH_THEME_GIT_TOP_LEVEL""$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi;
  fi;
}
# echo $ZSH_THEME_GIT_PROMPT_TEXT
