# ~/.bashrc
# Diego's bashrc file

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIAS
if [[ -r ~/.dotdir/.aliasrc ]]; then
  . ~/.dotdir/.aliasrc
fi

# HISTORY
HISTFILE=~/.dotdir/bash/bashistory

# THEME
BASH_THEME="arch"
if [ -r ~/.dotdir/bash/themes/$BASH_THEME.bash-theme ]; then
  source ~/.dotdir/bash/themes/$BASH_THEME.bash-theme
else
  echo "Theme '$BASH_THEME' not found"
  echo "Using arch theme instead"
  source ~/.dotdir/bash/themes/arch.bash-theme
fi



# IDEAS:

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
