cd ~
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
echo "source ~/.bash-git-prompt/gitprompt.sh\nGIT_PROMPT_ONLY_IN_REPO=1\nGIT_PROMPT_FETCH_REMOTE_STATUS=0" >> .bashrc
sudo pip install virtualenvwrapper
echo "export WORKON_HOME=$HOME/.virtualenvs\nsource /usr/local/bin/virtualenvwrapper.sh" >> .bashrc
echo "alias reload='source ~/.bashrc'" > .bash_aliases
sudo apt-get install tmux
echo "unbind C-b\nset -g prefix C-s\nset -g mode-mouse on\nset -g mouse-resize-pane on\nset -g mouse-select-pane on\nset -g mouse-select-window on\nbind-key - split-window -v -c '#{pane_current_path}'
\nbind-key / split-window -h -c '#{pane_current_path}'" > .tmux.conf
source ~/.bashrc
tmux
tmux source-file ~/.tmux.conf
