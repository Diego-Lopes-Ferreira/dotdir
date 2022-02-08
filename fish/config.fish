if status is-interactive
    # Commands to run in interactive sessions can go here
    randomimage.out
    
    set __fish_git_prompt_show_informative_status
    set __fish_git_prompt_showcolorhints
    set __fish_git_prompt_showupstream "informative"
    set __fish_git_prompt_char_cleanstate ' 👍 '
    set __fish_git_prompt_char_conflictedstate ' ⚠️ '
    set __fish_git_prompt_char_dirtystate ' 💩 '
    set __fish_git_prompt_char_invalidstate ' 🤮 '
    set __fish_git_prompt_char_stagedstate ' 🚥 '
    set __fish_git_prompt_char_stashstate ' 📦 '
    set __fish_git_prompt_char_stateseparator ' | '
    set __fish_git_prompt_char_untrackedfiles ' 🔍 '
    set __fish_git_prompt_char_upstream_ahead ' ☝️ '
    set __fish_git_prompt_char_upstream_behind ' 👇 '
    set __fish_git_prompt_char_upstream_diverged ' 🚧 '
    set __fish_git_prompt_char_upstream_equal ' 💯 ' 

    set fish_greeting ""
    
    set fish_prompt_pwd_dir_length 0
end
