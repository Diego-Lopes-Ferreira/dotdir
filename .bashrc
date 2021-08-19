#
#  (                          
#  )\ )                       
# (()/(  (     (   (  (       
#  /(_)) )\   ))\  )\))(  (   
# (_))_ ((_) /((_)((_))\  )\  
# |   \ (_)(_))   (()(_)((_) 
# | |) || |/ -_) / _` |/ _ \ 
# |___/ |_|\___| \__, |\___/ 
#                 |___/       
#
#

PS1='\[\033]0;\w\007\]'   # set window title
PS1="$PS1"'\[\033[0m\]'                # Reset color
PS1="$PS1"'\[\033[32m\]\u'             # Green user<space>
PS1="$PS1"'\[\033[37m\]@'              # white "@"
PS1="$PS1"'\[\033[35m\]\h'             # Purple host<space>
PS1="$PS1"'\[\033[33m\] \W'            # Color: Yellow Current Working Directory
if test -z "$WINELOADERNOEXEC" # if it is not running in wine (no ideia what it is...)
then
  GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
  COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
  COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
  COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
  if test -f "$COMPLETION_PATH/git-prompt.sh"
  then
    . "$COMPLETION_PATH/git-completion.bash"
    . "$COMPLETION_PATH/git-prompt.sh"
    PS1="$PS1"'\[\033[36m\]'  # change color to cyan
    PS1="$PS1"'`__git_ps1`'   # bash function
  fi
fi
PS1="$PS1"'\[\033[0m\]'                # Reset color
PS1="$PS1"' $ '                        # prompt: always $

# SHORTCUTS
alias gs='git status'
alias solucaut='cd ~/Documents/solucaut'
alias docs='cd ~/Documents'
alias diego='~/Documents/bashscripts/diego.bash'
alias reload_bash='source ~/.bashrc'
alias ..='cd ..'
alias ....='cd ....'


# ANOTHER IDEAS:

# DATE AND TIME
# tue may 04 00:00:00
# PS1="$PS1"'\[\033[0m\]'              # Reset color
# PS1="$PS1"'\[\033[36m\]'             # Color: Cyan
# PS1="$PS1"'\d'                       # \d=Date
# PS1="$PS1"'\[\033[37m\]'             # Color: White
# PS1="$PS1"' \t'                      # \t=time

# DIRECTORY
# • ~/my/project
# PS1="$PS1"'\[\033[0m\]'             # Reset color
# PS1="$PS1"' • '                     # current working directory
# PS1="$PS1"'\[\033[33m\]'            # Color: Yellow
# PS1="$PS1"'\w '                     # current working directory
# PS1="$PS1"'\[\033[37m\] |'          # Add Vertical Separator

# IDK, COPIED FROM INTERNET...
# PS1="$PS1"'\[\033[40m\]'             # Bg: Black
# PS1="$PS1"'\[\033[35m\]'             # Color: purple
# PS1="$PS1"'$MSYSTEM '                # show MSYSTEM


# CHEAT SHEET:
# COMMANDS
# $MSYSTEM                             # show MSYSTEM
# \w                                   # current working directory (~/my/directory)
# \W                                   # current working directory (directory)
# \u                                   # user<space>
# \h                                   # host<space>
# \d                                   # Date (tue may 04)
# \t                                   # Time (00:00:00)
# •                                    # A dot in the center of the line...


# COLORS
# PS1="$PS1"'\[\033[30m\]'             # Color: Black
# PS1="$PS1"'\[\033[31m\]'             # Color: Red
# PS1="$PS1"'\[\033[32m\]'             # Color: Green
# PS1="$PS1"'\[\033[33m\]'             # Color: Yellow
# PS1="$PS1"'\[\033[34m\]'             # Color: Blue
# PS1="$PS1"'\[\033[35m\]'             # Color: Purple
# PS1="$PS1"'\[\033[36m\]'             # Color: Cyan
# PS1="$PS1"'\[\033[37m\]'             # Color: White

# BACKGROUNDS
# PS1="$PS1"'\[\033[40m\]'             # Bg: Black
# PS1="$PS1"'\[\033[41m\]'             # Bg: Red
# PS1="$PS1"'\[\033[42m\]'             # Bg: Green
# PS1="$PS1"'\[\033[43m\]'             # Bg: Yellow
# PS1="$PS1"'\[\033[44m\]'             # Bg: Blue
# PS1="$PS1"'\[\033[45m\]'             # Bg: Purple
# PS1="$PS1"'\[\033[46m\]'             # Bg: Cyan
# PS1="$PS1"'\[\033[47m\]'             # Bg: White
