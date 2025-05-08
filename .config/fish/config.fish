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

# Set FZF theme
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"

starship init fish | source
zoxide init fish | source
