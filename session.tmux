# START:new
tmux new-session -s template-change-me -n editor -d
# END:new
# START:cd
# END:cd
#tmux send-keys -t template-change-me 'cd ~/devproject' C-m
# START:vim
tmux send-keys -t template-change-me 'nvm use  v12.15.0 ; n src/index.js' C-m
# END:vim
# START:hsplit
#tmux split-window -v -t template-change-me
#tmux selectp -t 2
## END:hsplit
## START:layout
#tmux select-layout -t template-change-me main-horizontal
# END:layout
# START:keystopane
#tmux send-keys -t template-change-me:1.2 'cd ~/devproject' C-m
# END:keystopane
# START:newwindow
tmux new-window -n console -t template-change-me
tmux send-keys -t template-change-me 'nvm use  v12.15.0 ; yarn start' C-m
#tmux send-keys -t template-change-me:2 'cd ~/devproject' C-m
# END:newwindow
# START:selectwindow
tmux select-window -t template-change-me:1
# END:selectwidow
tmux attach -t template-change-me
