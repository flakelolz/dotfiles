alias ls="eza"
alias cat="bat"
alias vi="nvim"
# alias vim="NVIM_APPNAME=vim nvim"

set -gx EDITOR nvim

set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path "/home/$USER/.cargo/bin/"
#fish_add_path "/home/$USER/zig-0.14.0/"

# Automatically Attach to my tmux session when I open a terminal
# But only if I'm not using Hyprland and tmux isn't already open
if not set -q HYPRLAND_INSTANCE_SIGNATURE
    if not set -q TMUX
        tmux a
    end
end

starship init fish | source
zoxide init fish | source
