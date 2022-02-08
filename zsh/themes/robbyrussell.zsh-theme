source ~/.dotdir/zsh/themes/.git_helper.zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"

function makeprompt() {
  PS1="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
  PS1+=' %{$fg[cyan]%}%c%{$reset_color%} '
  if [ -d .git ]; then
    PS1+='$(git_super_status)'
  fi
}
