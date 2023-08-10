function fish_greeting
    # Greeting messages
    set powered_msgs \
        "candy!" \
        "rubber bands" \
        "a black hole" \
        "logic" \
        "electromagnetic cheese"
    
    # Randomly pick a message
    set chosen_msg (random)"%"(count $powered_msgs)
    set chosen_msg $powered_msgs[(math $chosen_msg"+1")]
    
    # Output it to the console
    printf (set_color F90)"Welcome! This terminal session is powered by %s\n" $chosen_msg
    echo (date +"%Y-%m-%d")
end

alias c=clear
alias nv=nvim
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
 
export PATH="/home/$USER/.config/composer/vendor/bin:$PATH"
export PATH="$PATH:/home/lukas/.local/bin"
export PATH="$HOME/.cargo/bin:$PATH"

if tmux ls >/dev/null 2>/dev/null; and test -z "$TMUX"
    tmux a
else if not tmux ls >/dev/null 2>/dev/null; and test -z "$TMUX";
    tmux
end


starship init fish | source
