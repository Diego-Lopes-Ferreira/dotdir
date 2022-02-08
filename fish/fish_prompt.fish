# 
# Diego .bashrc

function fish_prompt --description 'Write out the prompt'
    # set -l = creates a new local variable

    set -l usr   (set_color green)   $USER
    set -l at    (set_color normal)  '@'
    set -l host  (set_color blue)    $hostname
    set -l uah   $usr $at $host

    set -l dir   (set_color yellow)  (prompt_pwd)
    set -l git   (set_color cyan)    (fish_git_prompt)
    set -l newl  "\n"
  # set -l arrow (set_color normal)  (set_color magenta) "🐠 " (set_color normal)
  # set -l arrow (set_color normal)  (set_color magenta) "💩 " (set_color normal)
    set -l arrow (set_color normal)  (set_color magenta) "λ "  (set_color normal)
  # set -l arrow (set_color normal)  (set_color magenta) "> "  (set_color normal)

    # If its ROOT user:
    if functions -q fish_is_root_user; and fish_is_root_user
        set arrow '#'
    end
    
    # dd@darch ~/path/to/directory (main) >
    # root@darch ~/path/to/directory (main) #
    echo -s $uah " " $dir $git $newline 
    echo -s $arrow
end

# CHEAT SHEET:

# COLORS
# (set_color normal)
# (set_color black)
# (set_color red)
# (set_color green)
# (set_color yellow)
# (set_color blue)
# (set_color magenta)
# (set_color cyan)
# (set_color white)
