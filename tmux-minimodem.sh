!#/bin/bash
echo press Ctl+b and hit a arrow key to switch windows
echo
echo
echo Hit enter to continue
read justnothing
tmux new-session \; send-keys './minimodem.sh' C-m \; split-window -v \; send-keys './minimodem.sh' C-m
