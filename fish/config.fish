if status is-interactive
    # Commands to run in interactive sessions can go here
end

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
alias pac='sudo pacman'

alias exo='cd ~/Code/laravel/exotime_v2' 
alias nv=nvim

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

set TERM xterm-256color

starship init fish | source
