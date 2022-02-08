# [user@host ~/small/path] %
#
# [user@host ~/big/path/to/folder]
# %

function CONFIG_GIT_PROMPT() {
  # Initialize variable
  ZSH_THEME_GIT_PROMPT_TEXT=""
  # Get complete path "/home/name/dox/folder_name"
  ZSH_THEME_GIT_PATH=$(git rev-parse --show-toplevel 2> /dev/null)
  # Get basename "folder_name"
  ZSH_THEME_GIT_TOP_LEVEL=$(basename $ZSH_THEME_GIT_PATH 2> /dev/null)
  # "-z" test to check whether a string is empty
  if [ ! -z "$ZSH_THEME_GIT_TOP_LEVEL" ]; then
    # Get branch in format "refs/heads/main"
    ZSH_THEME_GIT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null)
    # Extracts just the branch name "main"
    ZSH_THEME_GIT_BRANCH_NAME=$(echo $ZSH_THEME_GIT_BRANCH | cut -d "/" -f 3)
    ZSH_THEME_GIT_PROMPT_TEXT+="%F{cyan}"" ("
    # ZSH_THEME_GIT_PROMPT_TEXT+="%F{cyan}""$ZSH_THEME_GIT_TOP_LEVEL"
    # ZSH_THEME_GIT_PROMPT_TEXT+="%F{cyan}"": "
    ZSH_THEME_GIT_PROMPT_TEXT+="%F{red}""$ZSH_THEME_GIT_BRANCH_NAME"
    ZSH_THEME_GIT_PROMPT_TEXT+="%F{cyan}"")"
  fi;
}

function makeprompt() {
  PS1=""
  PS1="$PS1""%F{yellow}["                    # yellow  [
  PS1="$PS1""%F{green}%n"                    # green   username
  PS1="$PS1""%F{reset_color}@"               # normal  @
  PS1="$PS1""%F{magenta}%M"                  # magenta hostname
  PS1="$PS1""%F{cyan} %~"                    # cyan    cwd
  PS1="$PS1""%F{yellow}]"                    # yellow  ]

  CONFIG_GIT_PROMPT
  PS1="$PS1""$ZSH_THEME_GIT_PROMPT_TEXT"

  THE_FULL_PATH_TO_DIRECTORY=$PWD            # Get the complete path
  THE_PATH_TO_DIRECTORY="${PWD/$HOME/~}"     # Replace "$HOME" with "~"
  THE_PATH_TO_DIRECTORY+="$ZSH_THEME_GIT_PROMPT_TEXT" # Add the git info
  THE_SIZE_OF_PATH=${#THE_PATH_TO_DIRECTORY} # Size of "THE_PATH_TO_DIRECTORY"

  # size = path + 26 + branch_name
  if [ $THE_SIZE_OF_PATH -gt 20 ]; then      # "-gt" = "greater than" = ">"
    PS1="$PS1"$'\n'
  else
    PS1="$PS1"" "
  fi;

  PS1="$PS1""%F{magenta}%% "                 # magenta %
  PS1="$PS1""%F{reset_color}"
}
