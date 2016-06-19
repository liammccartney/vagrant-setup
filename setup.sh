cd ~
printf "export EDITOR=vim" >> .bashrc
git config --global user.name "Liam McCartney"
git config --global user.email liam.mccartney@gmail.com
git config --global core.editor "vim"
git config --global color.status auto
git config --global color.diff auto
git config --global color.status.untracked cyan
git config --global color.status.changed green
git config --global color.status.added yellow
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
printf "source ~/.bash-git-prompt/gitprompt.sh\nGIT_PROMPT_ONLY_IN_REPO=1\nGIT_PROMPT_FETCH_REMOTE_STATUS=0" >> .bashrc
sudo pip install virtualenvwrapper
printf "export WORKON_HOME=$HOME/.virtualenvs\nsource /usr/local/bin/virtualenvwrapper.sh" >> .bashrc
printf "alias reload='source ~/.bashrc'\nalias gs='git status'\nalias gd='git diff'" > .bash_aliases
sudo apt-get install tmux
printf "unbind C-b\nset -g prefix C-s\nset -g default-terminal 'screen-256color'\nset -g mode-mouse on\nset -g mouse-resize-pane on\nset -g mouse-select-pane on\nset -g mouse-select-window on\nbind-key - split-window -v -c '#{pane_current_path}'
\nbind-key / split-window -h -c '#{pane_current_path}'" > .tmux.conf
source ~/.bashrc
tmux
tmux source-file ~/.tmux.conf
