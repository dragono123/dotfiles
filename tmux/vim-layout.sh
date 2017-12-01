#!/bin/sh 
tmux new-session -c ~/Documents/code \; \
  send-keys 'vim' C-m \; \
  split-window -h -p 15 \; \
  select-pane -t 0\;
