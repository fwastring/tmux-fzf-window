#!/usr/bin/env bash

# window="$(tmux list-window | cut -d '[' -f 1 | fzf --tmux --reverse --preview 'tmux list-windows -t {}')"
window="$(tmux list-window | cut -d '[' -f 1 | fzf --tmux --reverse)"
# echo "$window"
window_number="$(echo $window | cut -d ":" -f 1)"
# echo "$window_number"
tmux select-window -t "$window_number"
