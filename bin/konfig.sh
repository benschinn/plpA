#!/usr/bin/env sh

INITIAL_PANE=$(tmux run 'echo #{pane_id}')

tmux renamew "plpA"

tmux splitw -l 8 
tmux selectp -T "playground"
tmux send 'sml' Enter

tmux selectp -t $INITIAL_PANE
tmux selectp -T "pruefung"
tmux send 'cd pruefung' Enter

tmux splitw -h -l 100 

tmux selectp -t 1

tmux selectp -T "hausaufgaben"
