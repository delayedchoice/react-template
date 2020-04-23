# START:new
tmux new-session -s tess -n editor -d
# END:new
# START:cd
# END:cd
#tmux send-keys -t tess 'cd ~/devproject' C-m
# START:vim
tmux send-keys -t tess 'nvm use  v12.15.0 ; n src/index.jsx' C-m
# END:vim
# START:hsplit
#tmux split-window -v -t tess
#tmux selectp -t 2
## END:hsplit
## START:layout
#tmux select-layout -t tess main-horizontal
# END:layout
# START:keystopane
#tmux send-keys -t tess:1.2 'cd ~/devproject' C-m
# END:keystopane
# START:newwindow
tmux new-window -n console -t tess
tmux send-keys -t tess 'nvm use  v12.15.0 ; yarn start' C-m
#tmux send-keys -t tess:2 'cd ~/devproject' C-m
# END:newwindow
# START:selectwindow
tmux select-window -t tess:1
# END:selectwidow
tmux attach -t tess
